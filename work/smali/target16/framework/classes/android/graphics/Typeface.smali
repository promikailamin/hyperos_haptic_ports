.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$CustomFallbackBuilder;,
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$NoImagePreloadHolder;,
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

.field static final greylist sSystemFallbackMap:Ljava/util/Map;
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

.field static final greylist sSystemFontMap:Ljava/util/Map;
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

.field private static final blacklist sVariableCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sVariableCacheLock:Ljava/lang/Object;

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
.field private final blacklist mCleaner:Ljava/lang/Runnable;

.field private final blacklist mDerivedFrom:Landroid/graphics/Typeface;

.field private final blacklist mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mStyle:I

.field private greylist-max-o mSupportedAxes:[I

.field private final blacklist mSystemFontFamilyName:Ljava/lang/String;

.field private final greylist-max-o mWeight:I

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

.method static bridge synthetic blacklist -$$Nest$smnativeGetReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 95
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sVariableCacheLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 184
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 185
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    .line 295
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->doNotOverwriteStaticFinalField()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_be

    .line 296
    new-instance v1, Landroid/graphics/Typeface;

    const/16 v3, 0x2bc

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v0}, Landroid/graphics/Typeface;-><init>(IILjava/lang/String;)V

    sput-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 297
    new-instance v1, Landroid/graphics/Typeface;

    const/16 v3, 0x190

    const-string/jumbo v5, "sans-serif"

    invoke-direct {v1, v2, v3, v5}, Landroid/graphics/Typeface;-><init>(IILjava/lang/String;)V

    sput-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 298
    new-instance v1, Landroid/graphics/Typeface;

    const-string/jumbo v6, "serif"

    invoke-direct {v1, v2, v3, v6}, Landroid/graphics/Typeface;-><init>(IILjava/lang/String;)V

    sput-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 299
    new-instance v1, Landroid/graphics/Typeface;

    const-string/jumbo v7, "monospace"

    invoke-direct {v1, v2, v3, v7}, Landroid/graphics/Typeface;-><init>(IILjava/lang/String;)V

    sput-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 303
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d0

    :cond_90
    goto :goto_a8

    :sswitch_91
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_a9

    :sswitch_98
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    const/4 v4, 0x2

    goto :goto_a9

    :sswitch_a0
    invoke-virtual {v5, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    move v4, v2

    goto :goto_a9

    :goto_a8
    const/4 v4, -0x1

    :goto_a9
    packed-switch v4, :pswitch_data_de

    .line 307
    new-instance v1, Landroid/graphics/Typeface;

    invoke-direct {v1, v2, v3, v0}, Landroid/graphics/Typeface;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    goto :goto_bb

    .line 306
    :pswitch_b3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_bb

    .line 305
    :pswitch_b6
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_bb

    .line 304
    :pswitch_b9
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 307
    :goto_bb
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_c8

    .line 310
    :cond_be
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 311
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 312
    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 313
    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 314
    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 324
    :goto_c8
    new-array v0, v2, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 1704
    invoke-static {}, Landroid/graphics/Typeface;->staticInitializer()V

    .line 1819
    return-void

    :sswitch_data_d0
    .sparse-switch
        -0x5b97f43d -> :sswitch_a0
        -0x5559f3fd -> :sswitch_98
        0x684317d -> :sswitch_91
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
    .end packed-switch
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 6

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1363
    new-instance v0, Landroid/graphics/Typeface$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/graphics/Typeface$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    .line 1364
    iput p1, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 1365
    iput p2, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 1366
    iput-object p3, p0, Landroid/graphics/Typeface;->mSystemFontFamilyName:Ljava/lang/String;

    .line 1367
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    .line 1368
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/graphics/Typeface;->mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1369
    return-void
.end method

.method private constructor greylist-max-p <init>(J)V
    .registers 4

    .line 1332
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface;)V

    .line 1333
    return-void
.end method

.method private constructor blacklist <init>(JLjava/lang/String;)V
    .registers 5

    .line 1339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface;)V

    .line 1340
    return-void
.end method

.method synthetic constructor blacklist <init>(JLjava/lang/String;Landroid/graphics/Typeface-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(JLjava/lang/String;Landroid/graphics/Typeface;)V
    .registers 8

    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_29

    .line 1349
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1350
    sget-object v0, Landroid/graphics/Typeface$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    .line 1351
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 1352
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result p1

    iput p1, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 1353
    iput-object p3, p0, Landroid/graphics/Typeface;->mSystemFontFamilyName:Ljava/lang/String;

    .line 1354
    iput-object p4, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    .line 1355
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Typeface;->mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1356
    return-void

    .line 1346
    :cond_29
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "native typeface cannot be made"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist axesToVarKey(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1129
    new-instance v0, Landroid/graphics/Typeface$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/graphics/Typeface$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    const/4 v1, 0x0

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 1132
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/FontVariationAxis;

    .line 1133
    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1136
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist changeDefaultFontForTest(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation

    .line 1677
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1678
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1679
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Typeface;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1680
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1682
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    new-instance v3, Landroid/graphics/Typeface$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/graphics/Typeface$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    .line 1688
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 1689
    const-string/jumbo v5, "sans-serif"

    invoke-interface {v3, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1690
    const/16 v5, 0x64

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    const-string/jumbo v6, "sans-serif-thin"

    invoke-interface {v3, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1691
    const/16 v5, 0x12c

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    const-string/jumbo v6, "sans-serif-light"

    invoke-interface {v3, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1692
    const/16 v5, 0x1f4

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    const-string/jumbo v6, "sans-serif-medium"

    invoke-interface {v3, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1693
    const/16 v5, 0x2bc

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    const-string/jumbo v6, "sans-serif-bold"

    invoke-interface {v3, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1694
    const/16 v5, 0x384

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const-string/jumbo v4, "sans-serif-black"

    invoke-interface {v3, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1696
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    const-string/jumbo v4, "serif"

    invoke-interface {v3, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1697
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    const-string/jumbo v2, "monospace"

    invoke-interface {v3, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1699
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p1

    .line 1700
    :catchall_91
    move-exception p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw p0
.end method

.method public static blacklist clearTypefaceCachesForTestingPurpose()V
    .registers 2

    .line 161
    sget-object v0, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 163
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 164
    sget-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_c
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 166
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 167
    sget-object v0, Landroid/graphics/Typeface;->sVariableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_15
    sget-object v1, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1

    .line 166
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 163
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist completeTypefaceInitialization(Landroid/graphics/Typeface;)V
    .registers 4

    .line 257
    iget-object v0, p0, Landroid/graphics/Typeface;->mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_16

    .line 261
    iget-object v0, p0, Landroid/graphics/Typeface;->mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 265
    return-void

    .line 262
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The pending Typeface is already initialized. Do not call this method multiple times."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call this method other than placeholder Typeface."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 7

    .line 1021
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_5

    .line 1022
    const/4 p1, 0x0

    .line 1024
    :cond_5
    if-nez p0, :cond_b

    .line 1025
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 1029
    :cond_b
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v0, p1, :cond_10

    .line 1030
    return-object p0

    .line 1033
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v0

    .line 1036
    sget-object v2, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1037
    :try_start_17
    sget-object v3, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1039
    if-nez v3, :cond_2d

    .line 1040
    new-instance v3, Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 1041
    sget-object v4, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_37

    .line 1043
    :cond_2d
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 1044
    if-eqz v4, :cond_37

    .line 1045
    monitor-exit v2

    return-object v4

    .line 1049
    :cond_37
    :goto_37
    new-instance v4, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v0

    .line 1050
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v0, v1, p0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    .line 1051
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1052
    monitor-exit v2

    .line 1053
    return-object v4

    .line 1052
    :catchall_49
    move-exception p0

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public static whitelist create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6

    .line 1093
    const/16 v0, 0x3e8

    const-string/jumbo v1, "weight"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1094
    if-nez p0, :cond_f

    .line 1095
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 1097
    :cond_f
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 2

    .line 1000
    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    .line 1198
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_12

    return-object v0

    .line 1204
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 1205
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1f

    .line 1207
    :cond_1b
    nop

    .line 1209
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p0

    .line 1205
    :catch_1f
    move-exception p0

    .line 1206
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font asset not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist createFromFamilies(Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;
    .registers 6

    .line 1281
    array-length v0, p1

    new-array v0, v0, [J

    .line 1282
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 1283
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1285
    :cond_12
    new-instance p1, Landroid/graphics/Typeface;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3, v3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-object p1
.end method

.method private static greylist createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1265
    array-length v0, p0

    new-array v0, v0, [J

    .line 1266
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 1267
    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    .line 1266
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1269
    :cond_10
    new-instance p0, Landroid/graphics/Typeface;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3, v3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-object p0
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1298
    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    invoke-static {p1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1321
    array-length v0, p0

    new-array v0, v0, [J

    .line 1322
    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 1323
    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1325
    :cond_14
    new-instance p0, Landroid/graphics/Typeface;

    .line 1326
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v1

    .line 1325
    invoke-static {v0, v1, v2, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-object p0
.end method

.method public static whitelist createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 4

    .line 1234
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_c

    return-object v0

    .line 1238
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1242
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p0

    .line 1239
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font asset not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 2

    .line 1252
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 13

    .line 407
    instance-of v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    .line 408
    check-cast p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 410
    invoke-virtual {p0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object p1

    .line 411
    if-eqz p1, :cond_18

    invoke-static {p1}, Landroid/graphics/Typeface;->hasFontFamily(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 412
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 415
    :cond_18
    invoke-virtual {p0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object p1

    .line 416
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    if-eqz p1, :cond_52

    .line 418
    move v0, v1

    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 419
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 420
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 421
    move v4, v1

    :goto_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 422
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 424
    :cond_4c
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 429
    :cond_52
    new-instance p1, Landroid/provider/FontRequest;

    invoke-virtual {p0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0, p2}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 431
    invoke-static {p1}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 432
    if-nez p0, :cond_6b

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_6b
    return-object p0

    .line 435
    :cond_6c
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_73

    return-object v0

    .line 439
    :cond_73
    check-cast p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 442
    nop

    .line 443
    const/4 v2, 0x0

    :try_start_77
    invoke-virtual {p0}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object p0

    array-length v0, p0

    move v3, v1

    move-object v4, v2

    :goto_7e
    const/4 v5, 0x1

    if-ge v3, v0, :cond_d1

    aget-object v6, p0, v3

    .line 444
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct {v7, p1, v8, v1, v9}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 446
    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 447
    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 448
    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v8

    if-eq v8, v9, :cond_aa

    .line 449
    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 451
    :cond_aa
    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v8

    if-eq v8, v9, :cond_bb

    .line 452
    invoke-virtual {v6}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v6

    if-ne v6, v5, :cond_b7

    .line 453
    goto :goto_b8

    :cond_b7
    move v5, v1

    .line 452
    :goto_b8
    invoke-virtual {v7, v5}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 456
    :cond_bb
    if-nez v4, :cond_c7

    .line 457
    new-instance v4, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-virtual {v7}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    goto :goto_ce

    .line 459
    :cond_c7
    invoke-virtual {v7}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 443
    :goto_ce
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 462
    :cond_d1
    if-nez v4, :cond_d6

    .line 463
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p0

    .line 465
    :cond_d6
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    .line 466
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    const/16 v3, 0x190

    invoke-direct {v0, v3, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 468
    invoke-virtual {p0, v1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 469
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v3

    .line 470
    nop

    :goto_ee
    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v4

    if-ge v5, v4, :cond_108

    .line 471
    invoke-virtual {p0, v5}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    .line 472
    invoke-virtual {v4}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v6

    .line 473
    if-ge v6, v3, :cond_105

    .line 474
    nop

    .line 475
    move-object v1, v4

    move v3, v6

    .line 470
    :cond_105
    add-int/lit8 v5, v5, 0x1

    goto :goto_ee

    .line 478
    :cond_108
    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 479
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    .line 480
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_119
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_119} :catch_138
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_119} :catch_11a

    .line 487
    goto :goto_11d

    .line 485
    :catch_11a
    move-exception v0

    .line 486
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 488
    :goto_11d
    sget-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_120
    const-string/jumbo v8, "sans-serif"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 492
    sget-object p2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    monitor-exit v1

    .line 494
    return-object p0

    .line 493
    :catchall_134
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_137
    .catchall {:try_start_120 .. :try_end_137} :catchall_134

    throw p0

    .line 481
    :catch_138
    move-exception v0

    .line 484
    return-object v2
.end method

.method public static greylist-max-o createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .registers 8
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

    .line 1145
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->typefaceCacheForVarSettings()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1146
    if-nez p0, :cond_a

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1147
    :cond_a
    iget-object v0, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    iget-object p0, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    .line 1149
    :goto_11
    invoke-static {p1}, Landroid/graphics/Typeface;->axesToVarKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    sget-object v1, Landroid/graphics/Typeface;->sVariableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1152
    :try_start_18
    sget-object v2, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    .line 1153
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1152
    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LruCache;

    .line 1154
    if-nez v2, :cond_3f

    .line 1156
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    .line 1157
    sget-object v3, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1159
    :cond_3f
    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 1160
    if-eqz v3, :cond_49

    .line 1161
    monitor-exit v1

    return-object v3

    .line 1164
    :cond_49
    :goto_49
    new-instance v3, Landroid/graphics/Typeface;

    .line 1165
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v4

    .line 1166
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1, p0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface;)V

    .line 1167
    invoke-virtual {v2, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    monitor-exit v1

    return-object v3

    .line 1169
    :catchall_5f
    move-exception p0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_18 .. :try_end_61} :catchall_5f

    throw p0

    .line 1172
    :cond_62
    if-nez p0, :cond_66

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1173
    :cond_66
    new-instance v0, Landroid/graphics/Typeface;

    .line 1174
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v1

    .line 1175
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    .line 1176
    return-object v0
.end method

.method private static greylist-max-o createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1217
    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 9

    .line 1102
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    .line 1105
    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1106
    :try_start_6
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1107
    if-nez v2, :cond_24

    .line 1108
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 1109
    sget-object v3, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2e

    .line 1111
    :cond_24
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 1112
    if-eqz v3, :cond_2e

    .line 1113
    monitor-exit v1

    return-object v3

    .line 1117
    :cond_2e
    :goto_2e
    new-instance v3, Landroid/graphics/Typeface;

    .line 1118
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide p1

    .line 1120
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p1, p2, p0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    .line 1121
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1122
    monitor-exit v1

    .line 1123
    return-object v3

    .line 1122
    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public static whitelist defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 3

    .line 1185
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1186
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object p0, v1, p0

    monitor-exit v0

    return-object p0

    .line 1187
    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public static blacklist deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J
    .registers 9
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

    .line 1479
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->nativeReadTypefaces(Ljava/nio/ByteBuffer;I)[J

    move-result-object v1

    .line 1483
    if-eqz v1, :cond_2f

    .line 1486
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1487
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1488
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2e

    aget-wide v3, v1, v2

    .line 1489
    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 1490
    new-instance v6, Landroid/graphics/Typeface;

    invoke-direct {v6, v3, v4, v5}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1492
    :cond_2e
    return-object v1

    .line 1484
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not read typefaces"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist destroySystemFontMap()V
    .registers 3

    .line 1762
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1763
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1764
    invoke-virtual {v2}, Landroid/graphics/Typeface;->releaseNativeObjectForTest()V

    .line 1765
    goto :goto_d

    .line 1766
    :cond_1d
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1767
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2b

    .line 1768
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1770
    :cond_2b
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1771
    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1772
    sget-object v1, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_4a

    .line 1773
    :try_start_33
    sget-object v2, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-static {v2}, Landroid/graphics/Typeface;->destroyTypefaceCacheLocked(Landroid/util/LongSparseArray;)V

    .line 1774
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_47

    .line 1775
    :try_start_39
    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4a

    .line 1776
    :try_start_3c
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    invoke-static {v2}, Landroid/graphics/Typeface;->destroyTypefaceCacheLocked(Landroid/util/LongSparseArray;)V

    .line 1777
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_44

    .line 1778
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4a

    .line 1779
    return-void

    .line 1777
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4a

    .line 1774
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v2

    .line 1778
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private static blacklist destroyTypefaceCacheLocked(Landroid/util/LongSparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;)V"
        }
    .end annotation

    .line 1782
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1783
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1784
    move v3, v0

    :goto_f
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 1785
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    invoke-virtual {v4}, Landroid/graphics/Typeface;->releaseNativeObjectForTest()V

    .line 1784
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1782
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1788
    :cond_24
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    .line 1789
    return-void
.end method

.method public static greylist-max-o findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 11

    .line 502
    sget-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_3
    const-string/jumbo v8, "sans-serif"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 506
    sget-object p1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    .line 507
    if-eqz p0, :cond_1c

    .line 508
    monitor-exit v1

    return-object p0

    .line 510
    :cond_1c
    monitor-exit v1

    .line 511
    const/4 p0, 0x0

    return-object p0

    .line 510
    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method private static blacklist getDefault()Landroid/graphics/Typeface;
    .registers 2

    .line 340
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    .line 342
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 2

    .line 1384
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    .line 1385
    if-nez p0, :cond_c

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_c
    return-object p0
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

    .line 1518
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1519
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 1520
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getSystemFontMapSharedMemory()Landroid/os/SharedMemory;
    .registers 1

    .line 212
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method private static blacklist hasFontFamily(Ljava/lang/String;)Z
    .registers 3

    .line 394
    const-string v0, "familyName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_8
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 397
    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static blacklist init()V
    .registers 8

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Roboto-Regular.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RobotoStatic-Regular.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1722
    const-string/jumbo v0, "persist.sys.locale"

    const-string v1, "en-US"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1723
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfigFromLegacyXml()Landroid/text/FontConfig;

    move-result-object v1

    .line 1729
    const/4 v2, 0x0

    move v3, v2

    :goto_4b
    invoke-virtual {v1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c8

    .line 1730
    invoke-virtual {v1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 1731
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_74

    .line 1732
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeRegisterLocaleList(Ljava/lang/String;)V

    .line 1734
    :cond_74
    nop

    .line 1735
    move v5, v2

    move v6, v5

    :goto_77
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v5, v7, :cond_a0

    .line 1736
    nop

    .line 1737
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v6

    .line 1736
    invoke-static {v6}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v6

    .line 1737
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    .line 1738
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1739
    if-eqz v6, :cond_9d

    .line 1740
    goto :goto_a0

    .line 1735
    :cond_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    .line 1743
    :cond_a0
    :goto_a0
    if-eqz v6, :cond_c5

    .line 1744
    move v5, v2

    :goto_a3
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c5

    .line 1745
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1744
    add-int/lit8 v5, v5, 0x1

    goto :goto_a3

    .line 1729
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1749
    :cond_c8
    return-void
.end method

.method public static blacklist initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .registers 9
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

    .line 1393
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1395
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontFamily;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->createFromFamilies(Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1394
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    goto :goto_8

    .line 1398
    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_78

    .line 1399
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig$Alias;

    .line 1400
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1401
    goto :goto_75

    .line 1403
    :cond_46
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 1404
    if-nez v1, :cond_53

    .line 1407
    goto :goto_75

    .line 1409
    :cond_53
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v2

    .line 1410
    const/16 v3, 0x190

    if-ne v2, v3, :cond_5c

    goto :goto_6e

    :cond_5c
    new-instance v3, Landroid/graphics/Typeface;

    .line 1411
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    move-object v1, v3

    .line 1412
    :goto_6e
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :goto_75
    add-int/lit8 p0, p0, 0x1

    goto :goto_2f

    .line 1414
    :cond_78
    return-void
.end method

.method public static blacklist initializePendingTypefaceLocked(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1570
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 1571
    if-nez v0, :cond_33

    .line 1574
    sget-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The typeface for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not installed in this device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-string/jumbo v0, "sans-serif"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-direct {p0, v0}, Landroid/graphics/Typeface;->completeTypefaceInitialization(Landroid/graphics/Typeface;)V

    goto :goto_36

    .line 1577
    :cond_33
    invoke-direct {p0, v0}, Landroid/graphics/Typeface;->completeTypefaceInitialization(Landroid/graphics/Typeface;)V

    .line 1584
    :goto_36
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    return-void
.end method

.method static synthetic blacklist lambda$changeDefaultFontForTest$1(Ljava/util/ArrayList;Landroid/graphics/Typeface;Ljava/lang/String;)V
    .registers 4

    .line 1684
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    sget-object p0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    return-void
.end method

.method static synthetic blacklist lambda$new$0()V
    .registers 0

    .line 1363
    return-void
.end method

.method public static blacklist loadNativeSystemFonts()V
    .registers 4

    .line 1808
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1809
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1810
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    .line 1811
    goto :goto_d

    .line 1812
    :cond_21
    monitor-exit v0

    .line 1813
    return-void

    .line 1812
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static blacklist loadPreinstalledSystemFontMap()V
    .registers 2

    .line 1793
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    .line 1794
    invoke-static {v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v1

    .line 1795
    nop

    .line 1796
    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1797
    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V

    .line 1798
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

.method private static native blacklist nativeReadTypefaces(Ljava/nio/ByteBuffer;I)[J
.end method

.method private static native blacklist nativeRegisterGenericFamily(Ljava/lang/String;J)V
.end method

.method private static native blacklist nativeRegisterLocaleList(Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWarmUpCache(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeWriteTypefaces(Ljava/nio/ByteBuffer;I[J)I
.end method

.method private static blacklist preloadFontFile(Ljava/lang/String;)V
    .registers 5

    .line 1752
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1754
    sget-object v1, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeWarmUpCache(Ljava/lang/String;)V

    .line 1757
    :cond_2a
    return-void
.end method

.method private static blacklist readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    .line 1496
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1497
    new-array v0, v0, [B

    .line 1498
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1499
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private static blacklist registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1418
    if-eqz p1, :cond_9

    .line 1419
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/graphics/Typeface;->nativeRegisterGenericFamily(Ljava/lang/String;J)V

    .line 1421
    :cond_9
    return-void
.end method

.method public static blacklist serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;
    .registers 8
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

    .line 1431
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1433
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1434
    nop

    .line 1435
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1436
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 1437
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1438
    move v2, v4

    goto :goto_15

    .line 1441
    :cond_3a
    const/4 p0, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v2, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;I[J)I

    move-result p0

    .line 1442
    add-int/lit8 v2, p0, 0x4

    .line 1443
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 1442
    const-string v3, "fontMap"

    invoke-static {v3, v2}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v2

    .line 1444
    invoke-virtual {v2}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1446
    :try_start_57
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1447
    nop

    .line 1448
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v3, v4, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;I[J)I

    move-result v0

    .line 1449
    if-ne v0, p0, :cond_7e

    .line 1453
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1454
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_96

    .line 1456
    invoke-static {v3}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1457
    nop

    .line 1458
    sget p0, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v2, p0}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 1459
    return-object v2

    .line 1450
    :cond_7e
    :try_start_7e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected bytes written: %d, expected: %d"

    .line 1451
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1450
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_96
    .catchall {:try_start_7e .. :try_end_96} :catchall_96

    .line 1456
    :catchall_96
    move-exception p0

    invoke-static {v3}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1457
    throw p0
.end method

.method private static greylist-max-p setDefault(Landroid/graphics/Typeface;)V
    .registers 4

    .line 333
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 335
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 336
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static blacklist setSystemFontMap(Landroid/os/SharedMemory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1531
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    .line 1534
    if-eqz p0, :cond_13

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    if-ne p0, v0, :cond_b

    goto :goto_13

    .line 1537
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Once set, buffer-based system font map cannot be updated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1535
    :cond_13
    :goto_13
    return-void

    .line 1540
    :cond_14
    sput-object p0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1541
    const-string/jumbo v0, "setSystemFontMap"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1543
    if-nez p0, :cond_27

    .line 1546
    :try_start_20
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_52

    .line 1560
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1547
    return-void

    .line 1549
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    sput-object p0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1550
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 1551
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p0}, Landroid/graphics/Typeface;->deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J

    move-result-object v0

    .line 1555
    array-length v3, v0

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_4a

    aget-wide v5, v0, v4

    .line 1556
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    .line 1555
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1558
    :cond_4a
    invoke-static {p0}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_52

    .line 1560
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1561
    nop

    .line 1562
    return-void

    .line 1560
    :catchall_52
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1561
    throw p0
.end method

.method public static blacklist setSystemFontMap(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1590
    sget-object v1, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1591
    :try_start_3
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1592
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1595
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c1

    .line 1596
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->doNotOverwriteStaticFinalField()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1597
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "sans-serif"

    sget-object v5, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-static {v0, v4, v5}, Landroid/graphics/Typeface;->initializePendingTypefaceLocked(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/util/Map;)V

    .line 1598
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "serif"

    sget-object v5, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-static {v0, v4, v5}, Landroid/graphics/Typeface;->initializePendingTypefaceLocked(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/util/Map;)V

    .line 1599
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v4, "monospace"

    sget-object v5, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-static {v0, v4, v5}, Landroid/graphics/Typeface;->initializePendingTypefaceLocked(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/util/Map;)V

    .line 1601
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v4, "sans-serif"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1605
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-eq v0, v4, :cond_6a

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-eq v0, v4, :cond_6a

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-eq v0, v4, :cond_6a

    .line 1606
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string/jumbo v4, "sans-serif"

    .line 1607
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1606
    invoke-direct {v0, v4}, Landroid/graphics/Typeface;->completeTypefaceInitialization(Landroid/graphics/Typeface;)V

    .line 1609
    :cond_6a
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-string/jumbo v4, "sans-serif"

    .line 1610
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1609
    invoke-direct {v0, v2}, Landroid/graphics/Typeface;->completeTypefaceInitialization(Landroid/graphics/Typeface;)V

    goto/16 :goto_fb

    .line 1612
    :cond_78
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v4, "sans-serif"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1617
    const-string v0, "DEFAULT"

    sget-object v4, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 1618
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1617
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1619
    const-string v0, "DEFAULT_BOLD"

    sget-object v4, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 1620
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1619
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1621
    const-string v0, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    .line 1622
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1621
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1623
    const-string v0, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1624
    const-string v0, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    .line 1625
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1624
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_fb

    .line 1631
    :cond_c1
    const-string v0, "DEFAULT"

    sget-object v4, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 1632
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1631
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1633
    const-string v0, "DEFAULT_BOLD"

    sget-object v4, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 1634
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1633
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1635
    const-string v0, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    .line 1636
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1635
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1637
    const-string v0, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1638
    const-string v0, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    .line 1639
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1638
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1642
    :goto_fb
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 1645
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 1646
    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    filled-new-array {v0, v2, v5, v4}, [Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1651
    const-string/jumbo v4, "serif"

    const-string/jumbo v5, "sans-serif"

    const-string v6, "cursive"

    const-string v7, "fantasy"

    const-string/jumbo v8, "monospace"

    const-string/jumbo v9, "system-ui"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 1655
    nop

    :goto_12b
    const/4 v2, 0x6

    if-ge v3, v2, :cond_13c

    aget-object v2, v0, v3

    .line 1656
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1655
    add-int/lit8 v3, v3, 0x1

    goto :goto_12b

    .line 1658
    :cond_13c
    monitor-exit v1

    .line 1659
    return-void

    .line 1658
    :catchall_13e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_141
    .catchall {:try_start_3 .. :try_end_141} :catchall_13e

    throw p0
.end method

.method private static blacklist staticInitializer()V
    .registers 0

    .line 1709
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    .line 1710
    return-void
.end method

.method private static blacklist staticInitializer$ravenwood()V
    .registers 0

    .line 1714
    return-void
.end method

.method private static blacklist writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3

    .line 1510
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1511
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1512
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1513
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1514
    return-void
.end method

.method private static blacklist writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 1504
    array-length v0, p1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1505
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1506
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1823
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1824
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 1826
    :cond_12
    check-cast p1, Landroid/graphics/Typeface;

    .line 1828
    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v3, p1, Landroid/graphics/Typeface;->mStyle:I

    if-ne v2, v3, :cond_27

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 1824
    :cond_29
    :goto_29
    return v1
.end method

.method public final blacklist getDerivedFrom()Landroid/graphics/Typeface;
    .registers 2

    .line 374
    iget-object v0, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public blacklist getNativeInstance()J
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/graphics/Typeface;->mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1b

    .line 227
    iget-object v0, p0, Landroid/graphics/Typeface;->mPendingTypeface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 228
    if-eqz v0, :cond_13

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 229
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Typeface is not fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1b
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    return-wide v0
.end method

.method public whitelist getStyle()I
    .registers 2

    .line 352
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public final whitelist getSystemFontFamilyName()Ljava/lang/String;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/graphics/Typeface;->mSystemFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWeight()I
    .registers 2

    .line 347
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1837
    nop

    .line 1838
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 1839
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v1, v0

    .line 1840
    return v1
.end method

.method public final whitelist isBold()Z
    .registers 3

    .line 357
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

    .line 362
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

    .line 1845
    monitor-enter p0

    .line 1846
    :try_start_1
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_17

    .line 1847
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1848
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_17

    .line 1849
    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1852
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_24

    .line 1853
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    .line 1852
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public blacklist releaseNativeObjectForTest()V
    .registers 2

    .line 1380
    iget-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1381
    return-void
.end method
