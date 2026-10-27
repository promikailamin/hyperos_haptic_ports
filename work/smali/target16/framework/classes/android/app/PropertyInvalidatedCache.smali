.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$Namespace;,
        Landroid/app/PropertyInvalidatedCache$NonceWatcher;,
        Landroid/app/PropertyInvalidatedCache$NonceHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceLocal;,
        Landroid/app/PropertyInvalidatedCache$CacheKey;,
        Landroid/app/PropertyInvalidatedCache$NonceSharedMem;,
        Landroid/app/PropertyInvalidatedCache$NonceSysprop;,
        Landroid/app/PropertyInvalidatedCache$Args;,
        Landroid/app/PropertyInvalidatedCache$CacheMap;,
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceStore;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist BRIEF:Ljava/lang/String; = "-brief"

.field private static final blacklist CACHE_KEY_PREFIX:Ljava/lang/String; = "cache_key"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_RESERVED_NONCE:I = 0x3

.field public static final blacklist MODULE_ADSERVICES:Ljava/lang/String; = "adservices"

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"

.field static final blacklist NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final blacklist NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final blacklist NONCE_BYPASS:I = 0x3

.field private static final blacklist NONCE_CORKED:I = 0x2

.field private static final blacklist NONCE_DISABLED:I = 0x1

.field static final blacklist NONCE_UNSET:I = 0x0

.field private static final blacklist PREFIX_SYSTEM:Ljava/lang/String; = "cache_key.system_server."

.field private static final blacklist PREFIX_TEST:Ljava/lang/String; = "cache_key.test."

.field static final blacklist PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field static final blacklist PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final blacklist TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final blacklist sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorkLock:Ljava/lang/Object;

.field private static final blacklist sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEnabled:Z

.field private static final blacklist sGlobalLock:Ljava/lang/Object;

.field private static final blacklist sHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/app/PropertyInvalidatedCache$CacheKey;",
            "Landroid/app/PropertyInvalidatedCache$NonceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNamespaceAdservices:Landroid/app/PropertyInvalidatedCache$Namespace;

.field private static final blacklist sNamespaceBluetooth:Landroid/app/PropertyInvalidatedCache$Namespace;

.field private static final blacklist sNamespaceSystem:Landroid/app/PropertyInvalidatedCache$Namespace;

.field private static final blacklist sNamespaceTelephony:Landroid/app/PropertyInvalidatedCache$Namespace;

.field private static final blacklist sNamespaceTest:Landroid/app/PropertyInvalidatedCache$Namespace;

.field private static final blacklist sNonceName:[Ljava/lang/String;

.field private static blacklist sTestMode:Z

.field private static final blacklist sValidKeyPrefix:[Ljava/lang/String;

.field private static final blacklist sValidModule:[Ljava/lang/String;


# instance fields
.field private final blacklist mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final blacklist mCacheName:Ljava/lang/String;

.field private final blacklist mCacheNullResults:Z

.field private blacklist mClears:J

.field private blacklist mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private blacklist mHighWaterMark:J

.field private blacklist mHits:J

.field private blacklist mLastSeenNonce:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxEntries:I

.field private blacklist mMissOverflow:J

.field private blacklist mMisses:J

.field private final blacklist mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private blacklist mNulls:J

.field private blacklist mSkips:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .registers 1

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobalLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTestMode()Z
    .registers 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisReservedNonce(J)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnameToNamespace(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Namespace;
    .registers 1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->nameToNamespace(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetByteBlock(JI[B)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlock(JI[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetByteBlockHash(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlockHash(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetMaxByte(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxByte(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetMaxNonce(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxNonce(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNonce(JI)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache;->nativeGetNonce(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetByteBlock(JI[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeSetByteBlock(JI[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetNonce(JIJ)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PropertyInvalidatedCache;->nativeSetNonce(JIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smthrowIfInvalidKey(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidKey(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 151
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Namespace;

    const-string/jumbo v1, "system_server"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;-><init>(Ljava/lang/String;Landroid/app/PropertyInvalidatedCache-IA;)V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceSystem:Landroid/app/PropertyInvalidatedCache$Namespace;

    .line 153
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Namespace;

    const-string v3, "adservices"

    invoke-direct {v0, v3, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;-><init>(Ljava/lang/String;Landroid/app/PropertyInvalidatedCache-IA;)V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceAdservices:Landroid/app/PropertyInvalidatedCache$Namespace;

    .line 154
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Namespace;

    const-string v4, "bluetooth"

    invoke-direct {v0, v4, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;-><init>(Ljava/lang/String;Landroid/app/PropertyInvalidatedCache-IA;)V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceBluetooth:Landroid/app/PropertyInvalidatedCache$Namespace;

    .line 155
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Namespace;

    const-string/jumbo v5, "telephony"

    invoke-direct {v0, v5, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;-><init>(Ljava/lang/String;Landroid/app/PropertyInvalidatedCache-IA;)V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceTelephony:Landroid/app/PropertyInvalidatedCache$Namespace;

    .line 156
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Namespace;

    const-string/jumbo v6, "test"

    invoke-direct {v0, v6, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;-><init>(Ljava/lang/String;Landroid/app/PropertyInvalidatedCache-IA;)V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceTest:Landroid/app/PropertyInvalidatedCache$Namespace;

    .line 218
    filled-new-array {v1, v4, v5, v6, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    .line 252
    const-string v0, "cache_key.test."

    const-string v1, "cache_key.adservices."

    const-string v2, "cache_key.system_server."

    const-string v3, "cache_key.bluetooth."

    const-string v4, "cache_key.telephony."

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    .line 338
    const-string v0, "corked"

    const-string v1, "bypass"

    const-string/jumbo v2, "unset"

    const-string v3, "disabled"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    .line 391
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    .line 408
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    .line 414
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 1212
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1390
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1391
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1407
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1408
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 1424
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1425
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PropertyInvalidatedCache$Args;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 361
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 366
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    .line 369
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 372
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 375
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 378
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 613
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 1343
    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 1344
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmCacheNulls(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result p2

    iput-boolean p2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    .line 1345
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Landroid/app/PropertyInvalidatedCache$Args;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p2

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1346
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache$Args;)I

    move-result p2

    iput p2, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 1347
    new-instance p2, Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmIsolateUids(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v0

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmTestMode(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result p1

    invoke-direct {p2, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;-><init>(Landroid/app/PropertyInvalidatedCache;ZZ)V

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    .line 1348
    if-eqz p3, :cond_48

    goto :goto_4d

    :cond_48
    new-instance p3, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {p3, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    :goto_4d
    iput-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1349
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 1350
    return-void
.end method

.method private static blacklist anyDetailed([Ljava/lang/String;)Z
    .registers 6

    .line 1908
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2d

    aget-object v3, p0, v2

    .line 1909
    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1910
    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_2b

    .line 1908
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1911
    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0

    .line 1914
    :cond_2d
    return v1
.end method

.method public static blacklist apiFromProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1372
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 3

    .line 1357
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    .line 1359
    const-string v0, "cache_key"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1360
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1361
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1362
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1363
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist briefRequested([Ljava/lang/String;)Z
    .registers 6

    .line 1921
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 1922
    const-string v4, "-brief"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1923
    const/4 p0, 0x1

    return p0

    .line 1921
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1926
    :cond_14
    return v1
.end method

.method private static blacklist chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 1933
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1934
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1935
    if-eqz p3, :cond_15

    .line 1936
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 1938
    :cond_15
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1941
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist corkInvalidations(Ljava/lang/String;)V
    .registers 1

    .line 1815
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    .line 1816
    return-void
.end method

.method public static blacklist createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 185
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidModule(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 188
    nop

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_b
    array-length v3, p1

    if-ge v1, v3, :cond_1b

    .line 190
    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 189
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 194
    :cond_1b
    array-length v1, p1

    add-int/2addr v1, v2

    new-array v1, v1, [C

    .line 195
    nop

    .line 196
    move v2, v0

    :goto_21
    array-length v3, p1

    if-ge v0, v3, :cond_5b

    .line 197
    aget-char v3, p1, v0

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 198
    aget-char v3, p1, v0

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 199
    if-lez v0, :cond_3d

    .line 200
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x5f

    aput-char v4, v1, v2

    move v2, v3

    .line 202
    :cond_3d
    add-int/lit8 v3, v2, 0x1

    aget-char v4, p1, v0

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v1, v2

    move v2, v3

    goto :goto_50

    .line 204
    :cond_49
    add-int/lit8 v3, v2, 0x1

    aget-char v4, p1, v0

    aput-char v4, v1, v2

    move v2, v3

    .line 196
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 207
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid api name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache_key."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public static blacklist createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 303
    const-string/jumbo v0, "system_server"

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .registers 1

    .line 1635
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 1636
    return-void
.end method

.method public static blacklist disableForTestMode()V
    .registers 2

    .line 1859
    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 1861
    return-void
.end method

.method private static final blacklist disableLocal(Ljava/lang/String;)V
    .registers 5

    .line 1582
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1583
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1585
    monitor-exit v0

    return-void

    .line 1587
    :cond_d
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    .line 1588
    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1589
    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 1591
    :cond_30
    goto :goto_17

    .line 1594
    :cond_31
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1595
    monitor-exit v0

    .line 1596
    return-void

    .line 1595
    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2105
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2106
    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2111
    :try_start_10
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2112
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2113
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 2114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_23

    .line 2117
    goto :goto_2b

    .line 2115
    :catch_23
    move-exception p0

    .line 2116
    const-string p0, "PropertyInvalidatedCache"

    const-string p1, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :goto_2b
    return-void
.end method

.method public static blacklist dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2061
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_a

    .line 2062
    const-string p1, "  Caching is disabled in this process."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    return-void

    .line 2068
    :cond_a
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    .line 2071
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->briefRequested([Ljava/lang/String;)Z

    move-result v1

    .line 2073
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->maybeGetInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v2

    .line 2074
    if-eqz v2, :cond_23

    .line 2075
    const-string v3, "  SharedMemory: enabled"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    const-string v3, "    "

    invoke-virtual {v2, p0, v3, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_28

    .line 2078
    :cond_23
    const-string v2, "  SharedMemory: disabled"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    :goto_28
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2082
    invoke-static {p0, v1}, Landroid/app/PropertyInvalidatedCache;->dumpHandlers(Ljava/io/PrintWriter;Z)V

    .line 2084
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v2

    .line 2085
    const/4 v3, 0x0

    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_45

    .line 2086
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PropertyInvalidatedCache;

    .line 2087
    invoke-direct {v4, p0, v0, v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;ZZ[Ljava/lang/String;)V

    .line 2085
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2089
    :cond_45
    return-void
.end method

.method private blacklist dumpContents(Ljava/io/PrintWriter;ZZ[Ljava/lang/String;)V
    .registers 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1981
    if-eqz p2, :cond_9

    invoke-direct {p0, p4}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 1982
    return-void

    .line 1985
    :cond_9
    iget-object p4, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1986
    if-eqz p3, :cond_16

    :try_start_e
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->isActive()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1987
    monitor-exit p4

    return-void

    .line 1990
    :cond_16
    const-string v0, "  Cache Name: %s"

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    const-string v0, "    Key: %s"

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    const-string v0, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d, Nulls: %d"

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 1994
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 1992
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    const-string v0, "    Skip-%s: %d"

    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v2, v3, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1998
    const/4 v0, 0x1

    :goto_7e
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v1, v1

    if-ge v0, v1, :cond_9b

    .line 1999
    const-string v1, ", Skip-%s: %d"

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1998
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 2001
    :cond_9b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2003
    const-string v0, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    .line 2005
    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 2003
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    if-nez p3, :cond_110

    .line 2008
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result p3

    if-eqz p3, :cond_e6

    .line 2009
    const-string p3, "    Nonce: %s"

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    long-to-int v1, v1

    aget-object v0, v0, v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f9

    .line 2011
    :cond_e6
    const-string p3, "    Nonce: 0x%016x"

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    :goto_f9
    const-string p3, "    Enabled: %s"

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v0, :cond_102

    const-string v0, "false"

    goto :goto_105

    :cond_102
    const-string/jumbo v0, "true"

    :goto_105
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    :cond_110
    if-eqz p2, :cond_117

    .line 2018
    iget-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {p2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    .line 2022
    :cond_117
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    monitor-exit p4

    .line 2024
    return-void

    .line 2023
    :catchall_11e
    move-exception p1

    monitor-exit p4
    :try_end_120
    .catchall {:try_start_e .. :try_end_120} :catchall_11e

    throw p1
.end method

.method private static blacklist dumpHandlers(Ljava/io/PrintWriter;Z)V
    .registers 7

    .line 2030
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2031
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 2033
    invoke-virtual {v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->isActive()Z

    move-result v4

    if-nez v4, :cond_26

    if-nez p1, :cond_29

    .line 2034
    :cond_26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    :cond_29
    goto :goto_12

    .line 2037
    :cond_2a
    new-instance p1, Landroid/app/PropertyInvalidatedCache$1;

    invoke-direct {p1}, Landroid/app/PropertyInvalidatedCache$1;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2042
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 2043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Cache-key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    move-result-object v1

    .line 2045
    const-string v2, "    invalidated:%d\n"

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2046
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2047
    goto :goto_36

    .line 2048
    :cond_75
    monitor-exit v0

    .line 2049
    return-void

    .line 2048
    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw p0
.end method

.method private static blacklist getActiveCaches()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    .line 1886
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1887
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1888
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private blacklist getCurrentNonce()J
    .registers 3

    .line 1519
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getDisabledState()Z
    .registers 2

    .line 1868
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist getNonceHandler(Landroid/app/PropertyInvalidatedCache$Args;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .registers 3

    .line 1259
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheKey;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmNamespace(Landroid/app/PropertyInvalidatedCache$Args;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object v1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/PropertyInvalidatedCache$CacheKey;-><init>(Landroid/app/PropertyInvalidatedCache$Namespace;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getNonceHandler(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .registers 4

    .line 1232
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1233
    if-nez v0, :cond_56

    .line 1234
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1235
    :try_start_d
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1236
    if-nez v0, :cond_51

    .line 1237
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isMultiProcess()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1238
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceLocal;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$NonceLocal;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    goto :goto_4c

    .line 1239
    :cond_23
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceSystem:Landroid/app/PropertyInvalidatedCache$Namespace;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$CacheKey;->-$$Nest$fgetnamespace(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1240
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    goto :goto_4c

    .line 1241
    :cond_35
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sNamespaceTest:Landroid/app/PropertyInvalidatedCache$Namespace;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$CacheKey;->-$$Nest$fgetnamespace(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/PropertyInvalidatedCache$Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1242
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceLocal;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$NonceLocal;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    goto :goto_4c

    .line 1244
    :cond_47
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$NonceSysprop;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    .line 1246
    :goto_4c
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_51
    monitor-exit v1

    goto :goto_56

    :catchall_53
    move-exception p0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw p0

    .line 1250
    :cond_56
    :goto_56
    return-object v0
.end method

.method private static blacklist getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .registers 1

    .line 1266
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Landroid/app/PropertyInvalidatedCache$Args;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .registers 3

    .line 1188
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method private blacklist getSkipsLocked()J
    .registers 6

    .line 1962
    nop

    .line 1963
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 1964
    int-to-long v1, v1

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 1963
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1966
    :cond_12
    int-to-long v0, v1

    return-wide v0
.end method

.method public static blacklist invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V
    .registers 2

    .line 1785
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmNamespace(Landroid/app/PropertyInvalidatedCache$Args;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache$Namespace;->-$$Nest$fgetmName(Landroid/app/PropertyInvalidatedCache$Namespace;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 1

    .line 1798
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V

    .line 1799
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1777
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheKey;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->nameToNamespace(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/app/PropertyInvalidatedCache$CacheKey;-><init>(Landroid/app/PropertyInvalidatedCache$Namespace;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1778
    return-void
.end method

.method private blacklist isActive()Z
    .registers 6

    .line 1972
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1973
    :try_start_3
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v1, v3

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    monitor-exit v0

    return v1

    .line 1974
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private static blacklist isMultiProcess()Z
    .registers 1

    .line 1218
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isMultiProcess$ravenwood()Z
    .registers 1

    .line 1223
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isReservedNonce(J)Z
    .registers 4

    .line 332
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const-wide/16 v0, 0x3

    cmp-long p0, p0, v0

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static blacklist nameToNamespace(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Namespace;
    .registers 4

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_70

    :cond_7
    goto :goto_3d

    :sswitch_8
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3e

    :sswitch_12
    const-string/jumbo v0, "telephony"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3e

    :sswitch_1d
    const-string/jumbo v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3e

    :sswitch_28
    const-string v0, "adservices"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3e

    :sswitch_32
    const-string/jumbo v0, "system_server"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3e

    :goto_3d
    const/4 v0, -0x1

    :goto_3e
    packed-switch v0, :pswitch_data_86

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid module: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_60
    sget-object p0, Landroid/app/PropertyInvalidatedCache;->sNamespaceTest:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object p0

    .line 163
    :pswitch_63
    sget-object p0, Landroid/app/PropertyInvalidatedCache;->sNamespaceTelephony:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object p0

    .line 162
    :pswitch_66
    sget-object p0, Landroid/app/PropertyInvalidatedCache;->sNamespaceSystem:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object p0

    .line 161
    :pswitch_69
    sget-object p0, Landroid/app/PropertyInvalidatedCache;->sNamespaceBluetooth:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object p0

    .line 160
    :pswitch_6c
    sget-object p0, Landroid/app/PropertyInvalidatedCache;->sNamespaceAdservices:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object p0

    nop

    :sswitch_data_70
    .sparse-switch
        -0x7ed748ad -> :sswitch_32
        -0x333bb67f -> :sswitch_28
        0x364492 -> :sswitch_1d
        0x2eaeb418 -> :sswitch_12
        0x755ac2ae -> :sswitch_8
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
    .end packed-switch
.end method

.method private static native blacklist nativeGetByteBlock(JI[B)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetByteBlockHash(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetMaxByte(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetMaxNonce(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetNonce(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetByteBlock(JI[B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetNonce(JIJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist registerCache()V
    .registers 4

    .line 1433
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1435
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 1437
    :cond_12
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    monitor-exit v0

    .line 1439
    return-void

    .line 1438
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static blacklist setTestMode(Z)V
    .registers 4

    .line 1469
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    .line 1470
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_6
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-ne v1, p0, :cond_2f

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot set test mode redundantly: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v2

    if-nez v2, :cond_29

    .line 1476
    const-string v2, "PropertyInvalidatedCache"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1474
    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1479
    :cond_2f
    :goto_2f
    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    .line 1480
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->picTestMode()Z

    move-result v1

    if-nez v1, :cond_39

    if-nez p0, :cond_3c

    .line 1481
    :cond_39
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->setTestModeLocked(Z)V

    .line 1483
    :cond_3c
    monitor-exit v0

    .line 1484
    return-void

    .line 1483
    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private static blacklist setTestModeLocked(Z)V
    .registers 3

    .line 1493
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1494
    invoke-virtual {v1, p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    .line 1495
    goto :goto_a

    .line 1496
    :cond_1a
    return-void
.end method

.method private blacklist showDetailed([Ljava/lang/String;)Z
    .registers 9

    .line 1949
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3d

    aget-object v3, p1, v2

    .line 1950
    const-string v4, "-name-has="

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1951
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1952
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-property-has="

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1953
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-property-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3c

    .line 1949
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1954
    :cond_3c
    :goto_3c
    return v6

    .line 1957
    :cond_3d
    return v1
.end method

.method private static blacklist throwIfInvalidCacheKey(Ljava/lang/String;)V
    .registers 4

    .line 289
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 290
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 289
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cache name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfInvalidKey(Ljava/lang/String;)V
    .registers 5

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\""

    const-string v2, "invalid key: \""

    if-eqz v0, :cond_60

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 242
    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 244
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_44
    return-void

    .line 240
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfInvalidModule(Ljava/lang/String;)V
    .registers 4

    .line 226
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 227
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 226
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfNotTest()V
    .registers 2

    .line 1446
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->throwIfNotInstrumenting()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1452
    goto :goto_b

    .line 1447
    :catch_4
    move-exception v0

    .line 1448
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1453
    :goto_b
    return-void

    .line 1449
    :cond_c
    throw v0
.end method

.method public static blacklist uncorkInvalidations(Ljava/lang/String;)V
    .registers 1

    .line 1827
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1828
    return-void
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final blacklist cacheName()Ljava/lang/String;
    .registers 2

    .line 1836
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist clear()V
    .registers 6

    .line 1530
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->clear()V

    .line 1535
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 1536
    monitor-exit v0

    .line 1537
    return-void

    .line 1536
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist corkInvalidations()V
    .registers 2

    .line 1759
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    .line 1760
    return-void
.end method

.method public blacklist disableForCurrentProcess()V
    .registers 2

    .line 1630
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method public blacklist disableInstance()V
    .registers 3

    .line 1570
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1571
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 1572
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1573
    monitor-exit v0

    .line 1574
    return-void

    .line 1573
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist disableLocal()V
    .registers 1

    .line 1620
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 1621
    return-void
.end method

.method public blacklist disableSystemWide()V
    .registers 2

    .line 1738
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    .line 1739
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->disable()V

    .line 1740
    return-void
.end method

.method public blacklist dumpCacheEntries(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2128
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2129
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    .line 2130
    monitor-exit v0

    .line 2131
    return-void

    .line 2130
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist forgetDisableLocal()V
    .registers 4

    .line 1607
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1608
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1609
    monitor-exit v0

    .line 1610
    return-void

    .line 1609
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getNonce()J
    .registers 3

    .line 1197
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getNonceWatcher()Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .registers 4

    .line 1179
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method public blacklist invalidateCache()V
    .registers 2

    .line 1749
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1750
    return-void
.end method

.method public blacklist isDisabled()Z
    .registers 2

    .line 1644
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 1653
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_e

    :cond_d
    move-wide v3, v1

    .line 1654
    :goto_e
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1655
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1656
    const-wide/16 v3, 0x3

    .line 1659
    :cond_1c
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1660
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_36

    .line 1663
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_29
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v3, v3

    aget-wide v6, v5, v3

    add-long/2addr v6, v1

    aput-wide v6, v5, v3

    .line 1665
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw p1

    .line 1667
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1672
    :cond_3b
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1673
    :try_start_3e
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_62

    .line 1674
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v5, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1675
    if-nez v5, :cond_59

    .line 1676
    iget-boolean v7, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v7, :cond_58

    .line 1677
    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v6, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_5a

    .line 1679
    :cond_58
    goto :goto_5a

    .line 1682
    :cond_59
    const/4 v6, 0x1

    .line 1684
    :goto_5a
    if-eqz v6, :cond_69

    .line 1685
    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v7, v1

    iput-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_69

    .line 1688
    :cond_62
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1689
    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 1690
    nop

    .line 1691
    const/4 v5, 0x0

    .line 1693
    :cond_69
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3e .. :try_end_6a} :catchall_98

    .line 1695
    if-eqz v6, :cond_6d

    .line 1696
    return-object v5

    .line 1700
    :cond_6d
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1701
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1704
    :try_start_74
    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_8e

    .line 1705
    if-nez v0, :cond_89

    iget-boolean v3, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v3, :cond_81

    goto :goto_89

    .line 1707
    :cond_81
    if-nez v0, :cond_8e

    .line 1709
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    goto :goto_8e

    .line 1706
    :cond_89
    :goto_89
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v3, p1, v0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1712
    :cond_8e
    :goto_8e
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 1713
    monitor-exit v5

    .line 1714
    return-object v0

    .line 1713
    :catchall_95
    move-exception p1

    monitor-exit v5
    :try_end_97
    .catchall {:try_start_74 .. :try_end_97} :catchall_95

    throw p1

    .line 1693
    :catchall_98
    move-exception p1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p1
.end method

.method protected blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1847
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 1548
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()I
    .registers 3

    .line 1877
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1878
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1879
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist testPropertyName()V
    .registers 4

    .line 1507
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    .line 1508
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_6
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-eqz v1, :cond_12

    .line 1512
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    .line 1513
    monitor-exit v0

    .line 1514
    return-void

    .line 1510
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot test property name with test mode off"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1513
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist uncorkInvalidations()V
    .registers 2

    .line 1769
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1770
    return-void
.end method
