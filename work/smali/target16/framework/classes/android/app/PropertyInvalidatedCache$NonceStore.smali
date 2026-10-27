.class public Landroid/app/PropertyInvalidatedCache$NonceStore;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonceStore"
.end annotation


# static fields
.field public static final blacklist INVALID_NONCE_INDEX:I = -0x1

.field private static final blacklist MAX_STRING_LENGTH:I = 0x3f

.field private static blacklist sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

.field private static blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBlockHash:I

.field private volatile blacklist mHighestIndex:I

.field private final blacklist mLock:Ljava/lang/Object;

.field public final blacklist mMaxByte:I

.field public final blacklist mMaxNonce:I

.field private final blacklist mMutable:Z

.field private blacklist mPartialReads:I

.field private final blacklist mPtr:J

.field private blacklist mStringBytes:I

.field private final blacklist mStringHandle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStringUpdated:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(JZ)V
    .registers 6

    .line 2186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    .line 2172
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2235
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2239
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    .line 2243
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2247
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    .line 2251
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    .line 2187
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    .line 2188
    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMutable:Z

    .line 2189
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetMaxByte(J)I

    move-result p3

    iput p3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    .line 2190
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetMaxNonce(J)I

    move-result p1

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxNonce:I

    .line 2191
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->refreshStringBlockLocked()V

    .line 2192
    return-void
.end method

.method private blacklist appendStringToMapLocked(Ljava/lang/String;[B)V
    .registers 7

    .line 2278
    const/4 v0, 0x0

    move v1, v0

    .line 2279
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_f

    aget-byte v2, p2, v1

    if-eqz v2, :cond_f

    .line 2280
    aget-byte v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_2

    .line 2282
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2284
    array-length v2, p1

    add-int/2addr v2, v1

    array-length v3, p2

    if-lt v2, v3, :cond_19

    .line 2286
    return-void

    .line 2289
    :cond_19
    array-length v2, p1

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 2290
    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2291
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2292
    return-void
.end method

.method static blacklist getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;
    .registers 5

    .line 2202
    sget-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2203
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-nez v1, :cond_21

    .line 2205
    :try_start_7
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v1

    .line 2206
    if-nez v1, :cond_f

    .line 2207
    const/4 v1, 0x0

    goto :goto_1d

    .line 2208
    :cond_f
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->getSystemNonceBlock()J

    move-result-wide v3

    .line 2209
    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->isMutable()Z

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Landroid/app/PropertyInvalidatedCache$NonceStore;-><init>(JZ)V

    move-object v1, v2

    :goto_1d
    sput-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_1f} :catch_20
    .catchall {:try_start_7 .. :try_end_1f} :catchall_25

    .line 2213
    goto :goto_21

    .line 2210
    :catch_20
    move-exception v1

    .line 2215
    :cond_21
    :goto_21
    :try_start_21
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

    monitor-exit v0

    return-object v1

    .line 2216
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw v1
.end method

.method static blacklist maybeGetInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;
    .registers 2

    .line 2222
    sget-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

    monitor-exit v0

    return-object v1

    .line 2224
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private blacklist refreshStringBlockLocked()V
    .registers 5

    .line 2298
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlockHash(J)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2300
    return-void

    .line 2302
    :cond_b
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    new-array v0, v0, [B

    .line 2303
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    invoke-static {v1, v2, v3, v0}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlock(JI[B)I

    move-result v1

    .line 2304
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    if-eq v1, v2, :cond_27

    .line 2309
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2310
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2311
    return-void

    .line 2314
    :cond_27
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    .line 2315
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2316
    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->updateStringMapLocked([B)V

    .line 2317
    return-void
.end method

.method private blacklist throwIfBadHandle(I)V
    .registers 5

    .line 2334
    if-ltz p1, :cond_7

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    if-gt p1, v0, :cond_7

    .line 2337
    return-void

    .line 2335
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nonce handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfBadString(Ljava/lang/String;)V
    .registers 2

    .line 2321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 2324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_f

    .line 2328
    return-void

    .line 2325
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot store a string longer than 63"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2322
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot store an empty string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist throwIfImmutable()V
    .registers 3

    .line 2343
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMutable:Z

    if-eqz v0, :cond_5

    .line 2346
    return-void

    .line 2344
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "write permission denied"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateStringMapLocked([B)V
    .registers 7

    .line 2259
    nop

    .line 2260
    const/4 v0, 0x0

    move v1, v0

    .line 2261
    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_2a

    aget-byte v2, p1, v0

    if-eqz v2, :cond_2a

    .line 2262
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    if-le v1, v2, :cond_22

    .line 2264
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, p1, v0

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2265
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2268
    :cond_22
    aget-byte v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 2269
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2271
    :cond_2a
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    .line 2272
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8

    .line 2403
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2404
    :try_start_3
    const-string v1, "%sStringsMapped: %d, BytesUsed: %d"

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2404
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    const-string v1, "%sPartialReads: %d, StringUpdates: %d"

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2409
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2407
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2411
    if-eqz p3, :cond_6b

    .line 2412
    iget-object p3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_41
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2413
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2414
    const-string v3, "%sHandle:%d Name:%s"

    .line 2415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2414
    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2416
    goto :goto_41

    .line 2418
    :cond_6b
    monitor-exit v0

    .line 2419
    return-void

    .line 2418
    :catchall_6d
    move-exception p1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public blacklist getHandleForName(Ljava/lang/String;)I
    .registers 4

    .line 2375
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2376
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2377
    if-nez v1, :cond_19

    .line 2378
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->refreshStringBlockLocked()V

    .line 2379
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 2381
    :cond_19
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_21

    :cond_20
    const/4 p1, -0x1

    :goto_21
    monitor-exit v0

    return p1

    .line 2382
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public blacklist getNonce(I)J
    .registers 4

    .line 2395
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadHandle(I)V

    .line 2396
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetNonce(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setNonce(IJ)Z
    .registers 6

    .line 2388
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadHandle(I)V

    .line 2389
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfImmutable()V

    .line 2390
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeSetNonce(JIJ)Z

    move-result p1

    return p1
.end method

.method public blacklist storeName(Ljava/lang/String;)I
    .registers 7

    .line 2354
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2355
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2356
    if-nez v1, :cond_45

    .line 2357
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfImmutable()V

    .line 2358
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadString(Ljava/lang/String;)V

    .line 2359
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxNonce:I

    if-ge v1, v2, :cond_3c

    .line 2362
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    new-array v1, v1, [B

    .line 2363
    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlock(JI[B)I

    .line 2364
    invoke-direct {p0, p1, v1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->appendStringToMapLocked(Ljava/lang/String;[B)V

    .line 2365
    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    iget v4, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    invoke-static {v2, v3, v4, v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeSetByteBlock(JI[B)V

    .line 2366
    invoke-direct {p0, v1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->updateStringMapLocked([B)V

    .line 2367
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_45

    .line 2360
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "nonce limit exceeded"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2369
    :cond_45
    :goto_45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v0

    return p1

    .line 2370
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p1
.end method
