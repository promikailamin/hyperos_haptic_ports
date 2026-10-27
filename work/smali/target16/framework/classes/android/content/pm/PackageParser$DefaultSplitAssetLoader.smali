.class Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSplitAssetLoader"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private blacklist mBaseApkAssets:Landroid/content/res/ApkAssets;

.field private final blacklist mBaseCodePath:Ljava/lang/String;

.field private blacklist mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final blacklist mFlags:I

.field private final blacklist mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .registers 4

    .line 8905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8906
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    .line 8907
    iget-object p1, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 8908
    iput p2, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    .line 8909
    return-void
.end method

.method private static blacklist loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 8913
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_26

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_26

    .line 8914
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

    .line 8919
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object p0

    .line 8920
    :catch_2b
    move-exception p1

    .line 8921
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8964
    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8965
    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 2

    .line 8969
    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 8928
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_9

    .line 8929
    iget-object v0, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v0

    .line 8932
    :cond_9
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 8933
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 8935
    iget-object v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v4, v5}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    iput-object v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    .line 8938
    nop

    .line 8939
    iget-object v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    aput-object v4, v1, v2

    .line 8942
    iget-object v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 8943
    iget-object v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    :goto_32
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 8944
    add-int/lit8 v8, v3, 0x1

    iget v9, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v7

    aput-object v7, v1, v3

    .line 8943
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_32

    .line 8948
    :cond_44
    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 8949
    const/16 v28, 0x0

    sget v29, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT_FULL:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v9 .. v29}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 8951
    invoke-virtual {v9, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 8953
    iput-object v9, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 8954
    iget-object v0, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 8959
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object p1

    return-object p1
.end method
