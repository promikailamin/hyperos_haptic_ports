.class final Landroid/app/PropertyInvalidatedCache$NonceSysprop;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSysprop"
.end annotation


# instance fields
.field private volatile blacklist mHandle:Landroid/os/SystemProperties$Handle;

.field private final blacklist mPropertyName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V
    .registers 3

    .line 930
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    .line 931
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$CacheKey;->-$$Nest$fgetnamespace(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$Namespace;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache$Namespace;->-$$Nest$fgetmName(Landroid/app/PropertyInvalidatedCache$Namespace;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$CacheKey;->-$$Nest$fgetkey(Landroid/app/PropertyInvalidatedCache$CacheKey;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mPropertyName:Ljava/lang/String;

    .line 932
    return-void
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .registers 5

    .line 942
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_20

    .line 943
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_9
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    if-nez v3, :cond_1b

    .line 945
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mPropertyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    .line 946
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    if-nez v3, :cond_1b

    .line 947
    monitor-exit v0

    return-wide v1

    .line 950
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1

    .line 952
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mHandle:Landroid/os/SystemProperties$Handle;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .registers 3

    .line 960
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 961
    iget-object p2, p0, Landroid/app/PropertyInvalidatedCache$NonceSysprop;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/SystemPropertySetter;->setWithRetry(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void
.end method
