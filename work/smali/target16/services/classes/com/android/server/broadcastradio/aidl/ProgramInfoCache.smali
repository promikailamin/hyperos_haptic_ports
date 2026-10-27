.class public final Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;
.super Ljava/lang/Object;
.source "ProgramInfoCache.java"


# instance fields
.field public mComplete:Z

.field public final mFilter:Landroid/hardware/radio/ProgramList$Filter;

.field public final mProgramInfoMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 77
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-void
.end method

.method public varargs constructor <init>(Landroid/hardware/radio/ProgramList$Filter;Z[Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 83
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 84
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    const/4 p1, 0x0

    .line 85
    :goto_f
    array-length p2, p3

    if-ge p1, p2, :cond_1a

    .line 86
    aget-object p2, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1a
    return-void
.end method

.method public static buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;
    .registers 16

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    move-object p4, v0

    :cond_4
    if-eqz p2, :cond_13

    .line 319
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result p3

    .line 318
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p0

    :goto_14
    if-eqz p4, :cond_22

    .line 322
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result p5

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_22
    if-nez p3, :cond_2a

    .line 325
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2a
    const/4 p5, 0x0

    if-eqz p2, :cond_3a

    .line 335
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result v1

    .line 336
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    goto :goto_3c

    :cond_3a
    move v1, p5

    move-object p2, v0

    :goto_3c
    if-eqz p4, :cond_4b

    .line 339
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result v0

    .line 340
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    goto :goto_4d

    :cond_4b
    move-object p4, v0

    move v0, p5

    .line 342
    :goto_4d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, p5

    :goto_53
    if-ge v3, p3, :cond_a8

    .line 344
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 345
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    if-eqz p2, :cond_76

    move v6, p5

    :goto_62
    if-ge v6, v1, :cond_76

    .line 347
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 348
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_76
    if-eqz p4, :cond_8d

    move v6, p5

    :goto_79
    if-ge v6, v0, :cond_8d

    .line 352
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 353
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 356
    :cond_8d
    new-instance v6, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v7, 0x1

    if-eqz p0, :cond_96

    if-nez v3, :cond_96

    move v8, v7

    goto :goto_97

    :cond_96
    move v8, p5

    :goto_97
    if-eqz p1, :cond_9e

    add-int/lit8 v9, p3, -0x1

    if-ne v3, v9, :cond_9e

    goto :goto_9f

    :cond_9e
    move v7, p5

    :goto_9f
    invoke-direct {v6, v8, v7, v4, v5}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_a8
    return-object v2
.end method

.method public static roundUpFraction(II)I
    .registers 3

    .line 304
    div-int v0, p0, p1

    rem-int/2addr p0, p1

    if-lez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public filterAndApplyChunk(Landroid/hardware/broadcastradio/ProgramListChunk;)Ljava/util/List;
    .registers 4

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    .line 201
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/broadcastradio/ProgramListChunk;",
            "II)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 209
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 213
    :cond_9
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_10
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    array-length v4, v2

    const-string v5, "BcRadioAidlSrv.cache"

    if-ge v1, v4, :cond_4b

    .line 215
    aget-object v2, v2, v1

    .line 216
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 218
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    aget-object v2, v2, v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Program info %s in program list chunk is not valid"

    invoke-static {v5, v4, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_48

    .line 222
    :cond_2d
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    .line 223
    invoke-virtual {p0, v4}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_48

    .line 226
    :cond_42
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 227
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_4b
    move-object v1, v5

    .line 229
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 230
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v2, :cond_8f

    .line 231
    :goto_55
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v4, v2

    if-ge v0, v4, :cond_8f

    .line 232
    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    if-nez v2, :cond_70

    .line 235
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    aget-object v2, v2, v0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Removed identifier %s in program list chunk is not valid"

    invoke-static {v1, v4, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8c

    .line 239
    :cond_70
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 240
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 245
    :cond_8f
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    iget-boolean v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    if-ne v0, v1, :cond_a7

    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    if-nez v0, :cond_a7

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_a7
    iget-boolean v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    iput-boolean v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 250
    iget-boolean v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    move v4, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;Z)Ljava/util/List;
    .registers 5

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    .line 152
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;",
            "ZII)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 160
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p2, 0x1

    :cond_10
    move v0, p2

    .line 168
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 169
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const/4 p2, 0x0

    move v1, p2

    .line 170
    :goto_1d
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 171
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_37
    move v1, p2

    .line 173
    :goto_38
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_7e

    .line 174
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 175
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_7b

    .line 178
    :cond_4f
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 179
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v5, p2

    .line 180
    :goto_58
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 181
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 184
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v7

    if-nez v7, :cond_72

    goto :goto_78

    .line 187
    :cond_72
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 188
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 191
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p2, v1, :cond_90

    .line 192
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->removeUniqueId(Landroid/hardware/radio/UniqueProgramIdentifier;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7e

    .line 194
    :cond_90
    iget-boolean v1, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    move v3, p3

    move v5, p4

    .line 195
    invoke-static/range {v0 .. v5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilter()Landroid/hardware/radio/ProgramList$Filter;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-object p0
.end method

.method public final passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 258
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 259
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    return v2

    .line 262
    :cond_26
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    return v2

    .line 265
    :cond_3f
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result p0

    if-nez p0, :cond_4f

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->isCategoryType()Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_4f

    :cond_4e
    return v2

    :cond_4f
    :goto_4f
    return v1
.end method

.method public final putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 5

    .line 269
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 271
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_1a
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeUniqueId(Landroid/hardware/radio/UniqueProgramIdentifier;)V
    .registers 4

    .line 277
    invoke-virtual {p1}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2b

    .line 281
    :cond_d
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 283
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .registers 5

    .line 288
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 291
    new-instance v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 292
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    const/4 v1, 0x1

    if-nez v0, :cond_2d

    return v1

    .line 297
    :cond_2d
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_39
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public toProgramInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 93
    :goto_6
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 94
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramInfoCache(mComplete = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", mFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", mProgramInfoMap = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 106
    :goto_1d
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 107
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 108
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, v1

    .line 109
    :goto_2e
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 110
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 114
    :cond_46
    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFromHalProgramListChunk(Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .registers 7

    .line 128
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    if-eqz v0, :cond_9

    .line 129
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_b
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_2e

    .line 132
    aget-object v2, v2, v1

    .line 133
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v2

    if-nez v2, :cond_28

    .line 135
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    aget-object v2, v2, v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "BcRadioAidlSrv.cache"

    const-string v4, "Program info in program info %s in chunk is not valid"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b

    .line 139
    :cond_28
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 141
    :cond_2e
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v1, :cond_45

    .line 142
    :goto_32
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v2, v1

    if-ge v0, v2, :cond_45

    .line 143
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    .line 144
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 147
    :cond_45
    iget-boolean p1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    return-void
.end method
