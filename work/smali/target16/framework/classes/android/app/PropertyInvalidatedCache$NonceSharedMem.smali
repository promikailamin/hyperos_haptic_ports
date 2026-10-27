.class final Landroid/app/PropertyInvalidatedCache$NonceSharedMem;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSharedMem"
.end annotation


# instance fields
.field private volatile blacklist mHandle:I

.field private final blacklist mShortName:Ljava/lang/String;

.field private volatile blacklist mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V
    .registers 3

    .line 981
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    .line 974
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 982
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$CacheKey;->-$$Nest$fgetkey(Landroid/app/PropertyInvalidatedCache$CacheKey;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    .line 983
    return-void
.end method

.method private blacklist initializeLocked(Z)I
    .registers 4

    .line 993
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 994
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 995
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v0, :cond_14

    .line 996
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    .line 997
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v0, :cond_14

    .line 998
    return v1

    .line 1001
    :cond_14
    if-eqz p1, :cond_1d

    .line 1002
    iget-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->storeName(Ljava/lang/String;)I

    .line 1004
    :cond_1d
    iget-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getHandleForName(Ljava/lang/String;)I

    move-result v0

    .line 1005
    if-ne v0, v1, :cond_28

    .line 1006
    return v1

    .line 1009
    :cond_28
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1011
    :cond_2a
    return v0
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .registers 4

    .line 1019
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1020
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 1021
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1022
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initializeLocked(Z)I

    move-result v0

    .line 1023
    if-ne v0, v1, :cond_13

    .line 1024
    monitor-exit v2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1026
    :cond_13
    monitor-exit v2

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v0

    .line 1028
    :cond_18
    :goto_18
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getNonce(I)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .registers 6

    .line 1035
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1036
    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    .line 1037
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1038
    const/4 v0, 0x1

    :try_start_9
    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initializeLocked(Z)I

    move-result v0

    .line 1039
    if-eq v0, v1, :cond_16

    .line 1045
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->setNonce(IJ)Z

    .line 1046
    monitor-exit v2

    return-void

    .line 1040
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to assign nonce handle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1041
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1047
    :catchall_34
    move-exception p1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw p1

    .line 1049
    :cond_37
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->setNonce(IJ)Z

    .line 1050
    return-void
.end method
