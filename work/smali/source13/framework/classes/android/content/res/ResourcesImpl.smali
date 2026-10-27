.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG_CONFIG:Z = false

.field private static final greylist-max-o DEBUG_LOAD:Z = false

.field private static final greylist-max-o ID_OTHER:I = 0x1000004

.field static final greylist-max-o TAG:Ljava/lang/String; = "Resources"

.field private static final greylist-max-r TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final greylist-max-r TRACE_FOR_PRELOAD:Z = false

.field private static final greylist-max-o XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static greylist-max-o sPreloaded:Z

.field private static final greylist sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final greylist sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field private static final blacklist sThemeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final greylist mAccessLock:Ljava/lang/Object;

.field private final greylist mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAssets:Landroid/content/res/AssetManager;

.field private final greylist-max-o mCachedXmlBlockCookies:[I

.field private final greylist-max-o mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final greylist-max-o mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final greylist mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final greylist-max-o mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private final greylist-max-o mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist mDrawableCache:Landroid/content/res/DrawableCache;

.field private greylist-max-o mLastCachedXmlBlockIndex:I

.field private final greylist-max-o mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-o mPluralRule:Landroid/icu/text/PluralRules;

.field private greylist-max-r mPreloading:Z

.field private final greylist mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsThemeRegistry()Llibcore/util/NativeAllocationRegistry;
    .registers 1

    sget-object v0, Landroid/content/res/ResourcesImpl;->sThemeRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 112
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 116
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 166
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 167
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1326
    const-class v0, Landroid/content/res/ResourcesImpl;

    .line 1327
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1328
    invoke-static {}, Landroid/content/res/AssetManager;->getThemeFreeFunction()J

    move-result-wide v1

    .line 1327
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesImpl;->sThemeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1326
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .registers 7
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 124
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 126
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 128
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 130
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 133
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 141
    new-instance v0, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 142
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 149
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 150
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 151
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 156
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 161
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 203
    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 204
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 205
    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 206
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 207
    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 208
    return-void
.end method

.method private static greylist-max-o adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 573
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 577
    .local v0, "separator":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 578
    move-object v3, p0

    .line 579
    .local v3, "language":Ljava/lang/String;
    const-string v4, ""

    .local v4, "remainder":Ljava/lang/String;
    goto :goto_16

    .line 581
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "remainder":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 582
    .restart local v3    # "language":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    .restart local v4    # "remainder":Ljava/lang/String;
    :goto_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5e

    :cond_1d
    goto :goto_3c

    :sswitch_1e
    const-string/jumbo v1, "yi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_3d

    :sswitch_29
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_3d

    :sswitch_32
    const-string v1, "he"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    goto :goto_3d

    :goto_3c
    move v1, v2

    :goto_3d
    packed-switch v1, :pswitch_data_6c

    .line 599
    move-object v1, v3

    .local v1, "adjustedLanguage":Ljava/lang/String;
    goto :goto_4b

    .line 596
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_42
    const-string v1, "iw"

    .line 597
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    goto :goto_4b

    .line 593
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_45
    const-string v1, "ji"

    .line 594
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    goto :goto_4b

    .line 590
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_48
    const-string v1, "in"

    .line 591
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    nop

    .line 602
    :goto_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_5e
    .sparse-switch
        0xcfd -> :sswitch_32
        0xd1b -> :sswitch_29
        0xf10 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method private static greylist-max-o attrForQuantityCode(Ljava/lang/String;)I
    .registers 2
    .param p0, "quantityCode"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    :cond_7
    goto :goto_3e

    :sswitch_8
    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3f

    :sswitch_13
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3f

    :sswitch_1e
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_29
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3f

    :sswitch_34
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3f

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    packed-switch v0, :pswitch_data_70

    .line 362
    const v0, 0x1000004

    return v0

    .line 361
    :pswitch_46
    const v0, 0x1000009

    return v0

    .line 360
    :pswitch_4a
    const v0, 0x1000008

    return v0

    .line 359
    :pswitch_4e
    const v0, 0x1000007

    return v0

    .line 358
    :pswitch_52
    const v0, 0x1000006

    return v0

    .line 357
    :pswitch_56
    const v0, 0x1000005

    return v0

    :sswitch_data_5a
    .sparse-switch
        0x18b98 -> :sswitch_34
        0x1ae66 -> :sswitch_29
        0x1c24c -> :sswitch_1e
        0x33065f -> :sswitch_13
        0x38fea8 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
    .end packed-switch
.end method

.method private greylist-max-o cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .registers 22
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 775
    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v9, p6

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    .line 776
    .local v11, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v11, :cond_b

    .line 777
    return-void

    .line 780
    :cond_b
    iget-boolean v0, v1, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_52

    .line 781
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 782
    .local v0, "changingConfigs":I
    const/4 v3, 0x0

    if-eqz p2, :cond_26

    .line 783
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    invoke-direct {p0, v0, v3, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 784
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_51

    .line 787
    :cond_26
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    const/16 v6, 0x2000

    invoke-direct {p0, v0, v6, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 789
    and-int/lit16 v4, v0, 0x2000

    if-nez v4, :cond_44

    .line 792
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    aget-object v3, v4, v3

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 793
    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_51

    .line 796
    :cond_44
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 800
    .end local v0    # "changingConfigs":I
    :cond_51
    :goto_51
    goto :goto_62

    .line 801
    :cond_52
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v12

    .line 802
    move-object/from16 v3, p3

    move-wide/from16 v4, p6

    move-object/from16 v6, p4

    move-object v7, v11

    move/from16 v8, p5

    :try_start_5e
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 803
    monitor-exit v12

    .line 805
    :goto_62
    return-void

    .line 803
    :catchall_63
    move-exception v0

    monitor-exit v12
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_63

    throw v0
.end method

.method static blacklist clearPreloadedCache()V
    .registers 2

    .line 175
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 176
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 177
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 178
    return-void
.end method

.method protected static blacklist createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "value"    # Landroid/util/TypedValue;
    .param p5, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1555
    invoke-virtual {p0, p4, p5}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1556
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_a

    .line 1557
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1559
    :cond_a
    return-object v0
.end method

.method private greylist-max-o decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 850
    new-instance v0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/ImageDecoder$AssetInputStreamSource;-><init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 853
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    :try_start_5
    new-instance v1, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_f

    return-object v1

    .line 856
    :catch_f
    move-exception v1

    .line 859
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method static blacklist getAttributeSetSourceResId(Landroid/util/AttributeSet;)I
    .registers 2
    .param p0, "set"    # Landroid/util/AttributeSet;

    .line 1312
    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/content/res/XmlBlock$Parser;

    if-nez v0, :cond_7

    goto :goto_f

    .line 1315
    :cond_7
    move-object v0, p0

    check-cast v0, Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getSourceResId()I

    move-result v0

    return v0

    .line 1313
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .registers 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "key"    # J

    .line 1128
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1129
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ConstantState;

    .line 1130
    .local v1, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v1, :cond_11

    .line 1131
    invoke-virtual {v1}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 1134
    :cond_11
    iget v2, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1136
    .local v2, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v3, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v3, :cond_2f

    .line 1137
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v4, 0x0

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "color"

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1139
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v0, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1143
    :cond_2f
    return-object v2
.end method

.method private greylist-max-o getPluralRule()Landroid/icu/text/PluralRules;
    .registers 4

    .line 250
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-nez v1, :cond_18

    .line 252
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 254
    :cond_18
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    monitor-exit v0

    return-object v1

    .line 255
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method static synthetic blacklist lambda$decodeImageDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 855
    return-void
.end method

.method static synthetic blacklist lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;
    .registers 2

    .line 142
    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl$LookupStack-IA;)V

    return-object v0
.end method

.method private blacklist loadColorOrXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "file"    # Ljava/lang/String;

    .line 939
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 940
    .local v0, "csl":Landroid/content/res/ColorStateList;
    new-instance v1, Landroid/graphics/drawable/ColorStateListDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/content/res/ColorStateList;)V
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v1

    .line 941
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :catch_b
    move-exception v0

    .line 944
    .local v0, "originalException":Landroid/content/res/Resources$NotFoundException;
    :try_start_c
    invoke-direct/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object v1

    .line 945
    :catch_11
    move-exception v1

    .line 947
    .local v1, "ignored":Ljava/lang/Exception;
    throw v0
.end method

.method private greylist-max-o loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 15
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1159
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_be

    .line 1164
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "file":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1183
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1184
    const-string v4, ".xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "File "

    if-eqz v4, :cond_90

    .line 1186
    :try_start_1a
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "ComplexColor"

    invoke-virtual {p0, v0, p3, v4, v6}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 1189
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 1191
    .local v6, "attrs":Landroid/util/AttributeSet;
    :goto_26
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x2

    if-eq v7, v9, :cond_32

    const/4 v7, 0x1

    if-eq v8, v7, :cond_32

    goto :goto_26

    .line 1195
    :cond_32
    if-ne v8, v9, :cond_5c

    .line 1199
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1200
    .local v7, "name":Ljava/lang/String;
    const-string v9, "gradient"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 1201
    invoke-static {p1, v4, v6, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v9

    move-object v1, v9

    goto :goto_54

    .line 1202
    :cond_46
    const-string/jumbo v9, "selector"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 1203
    invoke-static {p1, v4, v6, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v1, v9

    .line 1205
    :cond_54
    :goto_54
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_57} :catch_64

    .line 1213
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "type":I
    nop

    .line 1220
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1222
    return-object v1

    .line 1196
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "type":I
    :cond_5c
    :try_start_5c
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v7, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "theme":Landroid/content/res/Resources$Theme;
    throw v7
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_64

    .line 1206
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "type":I
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v1    # "complexColor":Landroid/content/res/ComplexColor;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "theme":Landroid/content/res/Resources$Theme;
    :catch_64
    move-exception v4

    .line 1207
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1208
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from ComplexColor resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1210
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1212
    throw v2

    .line 1215
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_90
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1216
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1218
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": .xml extension required"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1160
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_be
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert to ComplexColor: type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .registers 15
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "id"    # I

    .line 1022
    iget v0, p3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p3, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1023
    .local v0, "key":J
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 1024
    .local v2, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ComplexColor;>;"
    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ComplexColor;

    .line 1025
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v3, :cond_15

    .line 1026
    return-object v3

    .line 1029
    :cond_15
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1030
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ConstantState;

    .line 1032
    .local v5, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v5, :cond_26

    .line 1033
    invoke-virtual {v5, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/content/res/ComplexColor;

    .line 1035
    :cond_26
    if-nez v3, :cond_2c

    .line 1036
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v3

    .line 1039
    :cond_2c
    if-eqz v3, :cond_55

    .line 1040
    iget v6, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v6}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    .line 1042
    iget-boolean v6, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v6, :cond_4e

    .line 1043
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v6

    const/4 v7, 0x0

    iget v8, p3, Landroid/util/TypedValue;->resourceId:I

    const-string v9, "color"

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1045
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v4, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_55

    .line 1048
    :cond_4e
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    invoke-virtual {v2, v0, v1, p2, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 1051
    :cond_55
    :goto_55
    return-object v3
.end method

.method private greylist-max-o loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;
    .registers 16
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I

    .line 871
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a4

    .line 876
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "file":Ljava/lang/String;
    const-wide/16 v7, 0x2000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 897
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/res/ResourcesImpl$LookupStack;

    .line 900
    .local v9, "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :try_start_18
    invoke-virtual {v9, p3}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 903
    invoke-virtual {v9, p3}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_76
    .catch Ljava/lang/StackOverflowError; {:try_start_18 .. :try_end_21} :catch_76

    .line 905
    :try_start_21
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 906
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 907
    .local v10, "typeName":Ljava/lang/String;
    if-eqz v10, :cond_43

    const-string v1, "color"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 908
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadColorOrXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_4d

    .line 910
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_43
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 912
    .end local v10    # "typeName":Ljava/lang/String;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_4d
    goto :goto_5f

    .line 913
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4e
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p2, Landroid/util/TypedValue;->assetCookie:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 915
    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v1

    check-cast v2, Landroid/content/res/AssetManager$AssetInputStream;

    .line 918
    .local v2, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {p0, p1, p2, v1, p3}, Landroid/content/res/ResourcesImpl;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_5e
    .catchall {:try_start_21 .. :try_end_5e} :catchall_68

    move-object v1, v3

    .line 922
    .end local v2    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :goto_5f
    :try_start_5f
    invoke-virtual {v9}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_76
    .catch Ljava/lang/StackOverflowError; {:try_start_5f .. :try_end_62} :catch_76

    .line 923
    nop

    .line 930
    nop

    .line 931
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 933
    return-object v1

    .line 922
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_68
    move-exception v1

    :try_start_69
    invoke-virtual {v9}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    .line 923
    nop

    .end local v0    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v1

    .line 901
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :cond_6e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Recursive reference in drawable"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_76} :catch_76
    .catch Ljava/lang/StackOverflowError; {:try_start_69 .. :try_end_76} :catch_76

    .line 924
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :catch_76
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 926
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 928
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 929
    throw v2

    .line 872
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :cond_a4
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 873
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a Drawable (color or path): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 956
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 957
    const-string v1, "drawable"

    invoke-virtual {p0, p5, p3, v0, v1}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 961
    .local v0, "rp":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p4

    move-object v6, p2

    move v7, p3

    :try_start_e
    invoke-static/range {v2 .. v7}, Landroid/content/res/ResourcesImpl;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_18

    .line 963
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 961
    :cond_17
    return-object v1

    .line 955
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    throw v1
.end method

.method private greylist-max-o verifyPreloadConfig(IIILjava/lang/String;)Z
    .registers 8
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 813
    const v0, -0x40001001    # -1.9995116f

    and-int/2addr v0, p1

    not-int v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_49

    .line 817
    :try_start_8
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    .line 820
    .local v0, "resName":Ljava/lang/String;
    goto :goto_11

    .line 818
    .end local v0    # "resName":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 819
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    move-object v0, v1

    .line 823
    .local v0, "resName":Ljava/lang/String;
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resource #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that varies with configuration!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 823
    const-string v2, "Resources"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v1, 0x0

    return v1

    .line 839
    .end local v0    # "resName":Ljava/lang/String;
    :cond_49
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o calcConfigChanges(Landroid/content/res/Configuration;)I
    .registers 9
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 538
    if-nez p1, :cond_4

    .line 540
    const/4 v0, -0x1

    return v0

    .line 543
    :cond_4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 544
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 545
    .local v0, "density":I
    if-nez v0, :cond_11

    .line 546
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 550
    :cond_11
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/util/GMSDownscaleStub;->applyToConfiguration(Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/content/res/Configuration;II)Z

    move-result v1

    if-nez v1, :cond_31

    .line 551
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 555
    :cond_31
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 556
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 558
    :cond_46
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    return v1
.end method

.method public blacklist clearAllCaches()V
    .registers 3

    .line 630
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1}, Landroid/content/res/DrawableCache;->clear()V

    .line 632
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1}, Landroid/content/res/DrawableCache;->clear()V

    .line 633
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 634
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 635
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 636
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method blacklist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1532
    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1533
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_12

    .line 1535
    instance-of v1, p3, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_15

    .line 1536
    move-object v1, p3

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 1537
    .local v1, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-direct {p0, v1, p1, p2}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1538
    .end local v1    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    goto :goto_15

    .line 1541
    :cond_12
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 1543
    :cond_15
    :goto_15
    return-object v0
.end method

.method blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method greylist-max-o finishPreloading()V
    .registers 2

    .line 1304
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_a

    .line 1305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1306
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 1308
    :cond_a
    return-void
.end method

.method public greylist-max-o flushLayoutCache()V
    .registers 6

    .line 611
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 612
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 613
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 615
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 616
    .local v1, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1f

    .line 617
    aget-object v4, v1, v3

    .line 618
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_1c

    .line 619
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 616
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 622
    .end local v3    # "i":I
    :cond_1f
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 623
    .end local v1    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method greylist-max-o getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public greylist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method greylist-max-o getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method greylist-max-r getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 5

    .line 225
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 226
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 227
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 228
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "activityName":Ljava/lang/String;
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-interface {v2, v3, v1}, Lcom/miui/autoui/MIUIAutoUIStub;->getDisplayMetrics(Landroid/util/DisplayMetrics;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v2

    return-object v2

    .line 234
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "activityName":Ljava/lang/String;
    :cond_29
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method greylist-max-o getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 288
    if-eqz p1, :cond_f

    .line 292
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    .line 293
    :catch_7
    move-exception v0

    .line 296
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 289
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getLastResourceResolution()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 335
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Associated AssetManager hasn\'t resolved a resource"

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getPreloadedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 7
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "key"    # J
    .param p4, "id"    # I

    .line 1520
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1521
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_19

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1522
    const/4 v0, 0x0

    .line 1524
    :cond_19
    return-object v0
.end method

.method greylist-max-o getPreloadedDrawables()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 1319
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method greylist-max-o getQuantityText(II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    move-result-object v0

    .line 341
    .local v0, "rule":Landroid/icu/text/PluralRules;
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    int-to-double v2, p2

    .line 342
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v2

    .line 341
    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 343
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_16

    .line 344
    return-object v1

    .line 346
    :cond_16
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_22

    .line 348
    return-object v1

    .line 350
    :cond_22
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " quantity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, p2

    .line 352
    invoke-virtual {v0, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o getResourceEntryName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 327
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourceName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 303
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourcePackageName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 311
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourceTypeName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 319
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method greylist-max-r getValue(ILandroid/util/TypedValue;Z)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 262
    .local v0, "found":Z
    if-eqz v0, :cond_a

    .line 263
    return-void

    .line 265
    :cond_a
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 279
    const-string/jumbo v0, "string"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "id":I
    if-eqz v0, :cond_e

    .line 281
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 282
    return-void

    .line 284
    :cond_e
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 271
    .local v0, "found":Z
    if-eqz v0, :cond_9

    .line 272
    return-void

    .line 274
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist isPreloading()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    return v0
.end method

.method greylist-max-o loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 11
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1107
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1110
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1b

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1b

    .line 1112
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1115
    :cond_1b
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v2

    .line 1116
    .local v2, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v2, :cond_29

    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_29

    .line 1117
    move-object v3, v2

    check-cast v3, Landroid/content/res/ColorStateList;

    return-object v3

    .line 1120
    :cond_29
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1122
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method greylist-max-o loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 12
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1065
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1068
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1b

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1b

    .line 1070
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1073
    :cond_1b
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "file":Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "File "

    if-eqz v3, :cond_5b

    .line 1078
    :try_start_2b
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_31

    .line 1085
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    nop

    .line 1092
    return-object v3

    .line 1079
    .end local v3    # "complexColor":Landroid/content/res/ComplexColor;
    :catch_31
    move-exception v3

    .line 1080
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from complex color resource ID #0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1082
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 1083
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1084
    throw v4

    .line 1087
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_5b
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1089
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": .xml extension required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method greylist-max-o loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 30
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

    .line 647
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    const/4 v0, 0x1

    const/4 v9, 0x0

    if-eqz v14, :cond_1b

    iget v1, v12, Landroid/util/TypedValue;->density:I

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v1, v2, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v9

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v0

    :goto_1c
    move/from16 v16, v1

    .line 654
    .local v16, "useCache":Z
    if-lez v14, :cond_40

    iget v1, v12, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_40

    iget v1, v12, Landroid/util/TypedValue;->density:I

    const v2, 0xffff

    if-eq v1, v2, :cond_40

    .line 655
    iget v1, v12, Landroid/util/TypedValue;->density:I

    if-ne v1, v14, :cond_36

    .line 656
    iget-object v1, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v12, Landroid/util/TypedValue;->density:I

    goto :goto_40

    .line 658
    :cond_36
    iget v1, v12, Landroid/util/TypedValue;->density:I

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v2

    div-int/2addr v1, v14

    iput v1, v12, Landroid/util/TypedValue;->density:I

    .line 676
    :cond_40
    :goto_40
    :try_start_40
    iget v1, v12, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_57

    iget v1, v12, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_57

    .line 678
    const/4 v1, 0x1

    .line 679
    .local v1, "isColorDrawable":Z
    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 680
    .local v2, "caches":Landroid/content/res/DrawableCache;
    iget v3, v12, Landroid/util/TypedValue;->data:I

    int-to-long v3, v3

    move/from16 v17, v1

    move-object v7, v2

    move-wide v5, v3

    .local v3, "key":J
    goto :goto_68

    .line 682
    .end local v1    # "isColorDrawable":Z
    .end local v2    # "caches":Landroid/content/res/DrawableCache;
    .end local v3    # "key":J
    :cond_57
    const/4 v1, 0x0

    .line 683
    .restart local v1    # "isColorDrawable":Z
    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 684
    .restart local v2    # "caches":Landroid/content/res/DrawableCache;
    iget v3, v12, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, v12, Landroid/util/TypedValue;->data:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    move/from16 v17, v1

    move-object v7, v2

    move-wide v5, v3

    .line 690
    .end local v1    # "isColorDrawable":Z
    .end local v2    # "caches":Landroid/content/res/DrawableCache;
    .local v5, "key":J
    .local v7, "caches":Landroid/content/res/DrawableCache;
    .local v17, "isColorDrawable":Z
    :goto_68
    iget-boolean v1, v10, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v1, :cond_7a

    if-eqz v16, :cond_7a

    .line 691
    invoke-virtual {v7, v5, v6, v11, v15}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 692
    .local v1, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7a

    .line 693
    iget v0, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 694
    return-object v1

    .line 701
    .end local v1    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7a
    if-eqz v17, :cond_86

    .line 702
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v8, v1

    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_8b

    .line 707
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_86
    invoke-virtual {v10, v11, v5, v6, v13}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    move-object v8, v1

    .line 712
    .local v8, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_8b
    const/4 v1, 0x0

    .line 713
    .local v1, "needsNewDrawableAfterCache":Z
    if-eqz v8, :cond_93

    .line 714
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_a1

    .line 715
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_93
    if-eqz v17, :cond_9d

    .line 716
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, v12, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_a1

    .line 718
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_9d
    invoke-direct/range {p0 .. p4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 723
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_a1
    instance-of v3, v2, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_a9

    .line 724
    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_ab

    .line 723
    :cond_a9
    move/from16 v18, v1

    .line 730
    .end local v1    # "needsNewDrawableAfterCache":Z
    .local v18, "needsNewDrawableAfterCache":Z
    :goto_ab
    if-eqz v2, :cond_b4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v0, v9

    .line 731
    .local v0, "canApplyTheme":Z
    :goto_b5
    if-eqz v0, :cond_c6

    if-eqz v15, :cond_c6

    .line 732
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 733
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 734
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    move-object v4, v2

    goto :goto_c7

    .line 740
    :cond_c6
    move-object v4, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    :goto_c7
    if-eqz v4, :cond_103

    .line 741
    iget v1, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_ce} :catch_10e

    .line 742
    if-eqz v16, :cond_fa

    .line 743
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v17

    move-object/from16 v19, v4

    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .local v19, "dr":Landroid/graphics/drawable/Drawable;
    move-object v4, v7

    move-wide/from16 v20, v5

    .end local v5    # "key":J
    .local v20, "key":J
    move-object/from16 v5, p5

    move v6, v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .local v22, "caches":Landroid/content/res/DrawableCache;
    .local v23, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    move-wide/from16 v7, v20

    move v12, v9

    move-object/from16 v9, v19

    :try_start_e7
    invoke-direct/range {v1 .. v9}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    .line 744
    if-eqz v18, :cond_10b

    .line 745
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 746
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_10b

    .line 747
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f6} :catch_f8

    move-object v4, v2

    .end local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_10d

    .line 754
    .end local v0    # "canApplyTheme":Z
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v17    # "isColorDrawable":Z
    .end local v18    # "needsNewDrawableAfterCache":Z
    .end local v20    # "key":J
    .end local v22    # "caches":Landroid/content/res/DrawableCache;
    .end local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_f8
    move-exception v0

    goto :goto_110

    .line 742
    .restart local v0    # "canApplyTheme":Z
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "key":J
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    .restart local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v17    # "isColorDrawable":Z
    .restart local v18    # "needsNewDrawableAfterCache":Z
    :cond_fa
    move-object/from16 v19, v4

    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "key":J
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "key":J
    .restart local v22    # "caches":Landroid/content/res/DrawableCache;
    .restart local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_10b

    .line 740
    .end local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v20    # "key":J
    .end local v22    # "caches":Landroid/content/res/DrawableCache;
    .end local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "key":J
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    .restart local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_103
    move-object/from16 v19, v4

    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 753
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "key":J
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "key":J
    .restart local v22    # "caches":Landroid/content/res/DrawableCache;
    .restart local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_10b
    :goto_10b
    move-object/from16 v4, v19

    .end local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_10d
    return-object v4

    .line 754
    .end local v0    # "canApplyTheme":Z
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v17    # "isColorDrawable":Z
    .end local v18    # "needsNewDrawableAfterCache":Z
    .end local v20    # "key":J
    .end local v22    # "caches":Landroid/content/res/DrawableCache;
    .end local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_10e
    move-exception v0

    move v12, v9

    :goto_110
    move-object v1, v0

    .line 757
    .local v1, "e":Ljava/lang/Exception;
    :try_start_111
    invoke-virtual {v10, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_115
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_111 .. :try_end_115} :catch_116

    .line 760
    .local v0, "name":Ljava/lang/String;
    goto :goto_11c

    .line 758
    .end local v0    # "name":Ljava/lang/String;
    :catch_116
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 759
    .local v0, "e2":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(missing name)"

    move-object v0, v2

    .line 766
    .local v0, "name":Ljava/lang/String;
    :goto_11c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 767
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 768
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-array v3, v12, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 769
    throw v2
.end method

.method public greylist-max-o loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .registers 14
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 971
    const-string v0, "Resources"

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9a

    .line 976
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "file":Ljava/lang/String;
    const-string/jumbo v2, "res/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 978
    return-object v3

    .line 981
    :cond_17
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 982
    .local v2, "cached":Landroid/graphics/Typeface;
    if-eqz v2, :cond_20

    .line 983
    return-object v2

    .line 990
    :cond_20
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 992
    :try_start_25
    const-string/jumbo v6, "xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 993
    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v7, "font"

    invoke-virtual {p0, v1, p3, v6, v7}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 995
    .local v6, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 996
    invoke-static {v6, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v7
    :try_end_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_3b} :catch_79
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3b} :catch_60
    .catchall {:try_start_25 .. :try_end_3b} :catchall_5e

    .line 997
    .local v7, "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    if-nez v7, :cond_42

    .line 998
    nop

    .line 1009
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 998
    return-object v3

    .line 1000
    :cond_42
    :try_start_42
    iget-object v8, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v7, v8, v1}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_48} :catch_79
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_48} :catch_60
    .catchall {:try_start_42 .. :try_end_48} :catchall_5e

    .line 1009
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1000
    return-object v0

    .line 1002
    .end local v6    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v7    # "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    :cond_4c
    :try_start_4c
    new-instance v6, Landroid/graphics/Typeface$Builder;

    iget-object v7, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v8, 0x0

    iget v9, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v6, v7, v1, v8, v9}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 1003
    invoke-virtual {v6}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_5a} :catch_79
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5a} :catch_60
    .catchall {:try_start_4c .. :try_end_5a} :catchall_5e

    .line 1009
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1002
    return-object v0

    .line 1009
    :catchall_5e
    move-exception v0

    goto :goto_96

    .line 1006
    :catch_60
    move-exception v6

    .line 1007
    .local v6, "e":Ljava/io/IOException;
    :try_start_61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    nop

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_91

    .line 1004
    :catch_79
    move-exception v6

    .line 1005
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_61 .. :try_end_90} :catchall_5e

    .line 1009
    nop

    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_91
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    nop

    .line 1011
    return-object v3

    .line 1009
    :goto_96
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    throw v0

    .line 972
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "cached":Landroid/graphics/Typeface;
    :cond_9a
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a Font: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 14
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1239
    if-eqz p2, :cond_86

    .line 1241
    :try_start_2
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_51

    .line 1242
    :try_start_5
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 1243
    .local v1, "cachedXmlBlockCookies":[I
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 1244
    .local v2, "cachedXmlBlockFiles":[Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 1246
    .local v3, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    array-length v4, v2

    .line 1247
    .local v4, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    if-ge v5, v4, :cond_2a

    .line 1248
    aget v6, v1, v5

    if-ne v6, p3, :cond_27

    aget-object v6, v2, v5

    if-eqz v6, :cond_27

    aget-object v6, v2, v5

    .line 1249
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1250
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    monitor-exit v0

    return-object v6

    .line 1247
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1256
    .end local v5    # "i":I
    :cond_2a
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v5, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v5

    .line 1257
    .local v5, "block":Landroid/content/res/XmlBlock;
    if-eqz v5, :cond_4c

    .line 1258
    iget v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v4

    .line 1259
    .local v6, "pos":I
    iput v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 1260
    aget-object v7, v3, v6

    .line 1261
    .local v7, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v7, :cond_40

    .line 1262
    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->close()V

    .line 1264
    :cond_40
    aput p3, v1, v6

    .line 1265
    aput-object p1, v2, v6

    .line 1266
    aput-object v5, v3, v6

    .line 1267
    invoke-virtual {v5, p2}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    monitor-exit v0

    return-object v8

    .line 1269
    .end local v1    # "cachedXmlBlockCookies":[I
    .end local v2    # "cachedXmlBlockFiles":[Ljava/lang/String;
    .end local v3    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    .end local v4    # "num":I
    .end local v5    # "block":Landroid/content/res/XmlBlock;
    .end local v6    # "pos":I
    .end local v7    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_4c
    monitor-exit v0

    .line 1275
    goto :goto_86

    .line 1269
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_4e

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "assetCookie":I
    .end local p4    # "type":Ljava/lang/String;
    :try_start_50
    throw v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_51

    .line 1270
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "file":Ljava/lang/String;
    .restart local p2    # "id":I
    .restart local p3    # "assetCookie":I
    .restart local p4    # "type":Ljava/lang/String;
    :catch_51
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from xml type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1272
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1274
    throw v1

    .line 1278
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_86
    :goto_86
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from xml type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1279
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .registers 2

    .line 1323
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method greylist-max-o openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 382
    :try_start_4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 384
    :catch_14
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_29

    const-string v3, "(null)"

    goto :goto_2f

    :cond_29
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 390
    throw v1
.end method

.method greylist-max-o openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "id"    # I
    .param p2, "tempValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 371
    :try_start_4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 372
    :catch_13
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final greylist-max-o startPreloading()V
    .registers 4

    .line 1288
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1289
    :try_start_3
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    if-nez v1, :cond_18

    .line 1292
    const/4 v1, 0x1

    sput-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 1293
    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1294
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1295
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1296
    monitor-exit v0

    .line 1297
    return-void

    .line 1290
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    throw v1

    .line 1296
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 37
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 404
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "ResourcesImpl#updateConfiguration"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 406
    :try_start_d
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1a1

    .line 414
    if-eqz v3, :cond_1b

    .line 415
    :try_start_12
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_1b

    .line 519
    :catchall_18
    move-exception v0

    goto/16 :goto_19f

    .line 417
    :cond_1b
    :goto_1b
    if-eqz v2, :cond_22

    .line 418
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 429
    :cond_22
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 431
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7, v8}, Landroid/util/GMSDownscaleStub;->adapterLandscapeForDisplayMetrics(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 433
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    .line 436
    .local v0, "configChanges":I
    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 437
    .local v7, "locales":Landroid/os/LocaleList;
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 438
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v8

    move-object v7, v8

    .line 439
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 442
    :cond_52
    and-int/lit8 v8, v0, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_90

    .line 443
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, v9, :cond_90

    .line 446
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v8

    .line 447
    .local v8, "availableLocales":[Ljava/lang/String;
    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 449
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 450
    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 451
    const/4 v8, 0x0

    .line 455
    :cond_78
    if-eqz v8, :cond_90

    .line 456
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    .line 458
    .local v11, "bestLocale":Ljava/util/Locale;
    if-eqz v11, :cond_90

    invoke-virtual {v7, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    if-eq v11, v12, :cond_90

    .line 459
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v13, Landroid/os/LocaleList;

    invoke-direct {v13, v11, v7}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 465
    .end local v8    # "availableLocales":[Ljava/lang/String;
    .end local v11    # "bestLocale":Ljava/util/Locale;
    :cond_90
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v8, :cond_ab

    .line 466
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    iput v11, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 467
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v11, v11

    const v12, 0x3bcccccd    # 0.00625f

    mul-float/2addr v11, v12

    iput v11, v8, Landroid/util/DisplayMetrics;->density:F

    .line 472
    :cond_ab
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v8, Landroid/util/DisplayMetrics;->density:F

    .line 473
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_bd

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_bf

    :cond_bd
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_bf
    mul-float/2addr v11, v12

    iput v11, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 476
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v8, v11, :cond_d5

    .line 477
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 478
    .local v8, "width":I
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v11, "height":I
    goto :goto_dd

    .line 481
    .end local v8    # "width":I
    .end local v11    # "height":I
    :cond_d5
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 483
    .restart local v8    # "width":I
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 487
    .restart local v11    # "height":I
    :goto_dd
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v12, v9, :cond_ec

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_ec

    .line 490
    const/4 v9, 0x3

    .local v9, "keyboardHidden":I
    goto :goto_f0

    .line 492
    .end local v9    # "keyboardHidden":I
    :cond_ec
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 495
    .restart local v9    # "keyboardHidden":I
    :goto_f0
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->mcc:I

    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->mnc:I

    iget-object v15, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 496
    invoke-virtual {v15}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->touchscreen:I

    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    iget-object v3, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v31, v7

    .end local v7    # "locales":Landroid/os/LocaleList;
    .local v31, "locales":Landroid/os/LocaleList;
    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v32, v0

    .end local v0    # "configChanges":I
    .local v32, "configChanges":I
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v25, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v26, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v27, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v28, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->colorMode:I

    sget v30, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 495
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v10

    move/from16 v19, v2

    move/from16 v20, v9

    move/from16 v21, v3

    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v24, v7

    move/from16 v29, v0

    invoke-virtual/range {v12 .. v30}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 512
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v2, v32

    .end local v32    # "configChanges":I
    .local v2, "configChanges":I
    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 513
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 514
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 515
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 516
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 519
    .end local v2    # "configChanges":I
    .end local v8    # "width":I
    .end local v9    # "keyboardHidden":I
    .end local v11    # "height":I
    .end local v31    # "locales":Landroid/os/LocaleList;
    monitor-exit v6
    :try_end_17c
    .catchall {:try_start_12 .. :try_end_17c} :catchall_18

    .line 520
    :try_start_17c
    sget-object v2, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_1a1

    .line 521
    :try_start_17f
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_194

    .line 522
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 524
    :cond_194
    monitor-exit v2
    :try_end_195
    .catchall {:try_start_17f .. :try_end_195} :catchall_19c

    .line 526
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 527
    nop

    .line 528
    return-void

    .line 524
    :catchall_19c
    move-exception v0

    :try_start_19d
    monitor-exit v2
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :try_start_19e
    throw v0
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_1a1

    .line 519
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :goto_19f
    :try_start_19f
    monitor-exit v6
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_18

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :try_start_1a0
    throw v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1a1

    .line 526
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :catchall_1a1
    move-exception v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 527
    throw v0
.end method
