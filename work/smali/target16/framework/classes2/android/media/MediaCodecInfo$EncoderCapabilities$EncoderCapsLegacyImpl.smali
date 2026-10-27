.class final Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"

# interfaces
.implements Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EncoderCapsLegacyImpl"
.end annotation


# static fields
.field private static final blacklist bitrates:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field private blacklist mBitControl:I

.field private blacklist mComplexityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultComplexity:Ljava/lang/Integer;

.field private blacklist mDefaultQuality:Ljava/lang/Integer;

.field private blacklist mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

.field private blacklist mQualityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQualityScale:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 4825
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "VBR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v4, "CBR"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v2}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v3, "CQ"

    invoke-direct {v1, v3, v2, v2}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v3, "CBR-FD"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist applyLevelLimits()V
    .registers 3

    .line 4877
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 4878
    const-string v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4879
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    .line 4880
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    goto :goto_4e

    .line 4881
    :cond_23
    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4882
    const-string v1, "audio/amr-wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4883
    const-string v1, "audio/g711-alaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4884
    const-string v1, "audio/g711-mlaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4885
    const-string v1, "audio/gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 4886
    :cond_4b
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    .line 4888
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static blacklist create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;
    .registers 4

    .line 4856
    new-instance v0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4857
    const-string v0, "EncoderCapabilities"

    const-string v1, "Legacy implementation is called while native flag is on."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4860
    :cond_12
    new-instance v0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;-><init>()V

    .line 4861
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)V

    .line 4862
    return-object v0
.end method

.method private blacklist init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;)V
    .registers 4

    .line 4867
    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    .line 4868
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    .line 4869
    invoke-static {p2, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p2

    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    .line 4870
    const/4 p2, 0x2

    iput p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    .line 4872
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->applyLevelLimits()V

    .line 4873
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 4874
    return-void
.end method

.method static synthetic blacklist lambda$create$0()Ljava/lang/Boolean;
    .registers 1

    .line 4856
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nativeCapabilites()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseBitrateMode(Ljava/lang/String;)I
    .registers 7

    .line 4833
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 4834
    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4835
    iget p0, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    return p0

    .line 4833
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4838
    :cond_17
    return v2
.end method

.method private blacklist parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 8

    .line 4896
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 4898
    const-string v1, "complexity-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4899
    nop

    .line 4900
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    invoke-static {v1, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    .line 4903
    :cond_19
    const-string v1, "quality-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4904
    nop

    .line 4905
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    invoke-static {v1, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    .line 4907
    :cond_2e
    const-string v1, "feature-bitrate-modes"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 4908
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    .line 4909
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_44
    if-ge v2, v1, :cond_57

    aget-object v3, p1, v2

    .line 4910
    iget v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    invoke-static {v3}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->parseBitrateMode(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    shl-int v3, v5, v3

    or-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    .line 4909
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 4915
    :cond_57
    :try_start_57
    const-string p1, "complexity-default"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mDefaultComplexity:Ljava/lang/Integer;
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_69} :catch_6a

    goto :goto_6b

    .line 4916
    :catch_6a
    move-exception p1

    :goto_6b
    nop

    .line 4919
    :try_start_6c
    const-string p1, "quality-default"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mDefaultQuality:Ljava/lang/Integer;
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_7e} :catch_7f

    goto :goto_80

    .line 4920
    :catch_7f
    move-exception p1

    :goto_80
    nop

    .line 4922
    const-string p1, "quality-scale"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityScale:Ljava/lang/String;

    .line 4923
    return-void
.end method

.method private blacklist supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 9

    .line 4927
    nop

    .line 4928
    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 4929
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    goto :goto_c

    .line 4931
    :cond_b
    move p1, v0

    :goto_c
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 4932
    iget-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    .line 4934
    :cond_16
    if-eqz p1, :cond_3a

    if-eqz p3, :cond_3a

    .line 4935
    iget-object p1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_23
    if-ge v2, p2, :cond_35

    aget-object v3, p1, v2

    .line 4936
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_32

    .line 4937
    nop

    .line 4938
    const/4 p3, 0x0

    goto :goto_35

    .line 4935
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 4941
    :cond_35
    :goto_35
    if-nez p3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    move p1, v0

    .line 4943
    :cond_3a
    return p1
.end method


# virtual methods
.method public blacklist getComplexityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4822
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 9

    .line 4949
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mDefaultQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    .line 4951
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mDefaultQuality:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "quality"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4953
    :cond_23
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mDefaultComplexity:Ljava/lang/Integer;

    if-eqz v0, :cond_46

    .line 4955
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mDefaultComplexity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "complexity"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4958
    :cond_46
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v1, :cond_63

    aget-object v3, v0, v2

    .line 4959
    iget v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    iget v5, v3, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    const/4 v6, 0x1

    shl-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_60

    .line 4960
    const-string v0, "bitrate-mode"

    iget v1, v3, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4961
    goto :goto_63

    .line 4958
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 4964
    :cond_63
    :goto_63
    return-void
.end method

.method public blacklist getQualityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4818
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mQualityRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist isBitrateModeSupported(I)Z
    .registers 7

    .line 4842
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 4843
    iget v4, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    if-ne p1, v4, :cond_17

    .line 4844
    iget v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mBitControl:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_16

    move v2, v1

    :cond_16
    return v2

    .line 4842
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4847
    :cond_1a
    return v2
.end method

.method public blacklist supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 6

    .line 4968
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 4969
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$CodecCapsLegacyImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 4971
    const-string v1, "bitrate-mode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4972
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->isBitrateModeSupported(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4973
    const/4 p1, 0x0

    return p1

    .line 4976
    :cond_20
    const-string v1, "complexity"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4977
    const-string v2, "audio/flac"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4978
    nop

    .line 4979
    const-string v2, "flac-compression-level"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4980
    if-nez v1, :cond_3d

    .line 4981
    move-object v1, v2

    goto :goto_4e

    .line 4982
    :cond_3d
    if-eqz v2, :cond_4e

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_4e

    .line 4983
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "conflicting values for complexity and flac-compression-level"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4990
    :cond_4e
    :goto_4e
    const-string v2, "profile"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4991
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 4992
    const-string v0, "aac-profile"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4993
    if-nez v2, :cond_6a

    .line 4994
    move-object v2, v0

    goto :goto_7b

    .line 4995
    :cond_6a
    if-eqz v0, :cond_7b

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_7b

    .line 4996
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "conflicting values for profile and aac-profile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5001
    :cond_7b
    :goto_7b
    const-string v0, "quality"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 5003
    invoke-direct {p0, v1, p1, v2}, Landroid/media/MediaCodecInfo$EncoderCapabilities$EncoderCapsLegacyImpl;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
