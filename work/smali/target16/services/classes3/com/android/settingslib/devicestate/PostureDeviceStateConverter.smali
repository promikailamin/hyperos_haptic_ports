.class public Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;
.super Ljava/lang/Object;
.source "PostureDeviceStateConverter.java"


# instance fields
.field public final mPostures:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$0YJ3tCF3rACPd7I8iuKNszKmP6A(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;Landroid/hardware/devicestate/DeviceState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->lambda$new$0(Landroid/hardware/devicestate/DeviceState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y95WvdMLtsOJ-bmtzyz9HZkTvGA(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;Landroid/hardware/devicestate/DeviceState;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->toPosture(Landroid/hardware/devicestate/DeviceState;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;)V
    .registers 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_35

    .line 53
    invoke-virtual {p2}, Landroid/hardware/devicestate/DeviceStateManager;->getSupportedDeviceStates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V

    .line 54
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 55
    invoke-static {p2, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    return-void

    .line 60
    :cond_35
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1070088

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_4f
    if-ge v4, v2, :cond_5d

    aget v5, p2, v4

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 67
    :cond_5d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    array-length v2, p2

    move v4, v3

    :goto_6c
    if-ge v4, v2, :cond_7a

    aget v5, p2, v4

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 73
    :cond_7a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10700ba

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 75
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 76
    array-length v4, p2

    move v5, v3

    :goto_8c
    if-ge v5, v4, :cond_9a

    aget v6, p2, v5

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 79
    :cond_9a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 81
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 82
    array-length v4, p1

    move v5, v3

    :goto_ac
    if-ge v5, v4, :cond_ba

    aget v6, p1, v5

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 86
    :cond_ba
    iget-object p1, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public deviceStateToPosture(I)I
    .registers 5

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public final synthetic lambda$new$0(Landroid/hardware/devicestate/DeviceState;)Z
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->toPosture(Landroid/hardware/devicestate/DeviceState;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public postureToDeviceState(I)Ljava/lang/Integer;
    .registers 3

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->mPostures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 p1, 0x0

    if-eqz p0, :cond_24

    .line 115
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 116
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_24
    return-object p1
.end method

.method public final toPosture(Landroid/hardware/devicestate/DeviceState;)I
    .registers 4

    const/16 p0, 0x10

    .line 127
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    return p0

    :cond_a
    const/16 p0, 0xb

    .line 130
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/16 p0, 0xc

    const/4 v0, 0x2

    .line 133
    filled-new-array {p0, v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 p0, 0x1

    return p0

    .line 137
    :cond_23
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v0

    :cond_2a
    const/4 p0, -0x1

    return p0
.end method
