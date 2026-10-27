.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$CustomFallbackBuilder;,
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$Style;
    }
.end annotation


# static fields
.field public static final whitelist BOLD:I = 0x1

.field public static final whitelist BOLD_ITALIC:I = 0x3

.field public static final whitelist DEFAULT:Landroid/graphics/Typeface;

.field public static final whitelist DEFAULT_BOLD:Landroid/graphics/Typeface;

.field public static final greylist-max-o DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final greylist-max-o EMPTY_AXES:[I

.field public static final blacklist ENABLE_LAZY_TYPEFACE_INITIALIZATION:Z = true

.field public static final whitelist ITALIC:I = 0x2

.field public static final whitelist MONOSPACE:Landroid/graphics/Typeface;

.field public static final whitelist NORMAL:I = 0x0

.field public static final greylist-max-o RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final whitelist SANS_SERIF:Landroid/graphics/Typeface;

.field public static final whitelist SERIF:Landroid/graphics/Typeface;

.field private static final greylist-max-o STYLE_ITALIC:I = 0x1

.field public static final greylist-max-o STYLE_MASK:I = 0x3

.field private static final greylist-max-o STYLE_NORMAL:I

.field private static final blacklist SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

.field private static greylist-max-o TAG:Ljava/lang/String;

.field static greylist-max-o sDefaultTypeface:Landroid/graphics/Typeface;

.field static greylist sDefaults:[Landroid/graphics/Typeface;

.field private static final greylist-max-o sDynamicCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final greylist-max-o sStyledCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStyledTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field static greylist sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static greylist sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

.field static blacklist sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

.field private static final greylist-max-o sWeightCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sWeightTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist fallbackName:Ljava/lang/String;

.field public blacklist familyName:[Ljava/lang/String;

.field public blacklist fontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCleaner:Ljava/lang/Runnable;

.field private greylist mStyle:I

.field private greylist-max-o mSupportedAxes:[I

.field private greylist-max-o mWeight:I

.field public final greylist native_instance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I
    .registers 1

    iget p0, p0, Landroid/graphics/Typeface;->mStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I
    .registers 1

    iget p0, p0, Landroid/graphics/Typeface;->mWeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDefault()Landroid/graphics/Typeface;
    .registers 1

    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 1

    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromArray([JJII)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 87
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 92
    const-class v0, Landroid/graphics/Typeface;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v1

    .line 93
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 97
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 103
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 105
    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 107
    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 109
    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 125
    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    .line 127
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    .line 133
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    .line 141
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    .line 156
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 159
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 160
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    .line 251
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 1556
    const-string v0, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1557
    const-string v0, "/system/fonts/RobotoStatic-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1559
    const-string/jumbo v0, "persist.sys.locale"

    const-string v1, "en-US"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, "script":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v2

    .line 1563
    .local v2, "config":Landroid/text/FontConfig;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8d
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f4

    .line 1564
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 1565
    .local v4, "family":Landroid/text/FontConfig$FontFamily;
    const/4 v5, 0x0

    .line 1566
    .local v5, "loadFamily":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_a3
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_cc

    .line 1567
    nop

    .line 1568
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1567
    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1568
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 1569
    .local v7, "fontScript":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1570
    if-eqz v5, :cond_c9

    .line 1571
    goto :goto_cc

    .line 1566
    .end local v7    # "fontScript":Ljava/lang/String;
    :cond_c9
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    .line 1574
    .end local v6    # "j":I
    :cond_cc
    :goto_cc
    if-eqz v5, :cond_f1

    .line 1575
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_cf
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f1

    .line 1576
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1575
    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    .line 1563
    .end local v4    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "loadFamily":Z
    .end local v6    # "j":I
    :cond_f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 1619
    .end local v0    # "locale":Ljava/lang/String;
    .end local v1    # "script":Ljava/lang/String;
    .end local v2    # "config":Landroid/text/FontConfig;
    .end local v3    # "i":I
    :cond_f4
    return-void
.end method

.method private constructor greylist-max-p <init>(J)V
    .registers 5
    .param p1, "ni"    # J

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface;->fontFamilies:Ljava/util/List;

    .line 1310
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_27

    .line 1314
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1315
    sget-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    .line 1316
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 1317
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 1318
    return-void

    .line 1311
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(JLandroid/graphics/Typeface-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static whitelist create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .line 980
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_5

    .line 981
    const/4 p1, 0x0

    .line 983
    :cond_5
    if-nez p0, :cond_b

    .line 984
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 988
    :cond_b
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1e

    .line 991
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0, p0, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v0

    .line 992
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1c

    move-object v1, v0

    goto :goto_1d

    :cond_1c
    move-object v1, p0

    :goto_1d
    return-object v1

    .line 996
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_1e
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 999
    .local v2, "ni":J
    sget-object v0, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_23
    sget-object v4, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1002
    .local v5, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v5, :cond_38

    .line 1003
    new-instance v6, Landroid/util/SparseArray;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    move-object v5, v6

    .line 1004
    invoke-virtual {v4, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_56

    .line 1006
    :cond_38
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 1007
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_56

    .line 1009
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1010
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v6

    invoke-interface {v6, v4, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1012
    :cond_54
    monitor-exit v0

    return-object v4

    .line 1018
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_56
    :goto_56
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v4

    invoke-interface {v4, p0, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1019
    .local v1, "font":Landroid/graphics/Typeface;
    new-instance v4, Landroid/graphics/Typeface;

    if-eqz v1, :cond_65

    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_66

    :cond_65
    move-wide v6, v2

    :goto_66
    invoke-static {v6, v7, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1021
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->setFontNameAndStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 1023
    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1024
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v5    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v0

    .line 1025
    return-object v4

    .line 1024
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_23 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public static whitelist create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 1065
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string/jumbo v2, "weight"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1066
    if-nez p0, :cond_f

    .line 1067
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 1069
    :cond_f
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .line 959
    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 1151
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1155
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_12

    return-object v0

    .line 1157
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1158
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1f

    .line 1160
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_1b
    nop

    .line 1162
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 1158
    :catch_1f
    move-exception v1

    .line 1159
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1218
    array-length v0, p0

    new-array v0, v0, [J

    .line 1219
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 1220
    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1226
    .end local v1    # "i":I
    :cond_10
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1229
    .local v1, "tf":Landroid/graphics/Typeface;
    invoke-static {v1}, Landroid/graphics/Typeface;->setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V

    .line 1230
    return-object v1
.end method

.method private static blacklist createFromFamilies([Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "families"    # [Landroid/graphics/fonts/FontFamily;

    .line 1240
    array-length v0, p0

    new-array v0, v0, [J

    .line 1241
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1242
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1241
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1247
    .end local v1    # "i":I
    :cond_12
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1249
    .local v1, "tf":Landroid/graphics/Typeface;
    invoke-static {v1}, Landroid/graphics/Typeface;->setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V

    .line 1250
    return-object v1
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "weight"    # I
    .param p2, "italic"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1263
    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .registers 9
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "fallbackName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1285
    invoke-static {p1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1286
    .local v0, "fallbackTypeface":Landroid/graphics/Typeface;
    array-length v1, p0

    new-array v1, v1, [J

    .line 1287
    .local v1, "ptrArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 1288
    aget-object v3, p0, v2

    iget-wide v3, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v3, v1, v2

    .line 1287
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1293
    .end local v2    # "i":I
    :cond_14
    new-instance v2, Landroid/graphics/Typeface;

    iget-wide v3, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v3, v4, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1295
    .local v2, "tf":Landroid/graphics/Typeface;
    invoke-static {v2}, Landroid/graphics/Typeface;->setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V

    .line 1296
    return-object v2
.end method

.method public static whitelist createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 1187
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1188
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_c

    return-object v0

    .line 1191
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1195
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 1192
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 1205
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 14
    .param p0, "entry"    # Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 330
    instance-of v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    .line 331
    move-object v0, p0

    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 333
    .local v0, "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "systemFontFamilyName":Ljava/lang/String;
    if-eqz v2, :cond_19

    invoke-static {v2}, Landroid/graphics/Typeface;->hasFontFamily(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 335
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 338
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v3

    .line 339
    .local v3, "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz v3, :cond_53

    .line 341
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_53

    .line 342
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 343
    .local v6, "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v7, "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_37
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4d

    .line 345
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 347
    .end local v8    # "j":I
    :cond_4d
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v6    # "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 352
    .end local v5    # "i":I
    :cond_53
    new-instance v1, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7, v4}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 354
    .local v1, "request":Landroid/provider/FontRequest;
    invoke-static {v1}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 355
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_6d

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6e

    :cond_6d
    move-object v6, v5

    :goto_6e
    return-object v6

    .line 358
    .end local v0    # "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    .end local v1    # "request":Landroid/provider/FontRequest;
    .end local v2    # "systemFontFamilyName":Ljava/lang/String;
    .end local v3    # "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_6f
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 359
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_76

    return-object v0

    .line 362
    :cond_76
    move-object v2, p0

    check-cast v2, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 365
    .local v2, "filesEntry":Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    const/4 v3, 0x0

    .line 366
    .local v3, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :try_start_7a
    invoke-virtual {v2}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_80
    if-ge v6, v5, :cond_d4

    aget-object v7, v4, v6

    .line 367
    .local v7, "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9, v1, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 369
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 370
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 371
    .local v8, "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_ab

    .line 372
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 374
    :cond_ab
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    if-eq v9, v10, :cond_bd

    .line 375
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b9

    .line 376
    goto :goto_ba

    :cond_b9
    move v10, v1

    .line 375
    :goto_ba
    invoke-virtual {v8, v10}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 379
    :cond_bd
    if-nez v3, :cond_ca

    .line 380
    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v9

    goto :goto_d1

    .line 382
    :cond_ca
    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 366
    .end local v7    # "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .end local v8    # "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    :goto_d1
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 385
    :cond_d4
    if-nez v3, :cond_d9

    .line 386
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 388
    :cond_d9
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    .line 389
    .local v4, "family":Landroid/graphics/fonts/FontFamily;
    new-instance v5, Landroid/graphics/fonts/FontStyle;

    const/16 v6, 0x190

    invoke-direct {v5, v6, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 391
    .local v5, "normal":Landroid/graphics/fonts/FontStyle;
    invoke-virtual {v4, v1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 392
    .local v1, "bestFont":Landroid/graphics/fonts/Font;
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v6

    .line 393
    .local v6, "bestScore":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_f1
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_10a

    .line 394
    invoke-virtual {v4, v7}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v8

    .line 395
    .local v8, "candidate":Landroid/graphics/fonts/Font;
    invoke-virtual {v8}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v9

    .line 396
    .local v9, "score":I
    if-ge v9, v6, :cond_107

    .line 397
    move-object v1, v8

    .line 398
    move v6, v9

    .line 393
    .end local v8    # "candidate":Landroid/graphics/fonts/Font;
    .end local v9    # "score":I
    :cond_107
    add-int/lit8 v7, v7, 0x1

    goto :goto_f1

    .line 401
    .end local v7    # "i":I
    :cond_10a
    new-instance v7, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v7, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 402
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v7

    .line 403
    invoke-virtual {v7}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_11b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_11b} :catch_13d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_11b} :catch_11e

    move-object v0, v7

    .line 410
    .end local v1    # "bestFont":Landroid/graphics/fonts/Font;
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v4    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v5    # "normal":Landroid/graphics/fonts/FontStyle;
    .end local v6    # "bestScore":I
    move-object v1, v0

    goto :goto_122

    .line 408
    :catch_11e
    move-exception v1

    .line 409
    .local v1, "e":Ljava/io/IOException;
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v1, v0

    .line 411
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .local v1, "typeface":Landroid/graphics/Typeface;
    :goto_122
    sget-object v3, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 412
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :try_start_129
    const-string/jumbo v10, "sans-serif"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    nop

    .end local v0    # "key":Ljava/lang/String;
    monitor-exit v3

    .line 417
    return-object v1

    .line 416
    :catchall_13a
    move-exception v0

    monitor-exit v3
    :try_end_13c
    .catchall {:try_start_129 .. :try_end_13c} :catchall_13a

    throw v0

    .line 404
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .local v0, "typeface":Landroid/graphics/Typeface;
    :catch_13d
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public static greylist-max-o createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .line 1123
    .local p1, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-nez p0, :cond_5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_5
    move-object v0, p0

    .line 1126
    .local v0, "base":Landroid/graphics/Typeface;
    :goto_6
    new-instance v1, Landroid/graphics/Typeface;

    iget-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1127
    .local v1, "tf":Landroid/graphics/Typeface;
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v2

    invoke-interface {v2, p0, v1, p1}, Landroid/graphics/FontManagerStub;->onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V

    .line 1128
    return-object v1
.end method

.method private static greylist-max-o createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 11
    .param p0, "base"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 1074
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    .line 1078
    .local v0, "key":I
    if-eqz p2, :cond_7

    const/4 v1, 0x2

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 1079
    .local v1, "style":I
    :goto_8
    sget-object v2, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1080
    :try_start_b
    sget-object v3, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1081
    .local v4, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v4, :cond_24

    .line 1082
    new-instance v5, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v4, v5

    .line 1083
    iget-wide v5, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_42

    .line 1085
    :cond_24
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 1086
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_42

    .line 1088
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1089
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v5

    invoke-interface {v5, v3, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;

    move-result-object v5

    monitor-exit v2

    return-object v5

    .line 1091
    :cond_40
    monitor-exit v2

    return-object v3

    .line 1098
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_42
    :goto_42
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v3

    invoke-interface {v3, p0, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;

    move-result-object v3

    .line 1099
    .local v3, "font":Landroid/graphics/Typeface;
    new-instance v5, Landroid/graphics/Typeface;

    .line 1100
    if-eqz v3, :cond_51

    iget-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_53

    :cond_51
    iget-wide v6, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1099
    :goto_53
    invoke-static {v6, v7, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1101
    .local v5, "typeface":Landroid/graphics/Typeface;
    invoke-static {v5, v3}, Landroid/graphics/Typeface;->setFontNameAndStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 1103
    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1104
    .end local v3    # "font":Landroid/graphics/Typeface;
    .end local v4    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v2

    .line 1105
    return-object v5

    .line 1104
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :catchall_62
    move-exception v3

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_62

    throw v3
.end method

.method public static whitelist defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "style"    # I

    .line 1138
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1139
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, p0

    monitor-exit v0

    return-object v1

    .line 1140
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static blacklist deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J
    .registers 13
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1426
    .local p1, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1427
    .local v0, "typefacesBytesCount":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeReadTypefaces(Ljava/nio/ByteBuffer;)[J

    move-result-object v1

    .line 1428
    .local v1, "nativePtrs":[J
    if-eqz v1, :cond_3b

    .line 1431
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1432
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1433
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_3a

    aget-wide v5, v1, v4

    .line 1434
    .local v5, "nativePtr":J
    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 1437
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Landroid/graphics/Typeface;

    invoke-direct {v8, v5, v6}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1438
    .local v8, "typeface":Landroid/graphics/Typeface;
    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v9

    .line 1439
    .local v9, "familyName":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    aput-object v9, v10, v3

    iput-object v10, v8, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 1440
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    .end local v5    # "nativePtr":J
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    .end local v9    # "familyName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1443
    :cond_3a
    return-object v1

    .line 1429
    :cond_3b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not read typefaces"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist destroySystemFontMap()V
    .registers 4

    .line 1593
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1594
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1595
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v3, v2, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1596
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    goto :goto_d

    .line 1597
    :cond_1f
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1598
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2b

    .line 1599
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1601
    :cond_2b
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1602
    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1603
    monitor-exit v0

    .line 1604
    return-void

    .line 1603
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public static greylist-max-o findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 425
    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_7
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 430
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_1c

    .line 431
    monitor-exit v0

    return-object v2

    .line 433
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_1c
    monitor-exit v0

    .line 434
    const/4 v0, 0x0

    return-object v0

    .line 433
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static blacklist getDefault()Landroid/graphics/Typeface;
    .registers 2

    .line 267
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    .line 269
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;

    .line 1321
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 1322
    .local v0, "tf":Landroid/graphics/Typeface;
    if-nez v0, :cond_d

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public static blacklist getSystemFontMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 1469
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1470
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 1471
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getSystemFontMapSharedMemory()Landroid/os/SharedMemory;
    .registers 1

    .line 189
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method private static blacklist hasFontFamily(Ljava/lang/String;)Z
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;

    .line 317
    const-string v0, "familyName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_8
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 320
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static blacklist initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1330
    .local p0, "fallbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .local p1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    .local p2, "outSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1333
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/fonts/FontFamily;

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1334
    .local v4, "tf":Landroid/graphics/Typeface;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1335
    .local v5, "name":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/graphics/FontManagerStub;->isMiuiFontName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1336
    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v2

    iput-object v3, v4, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    goto :goto_50

    .line 1338
    :cond_37
    new-array v3, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fallback-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iput-object v3, v4, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 1340
    :goto_50
    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .end local v4    # "tf":Landroid/graphics/Typeface;
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_8

    .line 1344
    :cond_54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a3

    .line 1345
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/FontConfig$Alias;

    .line 1346
    .local v1, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1347
    goto :goto_a0

    .line 1349
    :cond_6c
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 1350
    .local v4, "base":Landroid/graphics/Typeface;
    if-nez v4, :cond_79

    .line 1353
    goto :goto_a0

    .line 1355
    :cond_79
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v5

    .line 1356
    .local v5, "weight":I
    const/16 v6, 0x190

    if-ne v5, v6, :cond_83

    move-object v6, v4

    goto :goto_8e

    .line 1357
    :cond_83
    new-instance v6, Landroid/graphics/Typeface;

    iget-wide v7, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v7, v8, v5}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Landroid/graphics/Typeface;-><init>(J)V

    :goto_8e
    nop

    .line 1359
    .local v6, "newFace":Landroid/graphics/Typeface;
    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    iput-object v7, v6, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 1360
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    .end local v1    # "alias":Landroid/text/FontConfig$Alias;
    .end local v4    # "base":Landroid/graphics/Typeface;
    .end local v5    # "weight":I
    .end local v6    # "newFace":Landroid/graphics/Typeface;
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1362
    .end local v0    # "i":I
    :cond_a3
    return-void
.end method

.method public static blacklist loadPreinstalledSystemFontMap()V
    .registers 3

    .line 1608
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    .line 1609
    .local v0, "fontConfig":Landroid/text/FontConfig;
    invoke-static {v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v1

    .line 1610
    .local v1, "fallback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    nop

    .line 1611
    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1612
    .local v2, "typefaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V

    .line 1613
    return-void
.end method

.method private static native blacklist nativeAddFontCollections(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-r nativeCreateFromArray([JJII)J
.end method

.method private static native greylist-max-o nativeCreateFromTypeface(JI)J
.end method

.method private static native greylist-max-o nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native greylist-max-o nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native greylist nativeCreateWeightAlias(JI)J
.end method

.method private static native blacklist nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V
.end method

.method private static native blacklist nativeGetFamily(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetFamilySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSupportedAxes(J)[I
.end method

.method private static native greylist-max-o nativeGetWeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReadTypefaces(Ljava/nio/ByteBuffer;)[J
.end method

.method private static native blacklist nativeRegisterGenericFamily(Ljava/lang/String;J)V
.end method

.method private static native greylist-max-o nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWarmUpCache(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I
.end method

.method private static blacklist preloadFontFile(Ljava/lang/String;)V
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1583
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1585
    sget-object v1, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeWarmUpCache(Ljava/lang/String;)V

    .line 1588
    :cond_2a
    return-void
.end method

.method private static blacklist readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1447
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1448
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1449
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1450
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static blacklist registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1366
    if-eqz p1, :cond_7

    .line 1367
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p0, v0, v1}, Landroid/graphics/Typeface;->nativeRegisterGenericFamily(Ljava/lang/String;J)V

    .line 1369
    :cond_7
    return-void
.end method

.method public static blacklist serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/os/SharedMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1379
    .local p0, "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1381
    .local v0, "nativePtrs":[J
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1382
    .local v1, "namesBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 1383
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1384
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Typeface;

    iget-wide v7, v7, Landroid/graphics/Typeface;->native_instance:J

    aput-wide v7, v0, v2

    .line 1385
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1387
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1388
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_4b

    iget-object v7, v2, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    if-eqz v7, :cond_4b

    array-length v8, v7

    if-lez v8, :cond_4b

    .line 1389
    aget-object v5, v7, v5

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_54

    .line 1391
    :cond_4b
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1394
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :goto_54
    move v2, v6

    goto :goto_14

    .line 1395
    .end local v6    # "i":I
    .local v2, "i":I
    :cond_56
    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I

    move-result v3

    .line 1397
    .local v3, "typefacesBytesCount":I
    add-int/lit8 v4, v3, 0x4

    .line 1398
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v4, v6

    .line 1397
    const-string v6, "fontMap"

    invoke-static {v6, v4}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v4

    .line 1399
    .local v4, "sharedMemory":Landroid/os/SharedMemory;
    invoke-virtual {v4}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1401
    .local v6, "writableBuffer":Ljava/nio/ByteBuffer;
    :try_start_72
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1402
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I

    move-result v7

    .line 1403
    .local v7, "writtenBytesCount":I
    if-ne v7, v3, :cond_99

    .line 1407
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1408
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_8e
    .catchall {:try_start_72 .. :try_end_8e} :catchall_b5

    .line 1410
    nop

    .end local v7    # "writtenBytesCount":I
    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1411
    nop

    .line 1412
    sget v5, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v4, v5}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 1413
    return-object v4

    .line 1404
    .restart local v7    # "writtenBytesCount":I
    :cond_99
    :try_start_99
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unexpected bytes written: %d, expected: %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 1405
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    .line 1404
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nativePtrs":[J
    .end local v1    # "namesBytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "typefacesBytesCount":I
    .end local v4    # "sharedMemory":Landroid/os/SharedMemory;
    .end local v6    # "writableBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    throw v8
    :try_end_b5
    .catchall {:try_start_99 .. :try_end_b5} :catchall_b5

    .line 1410
    .end local v7    # "writtenBytesCount":I
    .restart local v0    # "nativePtrs":[J
    .restart local v1    # "namesBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "typefacesBytesCount":I
    .restart local v4    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v6    # "writableBuffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catchall_b5
    move-exception v5

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1411
    throw v5
.end method

.method private static greylist-max-p setDefault(Landroid/graphics/Typeface;)V
    .registers 4
    .param p0, "t"    # Landroid/graphics/Typeface;

    .line 260
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 262
    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static blacklist setFontNameAndStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .registers 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "replacedFont"    # Landroid/graphics/Typeface;

    .line 1112
    if-eqz p1, :cond_14

    .line 1113
    iget-object v0, p1, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 1114
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1115
    iget v0, p1, Landroid/graphics/Typeface;->mStyle:I

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 1118
    :cond_14
    return-void
.end method

.method private static blacklist setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V
    .registers 2
    .param p0, "tf"    # Landroid/graphics/Typeface;

    .line 1304
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->getCreateFromFamilyName()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 1305
    return-void
.end method

.method public static blacklist setSystemFontMap(Landroid/os/SharedMemory;)V
    .registers 9
    .param p0, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1482
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    .line 1485
    if-eqz p0, :cond_13

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    if-ne p0, v0, :cond_b

    goto :goto_13

    .line 1488
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Once set, buffer-based system font map cannot be updated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1486
    :cond_13
    :goto_13
    return-void

    .line 1491
    :cond_14
    sput-object p0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1492
    const-wide/16 v0, 0x2

    const-string/jumbo v2, "setSystemFontMap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1494
    if-nez p0, :cond_27

    .line 1497
    :try_start_20
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_52

    .line 1511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1498
    return-void

    .line 1500
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1501
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1502
    .local v2, "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J

    move-result-object v3

    .line 1506
    .local v3, "nativePtrs":[J
    array-length v4, v3

    const/4 v5, 0x0

    :goto_40
    if-ge v5, v4, :cond_4a

    aget-wide v6, v3, v5

    .line 1507
    .local v6, "ptr":J
    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    .line 1506
    .end local v6    # "ptr":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 1509
    :cond_4a
    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_52

    .line 1511
    .end local v2    # "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v3    # "nativePtrs":[J
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    nop

    .line 1513
    return-void

    .line 1511
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    throw v2
.end method

.method public static blacklist setSystemFontMap(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1518
    .local p0, "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1519
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1520
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1523
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1524
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1529
    :cond_26
    const-string v1, "DEFAULT"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1530
    const-string v1, "DEFAULT_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1531
    const-string v1, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1532
    const-string v1, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1533
    const-string v1, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1535
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1538
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v1, v4

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1539
    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1544
    const-string/jumbo v5, "serif"

    const-string/jumbo v6, "sans-serif"

    const-string v7, "cursive"

    const-string v8, "fantasy"

    const-string/jumbo v9, "monospace"

    const-string/jumbo v10, "system-ui"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, "genericFamilies":[Ljava/lang/String;
    array-length v2, v1

    :goto_99
    if-ge v3, v2, :cond_a9

    aget-object v4, v1, v3

    .line 1549
    .local v4, "genericFamily":Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1548
    .end local v4    # "genericFamily":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 1551
    .end local v1    # "genericFamilies":[Ljava/lang/String;
    :cond_a9
    monitor-exit v0

    .line 1552
    return-void

    .line 1551
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method private static blacklist writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3
    .param p0, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 1461
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1462
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1463
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1464
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1465
    return-void
.end method

.method private static blacklist writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 4
    .param p0, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1454
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1455
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1456
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1457
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1623
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1624
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 1626
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/Typeface;

    .line 1628
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v2, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 1624
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_26
    :goto_26
    return v1
.end method

.method public blacklist getFallback()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 1658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v0, "families":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontFamily;>;"
    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeGetFamilySize(J)I

    move-result v1

    .line 1660
    .local v1, "familySize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1f

    .line 1661
    new-instance v3, Landroid/graphics/fonts/FontFamily;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->nativeGetFamily(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1663
    .end local v2    # "i":I
    :cond_1f
    return-object v0
.end method

.method public whitelist getStyle()I
    .registers 2

    .line 295
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public whitelist getWeight()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1637
    const/16 v0, 0x11

    .line 1638
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1639
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v0, v2

    .line 1640
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final whitelist isBold()Z
    .registers 3

    .line 300
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final whitelist isItalic()Z
    .registers 2

    .line 305
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isSupportedAxes(I)Z
    .registers 4
    .param p1, "axis"    # I

    .line 1645
    monitor-enter p0

    .line 1646
    :try_start_1
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_13

    .line 1647
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1648
    if-nez v0, :cond_13

    .line 1649
    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1652
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    .line 1653
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 1652
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public blacklist setStyle(I)V
    .registers 2
    .param p1, "style"    # I

    .line 282
    iput p1, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 283
    return-void
.end method

.method public blacklist setWeight(I)V
    .registers 2
    .param p1, "weight"    # I

    .line 290
    iput p1, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 291
    return-void
.end method
