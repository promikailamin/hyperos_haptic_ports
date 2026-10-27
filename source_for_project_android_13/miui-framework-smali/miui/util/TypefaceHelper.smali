.class public Lmiui/util/TypefaceHelper;
.super Ljava/lang/Object;
.source "TypefaceHelper.java"


# static fields
.field public static final blacklist CREATE_FROM_FAMILIES:[Ljava/lang/String;

.field public static final blacklist FALLBACK_FONT:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "TypefaceHelper"

.field private static final blacklist VF_NAME:Ljava/lang/String; = "VF.ttf"

.field private static blacklist sBaseFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/util/font/FontType;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sBaseFontsItalic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/util/font/FontType;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultStyles:Ljava/lang/reflect/Field;

.field private static final blacklist sFamilyCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFontMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sFontScale:I

.field private static blacklist sIsUsingThemeFont:Z

.field private static blacklist sSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-string v0, "createFromFamilies"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceHelper;->CREATE_FROM_FAMILIES:[Ljava/lang/String;

    .line 36
    const-string v0, "fallback-font"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceHelper;->FALLBACK_FONT:[Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceHelper;->sFamilyCache:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceHelper;->sFontMap:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/TypefaceHelper;->sBaseFonts:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/TypefaceHelper;->sBaseFontsItalic:Ljava/util/Map;

    .line 50
    invoke-static {}, Lmiui/util/TypefaceHelper;->getSetDefaultMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceHelper;->sSetDefault:Ljava/lang/reflect/Method;

    .line 63
    invoke-static {}, Lmiui/util/TypefaceHelper;->getDefaultWithStyle()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceHelper;->sDefaultStyles:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist checkFallbackFont(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "tf"    # Landroid/graphics/Typeface;

    const-class v0, Lmiui/util/TypefaceHelper;

    monitor-enter v0

    .line 219
    :try_start_3
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiOptimizeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Landroid/graphics/Typeface;->fontFamilies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_5e

    .line 222
    :cond_13
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getWeight()I

    move-result v1

    .line 223
    .local v1, "weight":I
    invoke-virtual {p0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    .line 224
    .local v3, "key":I
    invoke-static {v3}, Lmiui/util/TypefaceHelper;->getCachedFont(I)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_60

    .line 225
    .local v4, "cachedFont":Landroid/graphics/Typeface;
    if-eqz v4, :cond_28

    .line 227
    if-ne p0, v4, :cond_26

    .line 228
    monitor-exit v0

    return-object v2

    .line 230
    :cond_26
    monitor-exit v0

    return-object v4

    .line 234
    :cond_28
    :try_start_28
    invoke-static {v1}, Lmiui/util/TypefaceHelper;->getIdxForSystemWeight(I)I

    move-result v2

    .line 235
    .local v2, "weightIdx":I
    const/high16 v5, -0x40800000    # -1.0f

    sget-object v6, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    invoke-static {v2, v5, v6}, Lmiui/util/font/FontWght;->getScaleWght(IFLmiui/util/font/FontType;)I

    move-result v5

    .line 236
    .local v5, "scaleWght":I
    invoke-static {p0, v5}, Lmiui/util/TypefaceHelper;->createTypeface(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 237
    .local v6, "newFont":Landroid/graphics/Typeface;
    if-eqz v6, :cond_5c

    .line 238
    iget-object v7, p0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    iput-object v7, v6, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 239
    iget-object v7, v6, Landroid/graphics/Typeface;->fontFamilies:Ljava/util/List;

    iget-object v8, p0, Landroid/graphics/Typeface;->fontFamilies:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    invoke-virtual {v6, v1}, Landroid/graphics/Typeface;->setWeight(I)V

    .line 241
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 242
    sget-object v7, Lmiui/util/TypefaceHelper;->sFontMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/graphics/Typeface;->hashCode()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_28 .. :try_end_5c} :catchall_60

    .line 245
    :cond_5c
    monitor-exit v0

    return-object v6

    .line 220
    .end local v1    # "weight":I
    .end local v2    # "weightIdx":I
    .end local v3    # "key":I
    .end local v4    # "cachedFont":Landroid/graphics/Typeface;
    .end local v5    # "scaleWght":I
    .end local v6    # "newFont":Landroid/graphics/Typeface;
    :cond_5e
    :goto_5e
    monitor-exit v0

    return-object v2

    .line 218
    .end local p0    # "tf":Landroid/graphics/Typeface;
    :catchall_60
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized blacklist clearCache()V
    .registers 2

    const-class v0, Lmiui/util/TypefaceHelper;

    monitor-enter v0

    .line 249
    :try_start_3
    sget-object v1, Lmiui/util/TypefaceHelper;->sFamilyCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 250
    sget-object v1, Lmiui/util/TypefaceHelper;->sFontMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 251
    monitor-exit v0

    return-void

    .line 248
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static blacklist clearCacheIfNeed()V
    .registers 3

    .line 313
    invoke-static {}, Lmiui/util/font/FontSettings;->getFontScale()I

    move-result v0

    .line 314
    .local v0, "curScale":I
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeFont()Z

    move-result v1

    .line 315
    .local v1, "isUsingThemeFont":Z
    sget v2, Lmiui/util/TypefaceHelper;->sFontScale:I

    if-ne v2, v0, :cond_10

    sget-boolean v2, Lmiui/util/TypefaceHelper;->sIsUsingThemeFont:Z

    if-eq v2, v1, :cond_17

    .line 316
    :cond_10
    sput-boolean v1, Lmiui/util/TypefaceHelper;->sIsUsingThemeFont:Z

    .line 317
    sput v0, Lmiui/util/TypefaceHelper;->sFontScale:I

    .line 318
    invoke-static {}, Lmiui/util/TypefaceHelper;->clearCache()V

    .line 320
    :cond_17
    return-void
.end method

.method public static declared-synchronized blacklist clearFontCache()V
    .registers 2

    const-class v0, Lmiui/util/TypefaceHelper;

    monitor-enter v0

    .line 254
    :try_start_3
    sget-object v1, Lmiui/util/TypefaceHelper;->sBaseFonts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 255
    sget-object v1, Lmiui/util/TypefaceHelper;->sBaseFontsItalic:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 256
    invoke-static {}, Lmiui/util/TypefaceHelper;->clearCache()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 257
    monitor-exit v0

    return-void

    .line 253
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "builder"    # Landroid/graphics/Typeface$CustomFallbackBuilder;
    .param p2, "fallbackName"    # Ljava/lang/String;
    .param p3, "style"    # Landroid/graphics/fonts/FontStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface$CustomFallbackBuilder;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontStyle;",
            ")",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .local p1, "families":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    const-class v0, Lmiui/util/TypefaceHelper;

    monitor-enter v0

    .line 193
    :try_start_3
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiOptimizeEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->originBuild()Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4e

    monitor-exit v0

    return-object v1

    .line 196
    :cond_f
    if-nez p3, :cond_14

    const/16 v1, 0x190

    goto :goto_18

    :cond_14
    :try_start_14
    invoke-virtual {p3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v1

    .line 197
    .local v1, "weight":I
    :goto_18
    invoke-static {v1}, Lmiui/util/TypefaceHelper;->getMiuiFontFamily(I)Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 198
    .local v2, "miuiFamily":Landroid/graphics/fonts/FontFamily;
    if-eqz v2, :cond_21

    .line 199
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_21
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->originBuild()Landroid/graphics/Typeface;

    move-result-object v3

    .line 202
    .local v3, "tf":Landroid/graphics/Typeface;
    if-eqz v2, :cond_31

    .line 203
    iget-object v4, v3, Landroid/graphics/Typeface;->fontFamilies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    iput-object p2, v3, Landroid/graphics/Typeface;->fallbackName:Ljava/lang/String;

    .line 205
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    :cond_31
    invoke-virtual {v3, v1}, Landroid/graphics/Typeface;->setWeight(I)V

    .line 208
    if-eqz p3, :cond_43

    .line 209
    invoke-virtual {p3}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    .line 210
    const/4 v4, 0x2

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    .line 209
    :goto_40
    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 212
    :cond_43
    sget-object v4, Lmiui/util/TypefaceHelper;->FALLBACK_FONT:[Ljava/lang/String;

    iput-object v4, v3, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 213
    sget-object v4, Lmiui/util/TypefaceHelper;->sFontMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_4e

    .line 214
    monitor-exit v0

    return-object v3

    .line 192
    .end local v1    # "weight":I
    .end local v2    # "miuiFamily":Landroid/graphics/fonts/FontFamily;
    .end local v3    # "tf":Landroid/graphics/Typeface;
    .end local p0    # "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    .end local p1    # "families":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    .end local p2    # "fallbackName":Ljava/lang/String;
    .end local p3    # "style":Landroid/graphics/fonts/FontStyle;
    :catchall_4e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist createFamily(Ljava/lang/String;II)Landroid/graphics/fonts/FontFamily;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "weight"    # I
    .param p2, "scaleWght"    # I

    .line 281
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 282
    .local v0, "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    const-string v1, "VF.ttf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'wght\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 286
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 287
    .local v1, "font":Landroid/graphics/fonts/Font;
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_39} :catch_3a

    return-object v2

    .line 288
    .end local v1    # "font":Landroid/graphics/fonts/Font;
    :catch_3a
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TypefaceHelper"

    const-string v3, "createFamily failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist createMiuiTypeface(ZI)Landroid/graphics/Typeface;
    .registers 9
    .param p0, "isItalic"    # Z
    .param p1, "baseWght"    # I

    .line 116
    invoke-static {}, Lmiui/util/font/FontSettings;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    .line 118
    .local v0, "localeList":Landroid/os/LocaleList;
    const/4 v1, 0x0

    .line 121
    .local v1, "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lmiui/util/font/MultiLangHelper;->getMiproFileList(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, "miproFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x190

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 124
    invoke-static {v4, v5, p1}, Lmiui/util/TypefaceHelper;->createFamily(Ljava/lang/String;II)Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    .line 125
    .local v5, "family":Landroid/graphics/fonts/FontFamily;
    if-eqz v5, :cond_3d

    .line 126
    if-nez v1, :cond_3a

    .line 127
    new-instance v6, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v6, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    move-object v1, v6

    goto :goto_3d

    .line 129
    :cond_3a
    invoke-virtual {v1, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 133
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "family":Landroid/graphics/fonts/FontFamily;
    :cond_3d
    :goto_3d
    goto :goto_12

    .line 135
    :cond_3e
    if-nez v1, :cond_42

    .line 136
    const/4 v3, 0x0

    return-object v3

    .line 138
    :cond_42
    new-instance v3, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v3, v5, p0}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->originBuild()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist createTypeface(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "baseFont"    # Landroid/graphics/Typeface;
    .param p1, "scaleWght"    # I

    .line 143
    if-eqz p0, :cond_19

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    int-to-float v3, p1

    const-string v4, "wght"

    invoke-direct {v2, v4, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 145
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 147
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized blacklist createVarFont(Lmiui/util/font/FontType;IZ)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "type"    # Lmiui/util/font/FontType;
    .param p1, "scaleWght"    # I
    .param p2, "isItalic"    # Z

    const-class v0, Lmiui/util/TypefaceHelper;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-static {p0, p2}, Lmiui/util/TypefaceHelper;->getBaseFont(Lmiui/util/font/FontType;Z)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/util/TypefaceHelper;->createTypeface(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 84
    .end local p0    # "type":Lmiui/util/font/FontType;
    .end local p1    # "scaleWght":I
    .end local p2    # "isItalic":Z
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist getBaseFont(Lmiui/util/font/FontType;Z)Landroid/graphics/Typeface;
    .registers 9
    .param p0, "type"    # Lmiui/util/font/FontType;
    .param p1, "isItalic"    # Z

    .line 88
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeFont()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 89
    .local v0, "usingCache":Z
    const/4 v1, 0x0

    .line 90
    .local v1, "baseFont":Landroid/graphics/Typeface;
    if-eqz v0, :cond_17

    .line 91
    if-eqz p1, :cond_e

    sget-object v2, Lmiui/util/TypefaceHelper;->sBaseFontsItalic:Ljava/util/Map;

    goto :goto_10

    :cond_e
    sget-object v2, Lmiui/util/TypefaceHelper;->sBaseFonts:Ljava/util/Map;

    :goto_10
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    move-object v1, v2

    .line 93
    :cond_17
    if-nez v1, :cond_64

    if-eqz p0, :cond_64

    .line 94
    const/4 v2, 0x4

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3, p0}, Lmiui/util/font/FontWght;->getScaleWght(IFLmiui/util/font/FontType;)I

    move-result v2

    .line 95
    .local v2, "baseWght":I
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeFont()Z

    move-result v3

    if-nez v3, :cond_35

    sget-boolean v3, Lmiui/util/font/FontSettings;->HAS_MIUI_VAR_FONT:Z

    if-eqz v3, :cond_35

    sget-object v3, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    if-ne p0, v3, :cond_35

    .line 96
    invoke-static {p1, v2}, Lmiui/util/TypefaceHelper;->createMiuiTypeface(ZI)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_53

    .line 98
    :cond_35
    invoke-static {p0}, Lmiui/util/TypefaceHelper;->getFontPath(Lmiui/util/font/FontType;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x190

    invoke-static {v3, v4, v2}, Lmiui/util/TypefaceHelper;->createFamily(Ljava/lang/String;II)Landroid/graphics/fonts/FontFamily;

    move-result-object v3

    .line 99
    .local v3, "family":Landroid/graphics/fonts/FontFamily;
    if-eqz v3, :cond_53

    .line 100
    new-instance v5, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v5, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v4, p1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->originBuild()Landroid/graphics/Typeface;

    move-result-object v1

    .line 103
    .end local v3    # "family":Landroid/graphics/fonts/FontFamily;
    :cond_53
    :goto_53
    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 104
    if-nez p1, :cond_5f

    .line 105
    sget-object v3, Lmiui/util/TypefaceHelper;->sBaseFonts:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 107
    :cond_5f
    sget-object v3, Lmiui/util/TypefaceHelper;->sBaseFontsItalic:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v2    # "baseWght":I
    :cond_64
    :goto_64
    return-object v1
.end method

.method private static blacklist getCachedFamily(I)Landroid/graphics/fonts/FontFamily;
    .registers 2
    .param p0, "weightIdx"    # I

    .line 303
    invoke-static {}, Lmiui/util/TypefaceHelper;->clearCacheIfNeed()V

    .line 304
    sget-object v0, Lmiui/util/TypefaceHelper;->sFamilyCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/FontFamily;

    return-object v0
.end method

.method private static blacklist getCachedFont(I)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "key"    # I

    .line 308
    invoke-static {}, Lmiui/util/TypefaceHelper;->clearCacheIfNeed()V

    .line 309
    sget-object v0, Lmiui/util/TypefaceHelper;->sFontMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static blacklist getDefaultWithStyle()Ljava/lang/reflect/Field;
    .registers 3

    .line 67
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "sDefaults"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 69
    return-object v0

    .line 70
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_d
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TypefaceHelper"

    const-string v2, "TypefaceHelper.getDefaultWithStyle failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getFontPath(Lmiui/util/font/FontType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Lmiui/util/font/FontType;

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeFont()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 325
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeVF()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 326
    const-string v0, "/data/system/theme/fonts/MI_Theme_VF.ttf"

    goto :goto_31

    .line 328
    :cond_10
    const-string v0, "/data/system/theme/fonts/Roboto-Regular.ttf"

    goto :goto_31

    .line 330
    :cond_13
    sget-boolean v1, Lmiui/util/font/FontSettings;->HAS_MIUI_VAR_FONT:Z

    if-eqz v1, :cond_31

    .line 331
    sget-object v1, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    if-ne p0, v1, :cond_24

    .line 332
    invoke-static {}, Lmiui/util/font/FontSettings;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/font/MultiLangHelper;->getMiuiFontPathByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 333
    :cond_24
    sget-object v1, Lmiui/util/font/FontType;->MITYPE_MONO:Lmiui/util/font/FontType;

    if-ne p0, v1, :cond_2b

    .line 334
    const-string v0, "/system/fonts/MitypeMonoVF.ttf"

    goto :goto_31

    .line 335
    :cond_2b
    sget-object v1, Lmiui/util/font/FontType;->MITYPE:Lmiui/util/font/FontType;

    if-ne p0, v1, :cond_31

    .line 336
    const-string v0, "/system/fonts/MitypeVF.ttf"

    .line 339
    :cond_31
    :goto_31
    return-object v0
.end method

.method private static blacklist getIdxForSystemWeight(I)I
    .registers 3
    .param p0, "weight"    # I

    .line 295
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 296
    :cond_6
    const/16 v1, 0x15e

    if-lt p0, v0, :cond_e

    if-ge p0, v1, :cond_e

    const/4 v0, 0x2

    return v0

    .line 297
    :cond_e
    const/16 v0, 0x1f4

    if-lt p0, v1, :cond_16

    if-ge p0, v0, :cond_16

    const/4 v0, 0x4

    return v0

    .line 298
    :cond_16
    if-lt p0, v0, :cond_1e

    const/16 v0, 0x320

    if-ge p0, v0, :cond_1e

    const/4 v0, 0x5

    return v0

    .line 299
    :cond_1e
    const/16 v0, 0x9

    return v0
.end method

.method private static blacklist getMiuiFontFamily(I)Landroid/graphics/fonts/FontFamily;
    .registers 6
    .param p0, "weight"    # I

    .line 260
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiOptimizeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 261
    return-object v1

    .line 263
    :cond_8
    sget-object v0, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    invoke-static {v0}, Lmiui/util/TypefaceHelper;->getFontPath(Lmiui/util/font/FontType;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 265
    return-object v1

    .line 267
    :cond_11
    invoke-static {p0}, Lmiui/util/TypefaceHelper;->getIdxForSystemWeight(I)I

    move-result v1

    .line 268
    .local v1, "weightIdx":I
    invoke-static {v1}, Lmiui/util/TypefaceHelper;->getCachedFamily(I)Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 269
    .local v2, "family":Landroid/graphics/fonts/FontFamily;
    if-eqz v2, :cond_1c

    .line 270
    return-object v2

    .line 272
    :cond_1c
    const/high16 v3, -0x40800000    # -1.0f

    sget-object v4, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    .line 273
    invoke-static {v1, v3, v4}, Lmiui/util/font/FontWght;->getScaleWght(IFLmiui/util/font/FontType;)I

    move-result v3

    .line 272
    invoke-static {v0, p0, v3}, Lmiui/util/TypefaceHelper;->createFamily(Ljava/lang/String;II)Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_2f

    .line 275
    sget-object v3, Lmiui/util/TypefaceHelper;->sFamilyCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    :cond_2f
    return-object v2
.end method

.method private static blacklist getSetDefaultMethod()Ljava/lang/reflect/Method;
    .registers 6

    .line 54
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "setDefault"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Typeface;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 56
    return-object v0

    .line 57
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_14
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TypefaceHelper"

    const-string v2, "TypefaceHelper.getSetDefaultMethod failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getTypefaceDefaults()[Landroid/graphics/Typeface;
    .registers 4

    .line 163
    sget-object v0, Lmiui/util/TypefaceHelper;->sDefaultStyles:Ljava/lang/reflect/Field;

    const-string v1, "TypefaceHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 164
    const-string v0, "TypefaceHelper.getTypefaceDefaults, sDefaultStyles is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v2

    .line 168
    :cond_d
    :try_start_d
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Typeface;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    .line 169
    :catch_14
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TypefaceHelper.getTypefaceDefaults failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public static blacklist isMiuiFontName(Ljava/lang/String;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    const-string v0, "mipro"

    const-string v1, "miui"

    const-string v2, "mitype"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist updateDefaultFont(Landroid/graphics/Typeface;)V
    .registers 6
    .param p0, "defaultFont"    # Landroid/graphics/Typeface;

    .line 176
    invoke-static {}, Lmiui/util/TypefaceHelper;->clearCache()V

    .line 177
    sget-object v0, Lmiui/util/TypefaceHelper;->sSetDefault:Ljava/lang/reflect/Method;

    const-string v1, "TypefaceHelper"

    if-nez v0, :cond_f

    .line 178
    const-string v0, "TypefaceHelper.updateDefaultFont, sSetDefault is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_11
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    .line 185
    goto :goto_20

    .line 183
    :catch_1a
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TypefaceHelper.updateDefaultFont failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public static blacklist updateDefaultWithStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .registers 9
    .param p0, "normal"    # Landroid/graphics/Typeface;
    .param p1, "bold"    # Landroid/graphics/Typeface;
    .param p2, "italic"    # Landroid/graphics/Typeface;
    .param p3, "italicBold"    # Landroid/graphics/Typeface;

    .line 151
    sget-object v0, Lmiui/util/TypefaceHelper;->sDefaultStyles:Ljava/lang/reflect/Field;

    const-string v1, "TypefaceHelper"

    if-nez v0, :cond_c

    .line 152
    const-string v0, "TypefaceHelper.updateDefaultWithStyle, sDefaultStyles is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 156
    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_e
    new-array v3, v3, [Landroid/graphics/Typeface;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    .line 159
    goto :goto_26

    .line 157
    :catch_20
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TypefaceHelper.updateDefaultWithStyle failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method
