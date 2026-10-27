.class public final Landroid/media/audiopolicy/AudioProductStrategy;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;,
        Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_FLAGS_AFFECT_STRATEGY_SELECTION:I = 0xd

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final blacklist DEFAULT_GROUP:I = -0x1

.field public static final blacklist DEFAULT_ZONE_ID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist INDENT:Ljava/lang/String; = "  "

.field private static final blacklist INTERNAL_TAG:Ljava/lang/String; = "reserved_internal_strategy"

.field public static final blacklist INVALID_ZONE_ID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist MATCH_ATTRIBUTES_EQUALS:I = 0xf

.field private static final blacklist MATCH_EQUALS:I = 0x1f

.field private static final blacklist MATCH_ON_CONTENT_TYPE_SCORE:I = 0x1

.field private static final blacklist MATCH_ON_DEFAULT_SCORE:I = 0x0

.field private static final blacklist MATCH_ON_FLAGS_SCORE:I = 0x4

.field private static final blacklist MATCH_ON_TAGS_SCORE:I = 0x8

.field private static final blacklist MATCH_ON_USAGE_SCORE:I = 0x2

.field private static final blacklist MATCH_ON_ZONE_ID_SCORE:I = 0x10

.field private static final blacklist NO_MATCH:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AudioProductStrategy"

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

.field private final blacklist mId:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mZoneId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$hTUMupWCqugYBj1hVMoczwbvNk8(Landroid/media/audiopolicy/AudioProductStrategy;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->isInternalStrategy()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_ATTRIBUTES()Landroid/media/AudioAttributes;
    .registers 1

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smattributesAndZonesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;II)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioProductStrategy;->attributesAndZonesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smattributesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->attributesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisMatchScoreEquals(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->isMatchScoreEquals(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 796
    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioProductStrategy$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 842
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 843
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 842
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V
    .registers 7

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    .line 503
    const-string v1, "name must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    const-string v1, "AudioAttributesGroups must not be null"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 505
    iput-object p1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    .line 506
    iput p2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    .line 507
    iput p3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    .line 508
    iput-object p4, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 509
    iget-object p1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length p2, p1

    :goto_1b
    if-ge v0, p2, :cond_53

    aget-object p3, p1, v0

    .line 510
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getStrategyId()I

    move-result p4

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    if-ne p4, v1, :cond_2a

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 511
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AudioAttributesGroup strategy id: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 512
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getStrategyId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not match AudioProductStrategy id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :cond_53
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;II[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;Landroid/media/audiopolicy/AudioProductStrategy-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;II[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-void
.end method

.method private static blacklist attributesAndZonesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;II)I
    .registers 5

    .line 870
    const/4 v0, -0x1

    if-eq p3, p2, :cond_6

    if-eqz p2, :cond_6

    .line 872
    return v0

    .line 874
    :cond_6
    nop

    .line 875
    if-ne p2, p3, :cond_c

    .line 876
    const/16 p2, 0x10

    goto :goto_d

    .line 875
    :cond_c
    const/4 p2, 0x0

    .line 878
    :goto_d
    invoke-static {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->attributesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)I

    move-result p0

    .line 879
    if-ne p0, v0, :cond_14

    .line 880
    return v0

    .line 882
    :cond_14
    or-int/2addr p0, p2

    return p0
.end method

.method private static blacklist attributesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)I
    .registers 8

    .line 896
    const-string v0, "Reference audio attributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 897
    const-string v0, "Audio attributes to check must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 898
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 899
    const/16 p0, 0xf

    return p0

    .line 901
    :cond_13
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 902
    return v1

    .line 904
    :cond_1d
    nop

    .line 905
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_27

    .line 906
    move v0, v1

    goto :goto_32

    .line 907
    :cond_27
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v3

    if-ne v0, v3, :cond_90

    .line 908
    const/4 v0, 0x2

    .line 912
    :goto_32
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-nez v3, :cond_3a

    .line 913
    or-int/2addr v0, v1

    goto :goto_46

    .line 914
    :cond_3a
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    if-ne v3, v4, :cond_8f

    .line 915
    or-int/lit8 v0, v0, 0x1

    .line 919
    :goto_46
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v3

    const-string v4, ";"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 920
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_60

    .line 922
    or-int/2addr v0, v1

    goto :goto_68

    .line 923
    :cond_60
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 924
    or-int/lit8 v0, v0, 0x8

    .line 928
    :goto_68
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0xd

    if-nez v3, :cond_73

    .line 929
    or-int/lit8 p0, v0, 0x0

    goto :goto_8c

    .line 930
    :cond_73
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0xd

    if-eqz v1, :cond_8d

    .line 931
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    and-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result p0

    if-ne p1, p0, :cond_8d

    .line 932
    or-int/lit8 p0, v0, 0x4

    .line 936
    :goto_8c
    return p0

    .line 934
    :cond_8d
    return v2

    .line 926
    :cond_8e
    return v2

    .line 917
    :cond_8f
    return v2

    .line 910
    :cond_90
    return v2
.end method

.method public static whitelist createInvalidAudioProductStrategy(I)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 239
    nop

    .line 240
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategiesFromService(Z)Ljava/util/List;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, p0, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    const-string v3, "invalid strategy"

    invoke-direct {v1, v3, v0, p0, v2}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;II[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object v1
.end method

.method public static blacklist dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1158
    const-string v0, "- AUDIO PRODUCT STRATEGIES:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategiesFromService(Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/media/audiopolicy/AudioProductStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1162
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1163
    const-string v0, "- AUDIO VOLUME GROUPS:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/media/audiopolicy/AudioProductStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1167
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1168
    return-void
.end method

.method public static blacklist filterNonInternalStrategies(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    new-instance p0, Landroid/media/audiopolicy/AudioProductStrategy$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioProductStrategy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 361
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getAudioAttributeGroupForLegacyStreamType(I)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .registers 7

    .line 941
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 942
    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsStreamType(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 943
    return-object v3

    .line 941
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 946
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public static blacklist getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 2

    .line 255
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 256
    invoke-static {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->native_get_audio_attributes_for_legacy_stream(ILandroid/media/AudioAttributes$Builder;)I

    .line 257
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAudioAttributesForStrategyWithLegacyStreamType(Ljava/util/List;I)Landroid/media/AudioAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;I)",
            "Landroid/media/AudioAttributes;"
        }
    .end annotation

    .line 273
    const-string v0, "Product strategies must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 275
    invoke-direct {v0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributeGroupForLegacyStreamType(I)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_20

    .line 277
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    .line 279
    :cond_20
    goto :goto_9

    .line 280
    :cond_21
    sget-object p0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method private static blacklist getAudioAttributesGroupForAttributes(Landroid/media/AudioAttributes;IZ)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .registers 10

    .line 381
    const-string v0, "attributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategiesFromService(Z)Ljava/util/List;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 387
    nop

    .line 388
    invoke-direct {v4, p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object v4

    .line 389
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result v5

    .line 390
    invoke-static {v5}, Landroid/media/audiopolicy/AudioProductStrategy;->isMatchScoreEquals(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 391
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p0

    return-object p0

    .line 393
    :cond_34
    if-le v5, v1, :cond_3c

    .line 394
    nop

    .line 395
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object v3

    move v1, v5

    .line 397
    :cond_3c
    goto :goto_14

    .line 398
    :cond_3d
    invoke-static {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->isDefaultMatchScore(I)Z

    move-result p0

    if-eqz p0, :cond_47

    if-eqz p2, :cond_46

    goto :goto_47

    .line 399
    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    move-object v2, v3

    .line 398
    :goto_48
    return-object v2
.end method

.method private static blacklist getAudioAttributesGroupForAttributes(Landroid/media/AudioAttributes;Z)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .registers 9

    .line 405
    const-string v0, "attributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    nop

    .line 407
    nop

    .line 408
    nop

    .line 409
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategiesFromService(Z)Ljava/util/List;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 411
    nop

    .line 412
    invoke-direct {v4, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object v4

    .line 413
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result v5

    .line 414
    invoke-static {v5}, Landroid/media/audiopolicy/AudioProductStrategy;->isMatchScoreEquals(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 415
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p0

    return-object p0

    .line 417
    :cond_34
    if-le v5, v1, :cond_3c

    .line 418
    nop

    .line 419
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object v3

    move v1, v5

    .line 421
    :cond_3c
    goto :goto_14

    .line 423
    :cond_3d
    invoke-static {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->isDefaultMatchScore(I)Z

    move-result p0

    if-eqz p0, :cond_47

    if-eqz p1, :cond_46

    goto :goto_47

    .line 424
    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    move-object v2, v3

    .line 423
    :goto_48
    return-object v2
.end method

.method private blacklist getAudioAttributesSupportScore(Landroid/media/AudioAttributes;I)I
    .registers 3

    .line 673
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result p1

    return p1
.end method

.method private static blacklist getAudioProductStrategiesFromService(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 429
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 431
    :try_start_4
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->getAudioProductStrategies(Z)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    .line 432
    :catch_9
    move-exception p0

    .line 433
    const-string v0, "AudioProductStrategy"

    const-string v1, "Error getting audio product strategies"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAudioProductStrategyForAudioAttributes(Landroid/media/AudioAttributes;IZ)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 199
    nop

    .line 200
    invoke-static {p0, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesGroupForAttributes(Landroid/media/AudioAttributes;IZ)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p0

    .line 201
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getStrategyId()I

    move-result p0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static blacklist getAudioProductStrategyForAudioAttributes(Landroid/media/AudioAttributes;Z)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 3

    .line 143
    nop

    .line 144
    invoke-static {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesGroupForAttributes(Landroid/media/AudioAttributes;Z)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyForAudioAttributes(Landroid/media/AudioAttributes;IZ)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 4

    .line 212
    nop

    .line 213
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategiesFromService(Z)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 215
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v2

    if-ne v2, p0, :cond_1d

    .line 216
    return-object v1

    .line 218
    :cond_1d
    goto :goto_a

    .line 219
    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getDefaultAttributes()Landroid/media/AudioAttributes;
    .registers 1

    .line 850
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public static blacklist getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 2

    .line 293
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->native_get_legacy_stream_for_audio_attributes(Landroid/media/AudioAttributes;)I

    move-result p0

    .line 295
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge p0, v0, :cond_10

    .line 296
    return p0

    .line 298
    :cond_10
    const/4 p0, 0x3

    return p0
.end method

.method private blacklist getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;
    .registers 10

    .line 704
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 705
    nop

    .line 706
    nop

    .line 707
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_2b

    aget-object v5, v0, v4

    .line 708
    invoke-virtual {v5, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAttributesMatchingScore(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 709
    invoke-static {v6}, Landroid/media/audiopolicy/AudioProductStrategy;->isMatchScoreEquals(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 710
    new-instance p1, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    const/16 v0, 0x1f

    invoke-direct {p1, v0, v5}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;-><init>(ILandroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object p1

    .line 712
    :cond_23
    if-le v6, v2, :cond_28

    .line 713
    nop

    .line 714
    move-object v3, v5

    move v2, v6

    .line 707
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 717
    :cond_2b
    new-instance p1, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    invoke-direct {p1, v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;-><init>(ILandroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object p1
.end method

.method private blacklist getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;
    .registers 11

    .line 678
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 679
    nop

    .line 680
    nop

    .line 681
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_2d

    aget-object v5, v0, v4

    .line 682
    iget v6, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    invoke-virtual {v5, p1, v6, p2}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAttributesMatchingScore(Landroid/media/AudioAttributes;II)I

    move-result v6

    .line 683
    invoke-static {v6}, Landroid/media/audiopolicy/AudioProductStrategy;->isMatchScoreEquals(I)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 684
    new-instance p1, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    const/16 p2, 0x1f

    invoke-direct {p1, p2, v5}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;-><init>(ILandroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object p1

    .line 686
    :cond_25
    if-le v6, v2, :cond_2a

    .line 687
    nop

    .line 688
    move-object v3, v5

    move v2, v6

    .line 681
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 691
    :cond_2d
    new-instance p1, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    invoke-direct {p1, v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;-><init>(ILandroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object p1
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .registers 1

    .line 122
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 123
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 125
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sService:Landroid/media/IAudioService;

    .line 127
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sService:Landroid/media/IAudioService;

    return-object v0
.end method

.method public static blacklist getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;IZ)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 345
    invoke-static {p0, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesGroupForAttributes(Landroid/media/AudioAttributes;IZ)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p0

    .line 347
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public static blacklist getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;Z)I
    .registers 3

    .line 318
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;IZ)I

    move-result p0

    return p0
.end method

.method public static blacklist getVolumeGroupIdForStreamType(Ljava/util/List;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;I)I"
        }
    .end annotation

    .line 468
    const-string v0, "Product strategies must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 469
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 470
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result v0

    .line 471
    if-eq v0, v1, :cond_1d

    .line 472
    return v0

    .line 474
    :cond_1d
    goto :goto_9

    .line 475
    :cond_1e
    return v1
.end method

.method public static blacklist getZoneIdForAudioVolumeGroupId(I)I
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 165
    nop

    .line 166
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategiesFromService(Z)Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 168
    iget-object v2, v1, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    .line 169
    invoke-static {v5}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->-$$Nest$fgetmVolumeGroupId(Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)I

    move-result v5

    if-ne v5, p0, :cond_29

    .line 170
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getZoneId()I

    move-result p0

    return p0

    .line 168
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 173
    :cond_2c
    goto :goto_a

    .line 174
    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist isDefaultMatchScore(I)Z
    .registers 4

    .line 365
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->multiZoneAudio()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 366
    if-eqz p0, :cond_10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :cond_10
    :goto_10
    return v1

    .line 368
    :cond_11
    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method static blacklist isInternalAttributesForStrategy(Landroid/media/AudioAttributes;)Z
    .registers 2

    .line 966
    const-string v0, ";"

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 967
    const-string v0, "reserved_internal_strategy"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isInternalStrategy()Z
    .registers 6

    .line 950
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 951
    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->-$$Nest$misInternalStrategy(Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 952
    const/4 v0, 0x1

    return v0

    .line 950
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 955
    :cond_14
    return v2
.end method

.method private static blacklist isMatchScoreEquals(I)Z
    .registers 4

    .line 372
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->multiZoneAudio()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 373
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 375
    :cond_f
    const/16 v0, 0xf

    if-ne p0, v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method static synthetic blacklist lambda$dump$0(Ljava/io/PrintWriter;Landroid/media/audiopolicy/AudioProductStrategy;)V
    .registers 3

    .line 1160
    const-string v0, "    "

    invoke-virtual {p1, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%s\n"

    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1161
    return-void
.end method

.method static synthetic blacklist lambda$dump$1(Ljava/io/PrintWriter;Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .registers 3

    .line 1165
    const-string v0, "    "

    invoke-virtual {p1, v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%s\n"

    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1166
    return-void
.end method

.method private static native blacklist native_get_audio_attributes_for_legacy_stream(ILandroid/media/AudioAttributes$Builder;)I
.end method

.method private static native blacklist native_get_legacy_stream_for_audio_attributes(Landroid/media/AudioAttributes;)I
.end method

.method public static native blacklist native_list_audio_product_strategies(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 480
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 481
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 483
    :cond_12
    check-cast p1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 485
    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    iget v3, p1, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    .line 486
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    iget-object p1, p1, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 487
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 485
    :goto_30
    return v0

    .line 481
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 579
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v0, v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    goto :goto_11

    .line 580
    :cond_8
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 579
    :goto_11
    return-object v0
.end method

.method public blacklist getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 2

    .line 592
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributeGroupForLegacyStreamType(I)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p1

    .line 593
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public whitelist getId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 531
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    return v0
.end method

.method public blacklist getLegacyStreamTypeForAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 3

    .line 608
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->multiZoneAudio()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 609
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object p1

    goto :goto_11

    .line 611
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object p1

    .line 613
    :goto_11
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object v0

    .line 614
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result p1

    .line 615
    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->isDefaultMatchScore(I)Z

    move-result p1

    if-nez p1, :cond_26

    .line 616
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getStreamType()I

    move-result p1

    goto :goto_27

    :cond_26
    const/4 p1, -0x1

    .line 615
    :goto_27
    return p1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 3

    .line 744
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->multiZoneAudio()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 745
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    invoke-virtual {p0, p1, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;I)I

    move-result p1

    return p1

    .line 747
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object p1

    .line 748
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object v0

    .line 749
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result p1

    .line 750
    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    .line 751
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result p1

    goto :goto_23

    :cond_22
    const/4 p1, -0x1

    .line 750
    :goto_23
    return p1
.end method

.method public blacklist getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;I)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 771
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object p1

    .line 773
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getAudioAttributesGroup()Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p2

    .line 774
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result p1

    .line 775
    if-eqz p2, :cond_19

    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->isDefaultMatchScore(I)Z

    move-result p1

    if-nez p1, :cond_19

    .line 776
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result p1

    goto :goto_1a

    :cond_19
    const/4 p1, -0x1

    .line 775
    :goto_1a
    return p1
.end method

.method public blacklist getVolumeGroupIdForLegacyStreamType(I)I
    .registers 2

    .line 729
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributeGroupForLegacyStreamType(I)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p1

    .line 730
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, -0x1

    :goto_c
    return p1
.end method

.method public blacklist getZoneId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 547
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 492
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist supportsAudioAttributes(Landroid/media/AudioAttributes;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 634
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->multiZoneAudio()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 635
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    invoke-virtual {p0, p1, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;I)Z

    move-result p1

    return p1

    .line 637
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getScoredAttributeGroupForAttribute(Landroid/media/AudioAttributes;)Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy$ScoredAudioAttributesGroup;->getScore()I

    move-result p1

    if-lez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public blacklist supportsAudioAttributes(Landroid/media/AudioAttributes;I)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 659
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesSupportScore(Landroid/media/AudioAttributes;I)I

    move-result p1

    .line 660
    if-lez p1, :cond_c

    const/16 p2, 0x10

    if-eq p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 820
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v1, " Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->multiZoneAudio()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 829
    const-string v1, " ZoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    :cond_35
    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_4b

    aget-object v4, v1, v3

    .line 833
    invoke-virtual {v4, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 835
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 786
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mZoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 791
    invoke-virtual {v3, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 793
    :cond_23
    return-void
.end method
