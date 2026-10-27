.class public final Landroid/content/res/MiuiResourcesImpl;
.super Landroid/content/res/ResourcesImpl;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    }
.end annotation


# static fields
.field private static final blacklist sMiuiThemeEnabled:Z

.field private static final blacklist sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sUpdatedTimeSystem:Ljava/lang/Long;

.field private static final blacklist sUpdatedTimeSystemMutex:Ljava/lang/Object;


# instance fields
.field private blacklist mIsPreloadOverlayed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private blacklist mSkipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThemeResources:Lmiui/content/res/ThemeResources;

.field private blacklist mThemeValues:Lmiui/content/res/ThemeValues;

.field private blacklist mUpdatedTime:J

.field private blacklist mValueLoadedTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    .line 42
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .registers 7
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    .line 61
    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    .line 63
    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    .line 64
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private blacklist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 6
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "themeOverlay":Z
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 229
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    .line 230
    .local v1, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    .line 231
    .local v3, "withoutSuffixLength":I
    iget-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 232
    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    .line 235
    if-eqz v0, :cond_40

    .line 236
    invoke-virtual {v1, v3}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 237
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 240
    :cond_40
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 241
    .end local v1    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v3    # "withoutSuffixLength":I
    goto :goto_4a

    .line 242
    :cond_44
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    .line 244
    :goto_4a
    return v0
.end method

.method private blacklist loadValues()V
    .registers 5

    .line 405
    iget-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    return-void

    .line 407
    :cond_9
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    .line 408
    .local v0, "tmp":Lmiui/content/res/ThemeValues;
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 410
    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    .line 412
    return-void
.end method

.method private blacklist resolveOverlayValue(ILandroid/util/TypedValue;)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 108
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_32

    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    if-gtz v0, :cond_9

    goto :goto_32

    .line 112
    :cond_9
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1a

    :cond_15
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    .line 114
    :cond_1a
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    .local v0, "themeInteger":Ljava/lang/Integer;
    if-nez v0, :cond_29

    .line 117
    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 119
    :cond_29
    if-eqz v0, :cond_31

    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 123
    .end local v0    # "themeInteger":Ljava/lang/Integer;
    :cond_31
    return-void

    .line 109
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist updateInfoWithResourceId(Landroid/content/res/MiuiResources;ILandroid/content/res/MiuiResources$ThemeFileInfoOption;)V
    .registers 13
    .param p1, "res"    # Landroid/content/res/MiuiResources;
    .param p2, "resId"    # I
    .param p3, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 214
    iget-object v0, p3, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 215
    :cond_5
    iget-object v0, p3, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 216
    .local v0, "old":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 217
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "sepIndex":I
    invoke-virtual {p1, p2}, Landroid/content/res/MiuiResources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "type":Ljava/lang/String;
    iget v4, p3, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    invoke-static {v4}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "density":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/res/MiuiResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "entryName":Ljava/lang/String;
    const/4 v6, 0x1

    if-ge v2, v6, :cond_2d

    const-string v6, ""

    goto :goto_31

    :cond_2d
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "suf":Ljava/lang/String;
    :goto_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 224
    .end local v2    # "sepIndex":I
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "density":Ljava/lang/String;
    .end local v5    # "entryName":Ljava/lang/String;
    .end local v6    # "suf":Ljava/lang/String;
    :cond_56
    return-void
.end method


# virtual methods
.method public blacklist getIntArray(I)[I
    .registers 3
    .param p1, "id"    # I

    .line 126
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    .line 127
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeIntArray(I)[I

    move-result-object v0

    .line 128
    .local v0, "array":[I
    if-eqz v0, :cond_b

    .line 129
    return-object v0

    .line 132
    .end local v0    # "array":[I
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStringArray(I)[Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 146
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 149
    return-object v0

    .line 152
    .end local v0    # "array":[Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I

    .line 74
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 77
    return-object v0

    .line 80
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 84
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    .line 85
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 87
    return-object v0

    .line 90
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I

    .line 136
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "array":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 139
    return-object v0

    .line 142
    .end local v0    # "array":[Ljava/lang/CharSequence;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getThemeInt(I)Ljava/lang/Integer;
    .registers 4
    .param p1, "id"    # I

    .line 415
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 416
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method blacklist getThemeIntArray(I)[I
    .registers 4
    .param p1, "id"    # I

    .line 425
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 426
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method blacklist getThemeString(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "id"    # I

    .line 420
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 421
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method blacklist getThemeStringArray(I)[Ljava/lang/String;
    .registers 4
    .param p1, "id"    # I

    .line 430
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 431
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue(ILandroid/util/TypedValue;Z)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    .line 97
    return-void
.end method

.method public blacklist init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V
    .registers 9
    .param p1, "wrapper"    # Landroid/content/res/MiuiResources;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 348
    iput-object p2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 349
    if-nez p2, :cond_f

    .line 350
    const-string v0, "android"

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 351
    invoke-static {p1}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_36

    .line 353
    :cond_f
    invoke-static {p1, p2}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 354
    sget-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_18
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    .line 356
    .local v1, "systemResource":Lmiui/content/res/ThemeResourcesSystem;
    if-eqz v1, :cond_35

    .line 357
    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getUpdateTime()J

    move-result-wide v2

    .line 358
    .local v2, "updatedTime":J
    sget-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_35

    .line 359
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 360
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 363
    .end local v1    # "systemResource":Lmiui/content/res/ThemeResourcesSystem;
    .end local v2    # "updatedTime":J
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_3a

    .line 365
    :goto_36
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    .line 366
    return-void

    .line 363
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method blacklist isPreloadOverlayed(I)Ljava/lang/Boolean;
    .registers 10
    .param p1, "id"    # I

    .line 286
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v0, :cond_6

    .line 287
    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_6
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 291
    .local v0, "isOverlayed":Ljava/lang/Boolean;
    if-eqz v0, :cond_15

    return-object v0

    .line 293
    :cond_15
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 294
    sget-object v2, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 295
    .local v2, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    if-eqz v2, :cond_51

    .line 296
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    .line 297
    .local v4, "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    new-instance v5, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget v6, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mCookie:I

    iget-object v7, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 299
    .local v5, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-direct {p0, v5}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    .line 300
    iget-object v6, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 301
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 302
    goto :goto_51

    .line 304
    .end local v4    # "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    .end local v5    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_50
    goto :goto_28

    .line 306
    :cond_51
    :goto_51
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-object v0
.end method

.method blacklist loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 313
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v0, :cond_9

    .line 314
    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 317
    :cond_9
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 318
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_18
    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 324
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2e

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_77

    .line 325
    :cond_2e
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "file":Ljava/lang/String;
    new-instance v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v1, v4}, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResourcesImpl;ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v2, "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v3, :cond_46

    .line 328
    iget-object v3, v3, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 329
    iput-object v4, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 332
    :cond_46
    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 333
    .local v4, "loadingId":Ljava/lang/Integer;
    sget-object v5, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 334
    .local v6, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    if-nez v6, :cond_73

    .line 335
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v6, v7

    .line 336
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    :cond_73
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v4    # "loadingId":Ljava/lang/Integer;
    .end local v6    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    goto :goto_4c

    .line 342
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    :cond_77
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 344
    :cond_7c
    return-object v0
.end method

.method blacklist loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "wrapper"    # Landroid/content/res/MiuiResources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 173
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_7d

    .line 177
    :cond_12
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 178
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 179
    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    goto :goto_24

    .line 181
    :cond_21
    invoke-direct {p0, p1, p3, v0}, Landroid/content/res/MiuiResourcesImpl;->updateInfoWithResourceId(Landroid/content/res/MiuiResources;ILandroid/content/res/MiuiResources$ThemeFileInfoOption;)V

    .line 184
    :goto_24
    invoke-direct {p0, v0}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    .line 186
    .local v3, "themeOverlay":Z
    if-eqz v3, :cond_6f

    .line 188
    :try_start_2a
    iget v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 189
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 190
    .local v2, "is":Ljava/io/InputStream;
    iget-object v4, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v5, ".9.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 191
    invoke-static {v2}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 193
    :cond_3f
    iget-object v4, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p1, p2, v2, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 194
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_53

    .line 195
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/lit16 v5, v5, 0x200

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 197
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_53} :catch_65
    .catchall {:try_start_2a .. :try_end_53} :catchall_5c

    .line 199
    :cond_53
    nop

    .line 203
    :try_start_54
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5a

    .line 205
    goto :goto_5b

    .line 204
    :catch_5a
    move-exception v1

    .line 199
    :goto_5b
    return-object v4

    .line 202
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_5c
    move-exception v1

    .line 203
    :try_start_5d
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_63

    .line 205
    goto :goto_64

    .line 204
    :catch_63
    move-exception v2

    .line 206
    :goto_64
    throw v1

    .line 200
    :catch_65
    move-exception v2

    .line 203
    :try_start_66
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c

    .line 205
    goto :goto_6e

    .line 204
    :catch_6c
    move-exception v2

    .line 206
    nop

    :goto_6e
    goto :goto_7c

    .line 208
    :cond_6f
    iget-object v4, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_7c
    return-object v1

    .line 174
    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .end local v3    # "themeOverlay":Z
    :cond_7d
    :goto_7d
    return-object v1
.end method

.method blacklist loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .registers 9
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .line 380
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v0, :cond_6

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_6
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 385
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_42

    .line 387
    :cond_16
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 388
    .local v0, "data":[I
    const/4 v1, 0x0

    .line 389
    .local v1, "index":I
    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_41

    .line 390
    add-int/lit8 v2, v1, 0x0

    aget v2, v0, v2

    .line 391
    .local v2, "type":I
    add-int/lit8 v3, v1, 0x3

    aget v3, v0, v3

    .line 392
    .local v3, "id":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_2c

    const/16 v4, 0x1f

    if-le v2, v4, :cond_2f

    :cond_2c
    const/4 v4, 0x5

    if-ne v2, v4, :cond_3d

    .line 394
    :cond_2f
    invoke-virtual {p0, v3}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v4

    .line 395
    .local v4, "themeInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_3d

    .line 396
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 399
    .end local v4    # "themeInteger":Ljava/lang/Integer;
    :cond_3d
    nop

    .end local v2    # "type":I
    .end local v3    # "id":I
    add-int/lit8 v1, v1, 0x7

    .line 400
    goto :goto_19

    .line 401
    :cond_41
    return-object p1

    .line 385
    .end local v0    # "data":[I
    .end local v1    # "index":I
    :cond_42
    :goto_42
    return-object p1
.end method

.method blacklist loadOverlayValue(Landroid/util/TypedValue;I)V
    .registers 3
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .line 100
    invoke-direct {p0, p2, p1}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    .line 101
    return-void
.end method

.method public blacklist openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .line 156
    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_35

    .line 157
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    .line 158
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 159
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v1, p2, v0}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 160
    .local v1, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 161
    iget v0, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v0, p2, Landroid/util/TypedValue;->density:I

    .line 162
    iget-object v0, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v0

    .line 165
    :cond_28
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v1    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_35
    invoke-super {p0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist reset()V
    .registers 3

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    .line 370
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    .line 371
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    .line 372
    return-void
.end method

.method public blacklist updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 10
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 250
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v0

    .line 251
    .local v1, "configChanges":I
    :goto_d
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 253
    sget-boolean v2, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v2, :cond_15

    return-void

    .line 255
    :cond_15
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_7e

    .line 256
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_20

    .line 257
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 259
    :cond_20
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_37

    .line 260
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2b

    const/4 v0, 0x1

    .line 261
    .local v0, "nightModeEnable":Z
    :cond_2b
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    .line 262
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeResourcesSystem;->setNightModeEnable(Z)V

    .line 264
    .end local v0    # "nightModeEnable":Z
    :cond_37
    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    .line 266
    .local v2, "updatedTime":J
    invoke-static {v1}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 267
    sget-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_42
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v4

    move-wide v2, v4

    .line 269
    sget-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_5e

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 271
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 273
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_42 .. :try_end_5f} :catchall_6a

    .line 274
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_6d

    .line 273
    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v4

    .line 277
    :cond_6d
    :goto_6d
    iget-wide v4, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_7b

    and-int/lit16 v0, v1, 0x80

    if-nez v0, :cond_7b

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_7e

    .line 280
    :cond_7b
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    .line 283
    .end local v2    # "updatedTime":J
    :cond_7e
    return-void
.end method
