.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private static blacklist append([II)[I
    .registers 3

    .line 144
    if-nez p0, :cond_7

    .line 145
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 147
    :cond_7
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 148
    array-length p0, p0

    aput p1, v0, p0

    .line 149
    return-object v0
.end method

.method private blacklist collectConfigSplitIndices(I)[I
    .registers 4

    .line 109
    iget-object v0, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 110
    if-eqz p1, :cond_15

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    goto :goto_15

    .line 113
    :cond_f
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    return-object p1

    .line 111
    :cond_15
    :goto_15
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    return-object p1
.end method

.method public static blacklist createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 169
    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    move v2, v3

    :goto_f
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const-string v5, "\', which is missing."

    const-string v6, "Split \'"

    const/4 v7, 0x0

    if-ge v2, v4, :cond_71

    .line 174
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    if-nez v4, :cond_24

    .line 176
    goto :goto_6e

    .line 181
    :cond_24
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getUsesSplitNames()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 182
    if-eqz v4, :cond_64

    .line 183
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 184
    if-ltz v8, :cond_39

    .line 188
    add-int/lit8 v8, v8, 0x1

    .line 189
    goto :goto_65

    .line 185
    :cond_39
    new-instance v0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' requires split \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v0

    .line 191
    :cond_64
    move v8, v3

    .line 193
    :goto_65
    add-int/lit8 v4, v2, 0x1

    filled-new-array {v8}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 200
    :cond_71
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    move v4, v3

    :goto_77
    if-ge v4, v2, :cond_113

    .line 201
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v8

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_83

    .line 203
    goto/16 :goto_10f

    .line 208
    :cond_83
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getConfigForSplit()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    .line 209
    if-eqz v8, :cond_fe

    .line 210
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 211
    if-ltz v9, :cond_d3

    .line 216
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v8

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_a0

    .line 221
    add-int/lit8 v9, v9, 0x1

    .line 222
    goto :goto_ff

    .line 217
    :cond_a0
    new-instance v0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v9

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v0

    .line 212
    :cond_d3
    new-instance v0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' targets split \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v0

    .line 223
    :cond_fe
    move v9, v3

    .line 225
    :goto_ff
    nop

    .line 226
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    add-int/lit8 v10, v4, 0x1

    invoke-static {v8, v10}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    move-result-object v8

    .line 225
    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    :goto_10f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_77

    .line 230
    :cond_113
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 231
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v4, v3

    :goto_11d
    if-ge v4, v2, :cond_149

    .line 232
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 234
    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 235
    :goto_126
    if-eq v5, v1, :cond_146

    .line 237
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_13e

    .line 242
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->set(I)V

    .line 245
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 246
    if-eqz v5, :cond_13c

    aget v5, v5, v3

    goto :goto_13d

    :cond_13c
    move v5, v1

    .line 247
    :goto_13d
    goto :goto_126

    .line 238
    :cond_13e
    new-instance p0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    const-string v0, "Cycle detected in split dependencies."

    invoke-direct {p0, v0, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw p0

    .line 231
    :cond_146
    add-int/lit8 v4, v4, 0x1

    goto :goto_11d

    .line 249
    :cond_149
    return-object v0
.end method


# virtual methods
.method protected abstract blacklist constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract blacklist isSplitCached(I)Z
.end method

.method protected blacklist loadDependenciesForSplit(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    return-void

    .line 68
    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    .line 69
    invoke-direct {p0, v1}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object p1

    .line 70
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 71
    return-void

    .line 75
    :cond_13
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 76
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    .line 83
    :goto_1b
    iget-object v3, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 84
    if-eqz p1, :cond_2b

    array-length v3, p1

    if-lez v3, :cond_2b

    .line 85
    aget p1, p1, v1

    goto :goto_2c

    .line 87
    :cond_2b
    move p1, v0

    .line 90
    :goto_2c
    if-ltz p1, :cond_39

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 91
    goto :goto_39

    .line 94
    :cond_35
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    .line 95
    goto :goto_1b

    .line 98
    :cond_39
    :goto_39
    nop

    .line 99
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_52

    .line 100
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 101
    invoke-direct {p0, v1}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v3

    .line 102
    invoke-virtual {p0, v1, v3, p1}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 103
    nop

    .line 99
    add-int/lit8 v0, v0, -0x1

    move p1, v1

    goto :goto_40

    .line 105
    :cond_52
    return-void
.end method
