.class public Landroid/content/res/AssetManager$Builder;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNoInit:Z

.field private final greylist-max-o mUserApkAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-object p0
.end method

.method public blacklist addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public greylist-max-o build()Landroid/content/res/AssetManager;
    .registers 10

    .line 176
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 183
    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1a
    const/4 v4, 0x0

    if-ltz v3, :cond_46

    .line 184
    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 185
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_2f
    if-ltz v6, :cond_43

    .line 186
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 187
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 188
    invoke-virtual {v1, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    :cond_40
    add-int/lit8 v6, v6, -0x1

    goto :goto_2f

    .line 183
    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 193
    :cond_46
    array-length v2, v0

    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 195
    new-array v2, v2, [Landroid/content/res/ApkAssets;

    .line 197
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_60
    if-ge v5, v3, :cond_71

    .line 201
    array-length v6, v0

    add-int/2addr v6, v5

    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    aput-object v7, v2, v6

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 205
    :cond_71
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_76
    if-ge v5, v3, :cond_8c

    .line 206
    array-length v6, v0

    add-int/2addr v6, v5

    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 207
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    aput-object v7, v2, v6

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 212
    :cond_8c
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Landroid/content/res/AssetManager;-><init>(ZLandroid/content/res/AssetManager-IA;)V

    .line 213
    invoke-static {v0, v2}, Landroid/content/res/AssetManager;->-$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V

    .line 214
    invoke-static {v0}, Landroid/content/res/AssetManager;->-$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J

    move-result-wide v5

    iget-boolean v3, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    invoke-static {v5, v6, v2, v4, v3}, Landroid/content/res/AssetManager;->-$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    .line 216
    iget-object v2, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a7

    goto :goto_b1

    .line 217
    :cond_a7
    iget-object v1, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    new-array v2, v4, [Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/loader/ResourcesLoader;

    :goto_b1
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 219
    return-object v0
.end method

.method public blacklist setNoInit()Landroid/content/res/AssetManager$Builder;
    .registers 2

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    .line 171
    return-object p0
.end method
