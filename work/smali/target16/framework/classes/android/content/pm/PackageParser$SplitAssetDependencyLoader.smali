.class Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;
.super Landroid/content/pm/PackageParser$SplitDependencyLoader;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitAssetDependencyLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$SplitDependencyLoader<",
        "Landroid/content/pm/PackageParser$PackageParserException;",
        ">;",
        "Landroid/content/pm/PackageParser$SplitAssetLoader;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private final blacklist mCachedSplitApks:[[Landroid/content/res/ApkAssets;

.field private final blacklist mFlags:I

.field private final blacklist mSplitPaths:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            "Landroid/util/SparseArray<",
            "[I>;I)V"
        }
    .end annotation

    .line 8990
    invoke-direct {p0, p2}, Landroid/content/pm/PackageParser$SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 8993
    iget-object p2, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length p2, p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 8994
    iget-object p2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 8995
    iget-object p2, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length p1, p1

    invoke-static {p2, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8997
    iput p3, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mFlags:I

    .line 8998
    iget-object p1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [[Landroid/content/res/ApkAssets;

    iput-object p1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    .line 8999
    iget-object p1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Landroid/content/res/AssetManager;

    iput-object p1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 9000
    return-void
.end method

.method private static blacklist createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;
    .registers 22

    .line 9023
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 9024
    const/16 v19, 0x0

    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT_FULL:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v0 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 9026
    move-object/from16 v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 9027
    return-object v0
.end method

.method private static blacklist loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9009
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_26

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_26

    .line 9010
    :cond_b
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid package file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x64

    invoke-direct {p1, v0, p0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 9015
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object p0

    .line 9016
    :catch_2b
    move-exception p1

    .line 9017
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load APK at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9070
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 9071
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9070
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 9073
    :cond_e
    return-void
.end method

.method protected blacklist constructSplit(I[II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9036
    if-ltz p3, :cond_e

    .line 9037
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object p3, v1, p3

    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9041
    :cond_e
    iget-object p3, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object p3, p3, p1

    iget v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mFlags:I

    invoke-static {p3, v1}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9044
    array-length p3, p2

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, p3, :cond_31

    aget v2, p2, v1

    .line 9045
    iget-object v3, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v2, v3, v2

    iget v3, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9044
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 9049
    :cond_31
    iget-object p2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/content/res/ApkAssets;

    aput-object p3, p2, p1

    .line 9050
    iget-object p2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    iget-object p3, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object p3, p3, p1

    invoke-static {p3}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;

    move-result-object p3

    aput-object p3, p2, p1

    .line 9052
    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 3

    .line 9077
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9056
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 9057
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9064
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 9065
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected blacklist isSplitCached(I)Z
    .registers 3

    .line 9004
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object p1, v0, p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
