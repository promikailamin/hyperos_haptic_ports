.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# instance fields
.field private blacklist mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

.field private blacklist mPackage:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .registers 6

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 52
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 55
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 56
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 58
    new-instance v2, Landroid/content/res/MiuiResourcesImpl;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/content/res/MiuiResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v2, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    .line 59
    invoke-virtual {p0, v2}, Landroid/content/res/MiuiResources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 75
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 66
    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 67
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 68
    return-void
.end method

.method public static blacklist isPreloadedCacheEmpty()Z
    .registers 1

    .line 187
    invoke-static {}, Landroid/content/res/MiuiResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist updateMiuiImpl()V
    .registers 4

    .line 235
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 236
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_17

    instance-of v1, v0, Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_17

    .line 237
    move-object v1, v0

    check-cast v1, Landroid/content/res/MiuiResourcesImpl;

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    .line 238
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 239
    invoke-virtual {v1, p0, v2}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    goto :goto_1a

    .line 242
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    .line 244
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public whitelist getIntArray(I)[I
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 136
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getIntArray(I)[I

    move-result-object v0

    .line 137
    .local v0, "array":[I
    if-eqz v0, :cond_b

    .line 138
    return-object v0

    .line 141
    .end local v0    # "array":[I
    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStringArray(I)[Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 164
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 166
    return-object v0

    .line 169
    .end local v0    # "array":[Ljava/lang/String;
    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 103
    return-object v0

    .line 106
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 114
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 117
    return-object v0

    .line 120
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 150
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    .local v0, "array":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 152
    return-object v0

    .line 155
    .end local v0    # "array":[Ljava/lang/CharSequence;
    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThemeString(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I

    .line 227
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_9

    .line 228
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 230
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist init(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_9

    .line 206
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, p0, p1}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    .line 209
    :cond_9
    return-void
.end method

.method blacklist isPreloadOverlayed(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 192
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_f

    .line 193
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->isPreloadOverlayed(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 194
    .local v0, "isPreload":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    .line 195
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 198
    .end local v0    # "isPreload":Ljava/lang/Boolean;
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method blacklist loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .line 174
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 175
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 177
    return-object v0

    .line 180
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .registers 3
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .line 217
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    .line 218
    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_b

    .line 220
    return-object v0

    .line 223
    .end local v0    # "typeArray":Landroid/content/res/TypedArray;
    :cond_b
    return-object p1
.end method

.method blacklist loadOverlayValue(Landroid/util/TypedValue;I)V
    .registers 4
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .line 125
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_7

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayValue(Landroid/util/TypedValue;I)V

    .line 128
    :cond_7
    return-void
.end method

.method public blacklist setImpl(Landroid/content/res/ResourcesImpl;)V
    .registers 2
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;

    .line 83
    invoke-super {p0, p1}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 84
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 85
    return-void
.end method
