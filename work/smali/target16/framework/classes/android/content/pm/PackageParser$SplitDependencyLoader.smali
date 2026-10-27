.class abstract Landroid/content/pm/PackageParser$SplitDependencyLoader;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplitDependencyLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
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

.annotation runtime Ljava/lang/Deprecated;
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

    .line 8689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8690
    iput-object p1, p0, Landroid/content/pm/PackageParser$SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 8691
    return-void
.end method

.method private static blacklist append([II)[I
    .registers 3

    .line 8784
    if-nez p0, :cond_7

    .line 8785
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 8787
    :cond_7
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 8788
    array-length p0, p0

    aput p1, v0, p0

    .line 8789
    return-object v0
.end method

.method private blacklist collectConfigSplitIndices(I)[I
    .registers 4

    .line 8749
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 8750
    if-eqz p1, :cond_15

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    goto :goto_15

    .line 8753
    :cond_f
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    return-object p1

    .line 8751
    :cond_15
    :goto_15
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    return-object p1
.end method

.method public static blacklist createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    .line 8798
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 8801
    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8805
    move v2, v3

    :goto_f
    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v4, v4

    const-string v5, "\', which is missing."

    const-string v6, "Split \'"

    const/4 v7, 0x0

    if-ge v2, v4, :cond_67

    .line 8806
    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_20

    .line 8808
    goto :goto_64

    .line 8813
    :cond_20
    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 8814
    if-eqz v4, :cond_5a

    .line 8815
    iget-object v8, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v8, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 8816
    if-ltz v8, :cond_31

    .line 8821
    add-int/lit8 v8, v8, 0x1

    .line 8822
    goto :goto_5b

    .line 8817
    :cond_31
    new-instance v0, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

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

    invoke-direct {v0, p0, v7}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser-IA;)V

    throw v0

    .line 8824
    :cond_5a
    move v8, v3

    .line 8826
    :goto_5b
    add-int/lit8 v4, v2, 0x1

    filled-new-array {v8}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8805
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 8834
    :cond_67
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    move v4, v3

    :goto_6b
    if-ge v4, v2, :cond_f9

    .line 8835
    iget-object v8, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_75

    .line 8837
    goto/16 :goto_f5

    .line 8842
    :cond_75
    iget-object v8, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    aget-object v8, v8, v4

    .line 8843
    if-eqz v8, :cond_e4

    .line 8844
    iget-object v9, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 8845
    if-ltz v9, :cond_bb

    .line 8851
    iget-object v8, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_8c

    .line 8857
    add-int/lit8 v9, v9, 0x1

    .line 8858
    goto :goto_e5

    .line 8852
    :cond_8c
    new-instance v0, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object p0, p0, v9

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser-IA;)V

    throw v0

    .line 8846
    :cond_bb
    new-instance v0, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

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

    invoke-direct {v0, p0, v7}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser-IA;)V

    throw v0

    .line 8859
    :cond_e4
    move v9, v3

    .line 8861
    :goto_e5
    nop

    .line 8862
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    add-int/lit8 v10, v4, 0x1

    invoke-static {v8, v10}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->append([II)[I

    move-result-object v8

    .line 8861
    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8834
    :goto_f5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6b

    .line 8866
    :cond_f9
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 8867
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v4, v3

    :goto_103
    if-ge v4, v2, :cond_12f

    .line 8868
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 8870
    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 8871
    :goto_10c
    if-eq v5, v1, :cond_12c

    .line 8873
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_124

    .line 8879
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->set(I)V

    .line 8882
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 8883
    if-eqz v5, :cond_122

    aget v5, v5, v3

    goto :goto_123

    :cond_122
    move v5, v1

    .line 8884
    :goto_123
    goto :goto_10c

    .line 8874
    :cond_124
    new-instance p0, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    const-string v0, "Cycle detected in split dependencies."

    invoke-direct {p0, v0, v7}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser-IA;)V

    throw p0

    .line 8867
    :cond_12c
    add-int/lit8 v4, v4, 0x1

    goto :goto_103

    .line 8886
    :cond_12f
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

    .line 8703
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8704
    return-void

    .line 8708
    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    .line 8709
    invoke-direct {p0, v1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object p1

    .line 8710
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->constructSplit(I[II)V

    .line 8711
    return-void

    .line 8715
    :cond_13
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 8716
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    .line 8723
    :goto_1b
    iget-object v3, p0, Landroid/content/pm/PackageParser$SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 8724
    if-eqz p1, :cond_2b

    array-length v3, p1

    if-lez v3, :cond_2b

    .line 8725
    aget p1, p1, v1

    goto :goto_2c

    .line 8727
    :cond_2b
    move p1, v0

    .line 8730
    :goto_2c
    if-ltz p1, :cond_39

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 8731
    goto :goto_39

    .line 8734
    :cond_35
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    .line 8735
    goto :goto_1b

    .line 8738
    :cond_39
    :goto_39
    nop

    .line 8739
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_52

    .line 8740
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 8741
    invoke-direct {p0, v1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v3

    .line 8742
    invoke-virtual {p0, v1, v3, p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->constructSplit(I[II)V

    .line 8743
    nop

    .line 8739
    add-int/lit8 v0, v0, -0x1

    move p1, v1

    goto :goto_40

    .line 8745
    :cond_52
    return-void
.end method
