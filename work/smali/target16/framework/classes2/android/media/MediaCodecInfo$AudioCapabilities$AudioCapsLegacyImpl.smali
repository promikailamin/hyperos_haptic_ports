.class final Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"

# interfaces
.implements Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$AudioCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioCapsLegacyImpl"
.end annotation


# static fields
.field static final blacklist AUDIO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_INPUT_CHANNEL_COUNT:I = 0x1e


# instance fields
.field private blacklist mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputChannelRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

.field private blacklist mSampleRateRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSampleRates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2125
    const-string v0, "mime"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->AUDIO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist applyLevelLimits()V
    .registers 35

    .line 1846
    move-object/from16 v0, p0

    .line 1847
    nop

    .line 1848
    nop

    .line 1849
    iget-object v1, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v1

    .line 1850
    iget-object v2, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1852
    const-string v3, "audio/mpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v8, 0x7d00

    .line 1877
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1852
    const/16 v10, 0x3e80

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/16 v13, 0x1f40

    .line 1857
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1852
    const v15, 0xac44

    const/16 v16, 0x8

    const/4 v4, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x5622

    const/4 v5, 0x2

    const v19, 0xbb80

    const/16 v20, 0x0

    const/16 v21, 0x2ee0

    const/4 v6, 0x1

    .line 2035
    const/16 v22, 0x5dc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1852
    const/16 v23, 0x0

    if-eqz v3, :cond_6a

    .line 1853
    const/16 v1, 0x9

    new-array v1, v1, [I

    aput v13, v1, v20

    const/16 v2, 0x2b11

    aput v2, v1, v6

    aput v21, v1, v5

    aput v10, v1, v17

    aput v18, v1, v4

    aput v22, v1, v12

    aput v8, v1, v11

    const/4 v2, 0x7

    aput v15, v1, v2

    aput v19, v1, v16

    .line 1857
    const v2, 0x4e200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1858
    move v4, v5

    goto/16 :goto_4e8

    .line 1859
    :cond_6a
    const-string v3, "audio/3gpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1860
    new-array v1, v6, [I

    aput v13, v1, v20

    .line 1861
    const/16 v2, 0x128e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2fa8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1862
    move v4, v6

    goto/16 :goto_4e8

    .line 1863
    :cond_89
    const-string v3, "audio/amr-wb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1864
    new-array v1, v6, [I

    aput v10, v1, v20

    .line 1865
    const/16 v2, 0x19c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x5d2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1866
    move v4, v6

    goto/16 :goto_4e8

    .line 1867
    :cond_a8
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v24, 0xfa00

    const v25, 0x15888

    const v26, 0x17700

    if-eqz v3, :cond_f3

    .line 1868
    const/16 v1, 0xd

    new-array v1, v1, [I

    const/16 v2, 0x1cb6

    aput v2, v1, v20

    aput v13, v1, v6

    const/16 v2, 0x2b11

    aput v2, v1, v5

    aput v21, v1, v17

    aput v10, v1, v4

    aput v18, v1, v12

    aput v22, v1, v11

    const/4 v2, 0x7

    aput v8, v1, v2

    aput v15, v1, v16

    const/16 v2, 0x9

    aput v19, v1, v2

    const/16 v2, 0xa

    aput v24, v1, v2

    const/16 v2, 0xb

    aput v25, v1, v2

    const/16 v2, 0xc

    aput v26, v1, v2

    .line 1874
    const v2, 0x7c830

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1875
    const/16 v4, 0x30

    goto/16 :goto_4e8

    .line 1876
    :cond_f3
    const-string v3, "audio/vorbis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move/from16 v27, v8

    const/16 v8, 0xff

    const v28, 0x2ee00

    const/16 v29, 0x0

    if-eqz v3, :cond_11c

    .line 1877
    const v1, 0x7a120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1878
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v23

    .line 1879
    move v4, v8

    move-object/from16 v1, v29

    goto/16 :goto_4e8

    .line 1880
    :cond_11c
    const-string v3, "audio/opus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 1881
    const/16 v1, 0x1770

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7c830

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1882
    new-array v1, v12, [I

    aput v13, v1, v20

    aput v21, v1, v6

    aput v10, v1, v5

    aput v22, v1, v17

    aput v19, v1, v4

    .line 1883
    move v4, v8

    goto/16 :goto_4e8

    .line 1884
    :cond_144
    const-string v3, "audio/raw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 1885
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v23

    .line 1886
    const v1, 0x989680

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1887
    sget v4, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    move-object/from16 v1, v29

    goto/16 :goto_4e8

    .line 1888
    :cond_165
    const-string v3, "audio/flac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v14, 0x0

    if-eqz v3, :cond_17f

    .line 1889
    const v1, 0x9fff6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v23

    .line 1891
    move v4, v8

    move-object v2, v14

    move-object/from16 v1, v29

    goto/16 :goto_4e8

    .line 1892
    :cond_17f
    const-string v3, "audio/g711-alaw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v30, 0x1e

    if-nez v3, :cond_4d6

    .line 1893
    const-string v3, "audio/g711-mlaw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_193

    goto/16 :goto_4d6

    .line 1897
    :cond_193
    const-string v3, "audio/gsm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 1898
    new-array v1, v6, [I

    aput v13, v1, v20

    .line 1899
    const/16 v2, 0x32c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x32c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1900
    move v4, v6

    goto/16 :goto_4e8

    .line 1901
    :cond_1b2
    const-string v3, "audio/ac3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 1902
    move v4, v11

    move-object v2, v14

    move-object/from16 v1, v29

    goto/16 :goto_4e8

    .line 1903
    :cond_1c0
    const-string v3, "audio/eac3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 1904
    const/16 v4, 0x10

    move-object v2, v14

    move-object/from16 v1, v29

    goto/16 :goto_4e8

    .line 1905
    :cond_1cf
    const-string v3, "audio/eac3-joc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ea

    .line 1906
    new-array v1, v6, [I

    aput v19, v1, v20

    .line 1907
    const v2, 0x5dc000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1908
    const/16 v4, 0x10

    goto/16 :goto_4e8

    .line 1909
    :cond_1ea
    const-string v3, "audio/ac4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20f

    .line 1910
    new-array v1, v4, [I

    aput v15, v1, v20

    aput v19, v1, v6

    aput v26, v1, v5

    aput v28, v1, v17

    .line 1911
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x290400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1912
    const/16 v4, 0x18

    goto/16 :goto_4e8

    .line 1913
    :cond_20f
    const-string v3, "audio/vnd.dts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 1914
    new-array v1, v5, [I

    aput v15, v1, v20

    aput v19, v1, v6

    .line 1915
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x174120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1916
    move v4, v11

    goto/16 :goto_4e8

    .line 1917
    :cond_22f
    const-string v3, "audio/vnd.dts.hd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move/from16 v31, v5

    const-string v5, "AudioCapabilities"

    if-eqz v3, :cond_2db

    .line 1918
    array-length v3, v1

    move/from16 v8, v20

    :goto_23e
    if-ge v8, v3, :cond_2d4

    aget-object v10, v1, v8

    .line 1919
    iget v13, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v13, :pswitch_data_508

    .line 1931
    :pswitch_247
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrecognized profile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v10, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v10, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v13, v10, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    or-int/2addr v13, v6

    iput v13, v10, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    .line 1934
    new-array v10, v11, [I

    aput v15, v10, v20

    aput v19, v10, v6

    aput v25, v10, v31

    aput v26, v10, v17

    const v13, 0x2b110

    aput v13, v10, v4

    aput v28, v10, v12

    .line 1936
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x175d720

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v13

    move-object/from16 v29, v10

    move-object v14, v13

    goto :goto_2d0

    .line 1921
    :pswitch_294
    new-array v10, v4, [I

    aput v18, v10, v20

    aput v22, v10, v6

    aput v15, v10, v31

    aput v19, v10, v17

    .line 1922
    const v13, 0xbb800

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v13

    .line 1923
    move-object/from16 v29, v10

    move-object v14, v13

    goto :goto_2d0

    .line 1926
    :pswitch_2ad
    new-array v10, v11, [I

    aput v15, v10, v20

    aput v19, v10, v6

    aput v25, v10, v31

    aput v26, v10, v17

    const v13, 0x2b110

    aput v13, v10, v4

    aput v28, v10, v12

    .line 1928
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x175d720

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v13

    .line 1929
    move-object/from16 v29, v10

    move-object v14, v13

    .line 1918
    :goto_2d0
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_23e

    .line 1939
    :cond_2d4
    move-object v2, v14

    move/from16 v4, v16

    move-object/from16 v1, v29

    goto/16 :goto_4e8

    .line 1940
    :cond_2db
    const-string v3, "audio/vnd.dts.uhd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38f

    .line 1941
    array-length v3, v1

    move/from16 v8, v20

    :goto_2e6
    if-ge v8, v3, :cond_388

    aget-object v9, v1, v8

    .line 1942
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v10, :pswitch_data_514

    .line 1955
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unrecognized profile "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v9, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v10, v9, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    or-int/2addr v10, v6

    iput v10, v9, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    .line 1958
    new-array v9, v11, [I

    aput v15, v9, v20

    aput v19, v9, v6

    aput v25, v9, v31

    aput v26, v9, v17

    const v10, 0x2b110

    aput v10, v9, v4

    aput v28, v9, v12

    .line 1960
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v13, 0x175d720

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v10

    .line 1961
    const/16 v13, 0x20

    move-object/from16 v29, v9

    move-object v14, v10

    move/from16 v30, v13

    goto :goto_384

    .line 1944
    :pswitch_340
    new-array v9, v6, [I

    aput v19, v9, v20

    .line 1945
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v13, 0xbb800

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v10

    .line 1946
    nop

    .line 1947
    const/16 v13, 0xa

    move-object/from16 v29, v9

    move-object v14, v10

    move/from16 v30, v13

    goto :goto_384

    .line 1949
    :pswitch_35c
    new-array v9, v11, [I

    aput v15, v9, v20

    aput v19, v9, v6

    aput v25, v9, v31

    aput v26, v9, v17

    const v10, 0x2b110

    aput v10, v9, v4

    aput v28, v9, v12

    .line 1951
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v13, 0x175d720

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v10

    .line 1952
    nop

    .line 1953
    const/16 v13, 0x20

    move-object/from16 v29, v9

    move-object v14, v10

    move/from16 v30, v13

    .line 1941
    :goto_384
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2e6

    :cond_388
    move-object v2, v14

    move-object/from16 v1, v29

    move/from16 v4, v30

    goto/16 :goto_4e8

    .line 1964
    :cond_38f
    new-instance v3, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v3

    if-eqz v3, :cond_4b2

    .line 1965
    const-string v3, "audio/iamf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b2

    .line 1966
    array-length v3, v1

    move/from16 v9, v20

    :goto_3a5
    if-ge v9, v3, :cond_4ac

    move/from16 v28, v4

    aget-object v4, v1, v9

    .line 1967
    move/from16 v32, v10

    iget v10, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    and-int/2addr v10, v8

    .line 1968
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/high16 v30, 0xff0000

    and-int v4, v4, v30

    .line 1969
    sparse-switch v4, :sswitch_data_51c

    .line 1986
    nop

    .line 1987
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v11

    const-string v11, "Unrecognized IAMF profile "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object v4, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v8, v4, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    or-int/2addr v8, v6

    iput v8, v4, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    const/16 v4, 0x1c

    move/from16 v30, v4

    goto :goto_3ff

    .line 1982
    :sswitch_3e8
    nop

    .line 1983
    const/16 v4, 0x1c

    move/from16 v30, v4

    move/from16 v33, v11

    goto :goto_3ff

    .line 1978
    :sswitch_3f0
    nop

    .line 1979
    const/16 v4, 0x12

    move/from16 v30, v4

    move/from16 v33, v11

    goto :goto_3ff

    .line 1974
    :sswitch_3f8
    nop

    .line 1975
    const/16 v4, 0x10

    move/from16 v30, v4

    move/from16 v33, v11

    .line 1994
    :goto_3ff
    sparse-switch v10, :sswitch_data_52a

    .line 2018
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized encoding "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v4, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v8, v4, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    or-int/2addr v8, v6

    iput v8, v4, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    goto/16 :goto_4a0

    .line 2014
    :sswitch_42b
    new-array v4, v12, [I

    aput v32, v4, v20

    aput v27, v4, v6

    aput v15, v4, v31

    aput v19, v4, v17

    aput v26, v4, v28

    .line 2016
    move-object/from16 v29, v4

    goto :goto_4a0

    .line 2008
    :sswitch_43a
    const v4, 0x9fff6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v23

    .line 2011
    goto :goto_4a0

    .line 2000
    :sswitch_446
    const/16 v4, 0xd

    new-array v4, v4, [I

    const/16 v8, 0x1cb6

    aput v8, v4, v20

    aput v13, v4, v6

    const/16 v8, 0x2b11

    aput v8, v4, v31

    aput v21, v4, v17

    aput v32, v4, v28

    aput v18, v4, v12

    aput v22, v4, v33

    const/4 v8, 0x7

    aput v27, v4, v8

    aput v15, v4, v16

    const/16 v8, 0x9

    aput v19, v4, v8

    const/16 v8, 0xa

    aput v24, v4, v8

    const/16 v8, 0xb

    aput v25, v4, v8

    const/16 v8, 0xc

    aput v26, v4, v8

    .line 2005
    const/16 v8, 0x1770

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v10, 0x1f400

    mul-int v10, v10, v30

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v14

    .line 2006
    move-object/from16 v29, v4

    goto :goto_4a0

    .line 1996
    :sswitch_487
    new-array v4, v6, [I

    aput v19, v4, v20

    .line 1997
    const/16 v8, 0x1770

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v10, 0x1f400

    mul-int v10, v10, v30

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v14

    .line 1998
    move-object/from16 v29, v4

    .line 1966
    :goto_4a0
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v28

    move/from16 v10, v32

    move/from16 v11, v33

    const/16 v8, 0xff

    goto/16 :goto_3a5

    :cond_4ac
    move-object v2, v14

    move-object/from16 v1, v29

    move/from16 v4, v30

    goto :goto_4e8

    .line 2024
    :cond_4b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported mime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v1, v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v2, v1, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    move-object v2, v14

    move-object/from16 v1, v29

    move/from16 v4, v30

    goto :goto_4e8

    .line 1894
    :cond_4d6
    :goto_4d6
    new-array v1, v6, [I

    aput v13, v1, v20

    .line 1895
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move/from16 v4, v30

    .line 2029
    :goto_4e8
    if-eqz v1, :cond_4ee

    .line 2030
    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->limitSampleRates([I)V

    goto :goto_4f7

    .line 2031
    :cond_4ee
    if-eqz v23, :cond_4f7

    .line 2032
    new-array v1, v6, [Landroid/util/Range;

    aput-object v23, v1, v20

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->limitSampleRates([Landroid/util/Range;)V

    .line 2035
    :cond_4f7
    :goto_4f7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 2037
    new-array v3, v6, [Landroid/util/Range;

    aput-object v1, v3, v20

    invoke-direct {v0, v3, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->applyLimits([Landroid/util/Range;Landroid/util/Range;)V

    .line 2038
    return-void

    nop

    :pswitch_data_508
    .packed-switch 0x1
        :pswitch_2ad
        :pswitch_294
        :pswitch_247
        :pswitch_2ad
    .end packed-switch

    :pswitch_data_514
    .packed-switch 0x1
        :pswitch_35c
        :pswitch_340
    .end packed-switch

    :sswitch_data_51c
    .sparse-switch
        0x10000 -> :sswitch_3f8
        0x20000 -> :sswitch_3f0
        0x40000 -> :sswitch_3e8
    .end sparse-switch

    :sswitch_data_52a
    .sparse-switch
        0x1 -> :sswitch_487
        0x2 -> :sswitch_446
        0x4 -> :sswitch_43a
        0x8 -> :sswitch_42b
    .end sparse-switch
.end method

.method private blacklist applyLimits([Landroid/util/Range;Landroid/util/Range;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2043
    array-length v0, p1

    new-array v0, v0, [Landroid/util/Range;

    .line 2044
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_3b

    .line 2045
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2046
    aget-object v3, p1, v1

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2047
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2044
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2051
    :cond_3b
    invoke-static {v0}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 2052
    iget-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    .line 2053
    invoke-static {v0, p1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object p1

    .line 2054
    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    .line 2056
    if-eqz p2, :cond_50

    .line 2057
    iget-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {p1, p2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    .line 2059
    :cond_50
    return-void
.end method

.method public static blacklist create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;
    .registers 4

    .line 1759
    new-instance v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1760
    const-string v0, "AudioCapabilities"

    const-string v1, "Legacy implementation is called while native flag is on."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_12
    new-instance v0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;-><init>()V

    .line 1764
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)V

    .line 1765
    return-object v0
.end method

.method private blacklist createDiscreteSampleRates()V
    .registers 4

    .line 1824
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    .line 1825
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 1826
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 1825
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1828
    :cond_22
    return-void
.end method

.method private blacklist init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)V
    .registers 3

    .line 1769
    iput-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    .line 1770
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->initWithPlatformLimits()V

    .line 1771
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->applyLevelLimits()V

    .line 1772
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1773
    return-void
.end method

.method private blacklist initWithPlatformLimits()V
    .registers 6

    .line 1776
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    .line 1777
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    .line 1779
    nop

    .line 1780
    const-string v2, "ro.mediacodec.min_sample_rate"

    const/16 v3, 0x1cb6

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1781
    nop

    .line 1782
    const-string v3, "ro.mediacodec.max_sample_rate"

    const v4, 0x2ee00

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1783
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    .line 1784
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    .line 1785
    return-void
.end method

.method static synthetic blacklist lambda$applyLevelLimits$1()Ljava/lang/Boolean;
    .registers 1

    .line 1964
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->iamfDefinitionsApi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$create$0()Ljava/lang/Boolean;
    .registers 1

    .line 1759
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nativeCapabilites()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private blacklist limitSampleRates([I)V
    .registers 8

    .line 1812
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1814
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    aget v3, p1, v2

    .line 1815
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1816
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1819
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/util/Range;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;

    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    .line 1820
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->createDiscreteSampleRates()V

    .line 1821
    return-void
.end method

.method private blacklist limitSampleRates([Landroid/util/Range;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1832
    invoke-static {p1}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 1833
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {v0, p1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    .line 1836
    iget-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2a

    aget-object v2, p1, v1

    .line 1837
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1838
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    .line 1839
    return-void

    .line 1836
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1842
    :cond_2a
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->createDiscreteSampleRates()V

    .line 1843
    return-void
.end method

.method private blacklist parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 15

    .line 2062
    nop

    .line 2063
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Landroid/util/Range;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    const/4 v5, 0x0

    .line 2097
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2063
    aput-object v4, v2, v5

    .line 2064
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v4

    .line 2066
    const-string v7, "sample-rate-ranges"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ","

    const/4 v10, 0x0

    if-eqz v8, :cond_45

    .line 2067
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2068
    array-length v8, v7

    new-array v8, v8, [Landroid/util/Range;

    .line 2069
    move v11, v5

    :goto_34
    array-length v12, v7

    if-ge v11, v12, :cond_42

    .line 2070
    aget-object v12, v7, v11

    invoke-static {v12, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v12

    aput-object v12, v8, v11

    .line 2069
    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    .line 2072
    :cond_42
    invoke-direct {p0, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->limitSampleRates([Landroid/util/Range;)V

    .line 2076
    :cond_45
    const-string v7, "channel-ranges"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 2077
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2078
    array-length v1, v0

    new-array v2, v1, [Landroid/util/Range;

    .line 2079
    nop

    :goto_59
    array-length v1, v0

    if-ge v5, v1, :cond_67

    .line 2080
    aget-object v1, v0, v5

    invoke-static {v1, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    aput-object v1, v2, v5

    .line 2079
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 2082
    :cond_67
    nop

    .line 2083
    goto :goto_b9

    :cond_69
    const-string v7, "channel-range"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 2084
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 2086
    new-array v2, v0, [Landroid/util/Range;

    aput-object v1, v2, v5

    .line 2087
    goto :goto_b9

    :cond_7e
    const-string v7, "max-channel-count"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 2088
    nop

    .line 2089
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2088
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v2

    .line 2090
    if-nez v2, :cond_9a

    .line 2091
    new-array v2, v0, [Landroid/util/Range;

    invoke-static {v6, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_b9

    .line 2093
    :cond_9a
    new-array v0, v0, [Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v2, v0

    goto :goto_b9

    .line 2095
    :cond_a8
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->mError:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b9

    .line 2096
    nop

    .line 2097
    new-array v2, v0, [Landroid/util/Range;

    invoke-static {v6, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    aput-object v0, v2, v5

    .line 2100
    :cond_b9
    :goto_b9
    const-string v0, "bitrate-range"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 2101
    nop

    .line 2102
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    .line 2101
    invoke-virtual {v4, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 2105
    :cond_ce
    invoke-direct {p0, v2, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->applyLimits([Landroid/util/Range;Landroid/util/Range;)V

    .line 2106
    return-void
.end method

.method private blacklist supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 5

    .line 1789
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 1790
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    invoke-static {v1, p2}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result p2

    .line 1792
    if-gez p2, :cond_c

    .line 1793
    return v0

    .line 1796
    :cond_c
    if-eqz p1, :cond_17

    .line 1797
    iget-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {p2, p1}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result p1

    .line 1799
    if-gez p1, :cond_17

    .line 1800
    return v0

    .line 1803
    :cond_17
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public blacklist getBitrateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1716
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 4

    .line 2111
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2112
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2114
    :cond_25
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->getMaxInputChannelCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 2116
    const-string v0, "channel-count"

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2118
    :cond_31
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    array-length v0, v0

    if-ne v0, v1, :cond_44

    .line 2119
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "sample-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2121
    :cond_44
    return-void
.end method

.method public blacklist getInputChannelCountRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1751
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getMaxInputChannelCount()I
    .registers 4

    .line 1729
    nop

    .line 1730
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-ltz v0, :cond_1d

    .line 1731
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1732
    if-le v2, v1, :cond_1a

    .line 1733
    move v1, v2

    .line 1730
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1736
    :cond_1d
    return v1
.end method

.method public blacklist getMinInputChannelCount()I
    .registers 4

    .line 1740
    nop

    .line 1741
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x1e

    :goto_8
    if-ltz v0, :cond_1e

    .line 1742
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mInputChannelRanges:[Landroid/util/Range;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1743
    if-ge v2, v1, :cond_1b

    .line 1744
    move v1, v2

    .line 1741
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1747
    :cond_1e
    return v1
.end method

.method public blacklist getSupportedSampleRateRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1725
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getSupportedSampleRates()[I
    .registers 3

    .line 1720
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mSampleRates:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_f

    .line 1721
    :cond_e
    const/4 v0, 0x0

    .line 1720
    :goto_f
    return-object v0
.end method

.method public blacklist isSampleRateSupported(I)Z
    .registers 3

    .line 1807
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public blacklist supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 5

    .line 2135
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2136
    const-string v1, "sample-rate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2137
    const-string v2, "channel-count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2139
    invoke-direct {p0, v1, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 2140
    return v1

    .line 2143
    :cond_1c
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities$AudioCapsLegacyImpl;->mBitrateRange:Landroid/util/Range;

    invoke-static {v0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 2144
    return v1

    .line 2150
    :cond_25
    const/4 p1, 0x1

    return p1
.end method
