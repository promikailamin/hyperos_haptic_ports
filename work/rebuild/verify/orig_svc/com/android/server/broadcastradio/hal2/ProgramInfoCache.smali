.class public final Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
.super Ljava/lang/Object;
.source "ProgramInfoCache.java"


# instance fields
.field public mComplete:Z

.field public final mFilter:Landroid/hardware/radio/ProgramList$Filter;

.field public final mProgramInfoMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 61
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-void
.end method

.method public varargs constructor <init>(Landroid/hardware/radio/ProgramList$Filter;Z[Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 68
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 69
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    const/4 p1, 0x0

    .line 70
    :goto_f
    array-length p2, p3

    if-ge p1, p2, :cond_1a

    .line 71
    aget-object p2, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

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

    .line 286
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result p3

    .line 285
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p0

    :goto_14
    if-eqz p4, :cond_22

    .line 289
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result p5

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_22
    if-nez p3, :cond_2a

    .line 292
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2a
    const/4 p5, 0x0

    if-eqz p2, :cond_3a

    .line 302
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result v1

    .line 303
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    goto :goto_3c

    :cond_3a
    move v1, p5

    move-object p2, v0

    :goto_3c
    if-eqz p4, :cond_4b

    .line 306
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result v0

    .line 307
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    goto :goto_4d

    :cond_4b
    move-object p4, v0

    move v0, p5

    .line 309
    :goto_4d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, p5

    :goto_53
    if-ge v3, p3, :cond_a8

    .line 311
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 312
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    if-eqz p2, :cond_76

    move v6, p5

    :goto_62
    if-ge v6, v1, :cond_76

    .line 314
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 315
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

    .line 319
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 320
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 323
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

    .line 271
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
.method public filterAndApplyChunk(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Ljava/util/List;
    .registers 4

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    .line 175
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;",
            "II)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 183
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 187
    :cond_9
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 188
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    :cond_16
    :goto_16
    if-ge v4, v1, :cond_40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 189
    invoke-static {v5}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v5

    .line 190
    invoke-virtual {v5}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v6

    .line 191
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p0, v5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_16

    .line 194
    :cond_39
    invoke-virtual {p0, v5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 195
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 197
    :cond_40
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 198
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_4b
    :goto_4b
    if-ge v2, v1, :cond_79

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 199
    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    if-nez v4, :cond_5c

    goto :goto_4b

    .line 203
    :cond_5c
    iget-object v6, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 204
    iget-object v6, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object v6, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 208
    :cond_79
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    iget-boolean v1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    if-ne v0, v1, :cond_91

    iget-boolean v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    if-nez v0, :cond_91

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_91
    iget-boolean v2, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    iput-boolean v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 213
    iget-boolean v1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    move v4, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndUpdateFrom(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;Z)Ljava/util/List;
    .registers 5

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    .line 126
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;ZII)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;",
            "ZII)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 134
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p2, 0x1

    :cond_10
    move v0, p2

    .line 142
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 143
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const/4 p2, 0x0

    move v1, p2

    .line 144
    :goto_1d
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 145
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

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

    .line 147
    :goto_38
    iget-object v3, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_7e

    .line 148
    iget-object v3, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 149
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_7b

    .line 152
    :cond_4f
    iget-object v3, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 153
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v5, p2

    .line 154
    :goto_58
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 155
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 158
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v7

    if-nez v7, :cond_72

    goto :goto_78

    .line 161
    :cond_72
    invoke-virtual {p0, v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 162
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 165
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p2, v1, :cond_90

    .line 166
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->removeUniqueId(Landroid/hardware/radio/UniqueProgramIdentifier;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7e

    .line 168
    :cond_90
    iget-boolean v1, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    move v3, p3

    move v5, p4

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilter()Landroid/hardware/radio/ProgramList$Filter;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-object p0
.end method

.method public final passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 221
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 222
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

    .line 225
    :cond_26
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    return v2

    .line 228
    :cond_3f
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result p0

    if-nez p0, :cond_4e

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->isCategoryType()Z

    move-result p0

    if-eqz p0, :cond_4e

    return v2

    :cond_4e
    return v1
.end method

.method public final putInfo(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 5

    .line 235
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 237
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1a
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 240
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 239
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeUniqueId(Landroid/hardware/radio/UniqueProgramIdentifier;)V
    .registers 4

    .line 244
    invoke-virtual {p1}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2b

    .line 248
    :cond_d
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 250
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .registers 5

    .line 255
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 258
    new-instance v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 259
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

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

    .line 264
    :cond_2d
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x0

    return p0

    .line 267
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

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 78
    :goto_6
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 79
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

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

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramInfoCache(mComplete = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", mFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", mProgramInfoMap = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_1d
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 92
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Landroid/util/ArrayMap;

    .line 93
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, v1

    .line 94
    :goto_2e
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 95
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 99
    :cond_46
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
