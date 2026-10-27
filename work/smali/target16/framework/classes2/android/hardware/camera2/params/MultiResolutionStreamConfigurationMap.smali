.class public final Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
.super Ljava/lang/Object;
.source "MultiResolutionStreamConfigurationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap$SizeComparator;
    }
.end annotation


# instance fields
.field private final blacklist mConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMultiResolutionInputConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mMultiResolutionOutputConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .line 76
    const-string v0, "multi-resolution configurations must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 81
    iput-object p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    .line 86
    iget-object p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 90
    const/4 v2, 0x0

    :goto_41
    array-length v3, v0

    if-ge v2, v3, :cond_88

    .line 91
    aget-object v3, v0, v2

    .line 92
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    .line 94
    new-instance v5, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 95
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7, v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;-><init>(IILjava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isInput()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 98
    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    goto :goto_62

    .line 100
    :cond_60
    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    .line 103
    :goto_62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 104
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 110
    :cond_88
    goto :goto_28

    .line 111
    :cond_89
    return-void

    .line 78
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "multi-resolution configurations must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist appendConfigurationsString(Ljava/lang/StringBuilder;Z)V
    .registers 10

    .line 243
    if-eqz p2, :cond_5

    const-string v0, "Outputs("

    goto :goto_7

    :cond_5
    const-string v0, "Inputs("

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {p0, p2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getPublicImageFormats(Z)[I

    move-result-object v0

    .line 245
    if-eqz v0, :cond_91

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_91

    aget v3, v0, v2

    .line 247
    nop

    .line 248
    invoke-direct {p0, v3, p2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInfo(IZ)Ljava/util/Collection;

    move-result-object v4

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 251
    nop

    .line 252
    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 253
    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 251
    const-string v5, "[w:%d, h:%d, id:%s], "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    goto :goto_3f

    .line 256
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_89

    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 259
    :cond_89
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 262
    :cond_91
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    return-void
.end method

.method private blacklist getInfo(IZ)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result p1

    .line 234
    if-eqz p2, :cond_9

    iget-object p2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    goto :goto_b

    :cond_9
    iget-object p2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .line 235
    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 238
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getPublicImageFormats(Z)[I
    .registers 6

    .line 179
    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .line 180
    :goto_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 182
    new-array v0, v0, [I

    .line 183
    nop

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 185
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v2

    aput v2, v0, v1

    .line 186
    move v1, v3

    goto :goto_17

    .line 188
    :cond_31
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 273
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 274
    return v0

    .line 276
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 277
    return v1

    .line 279
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    if-eqz v2, :cond_50

    .line 280
    check-cast p1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 282
    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 283
    return v0

    .line 286
    :cond_21
    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    iget-object v4, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 288
    return v0

    .line 290
    :cond_4e
    goto :goto_2b

    .line 292
    :cond_4f
    return v1

    .line 294
    :cond_50
    return v0
.end method

.method public whitelist getInputFormats()[I
    .registers 2

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getPublicImageFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputInfo(I)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;"
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInfo(IZ)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getOutputFormats()[I
    .registers 2

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getPublicImageFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputInfo(I)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;"
        }
    .end annotation

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInfo(IZ)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiResolutionStreamConfigurationMap("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->appendConfigurationsString(Ljava/lang/StringBuilder;Z)V

    .line 319
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->appendConfigurationsString(Ljava/lang/StringBuilder;Z)V

    .line 321
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
