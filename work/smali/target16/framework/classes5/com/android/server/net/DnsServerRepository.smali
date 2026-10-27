.class Lcom/android/server/net/DnsServerRepository;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"


# static fields
.field public static final blacklist NUM_CURRENT_SERVERS:I = 0x3

.field public static final blacklist NUM_SERVERS:I = 0xc

.field public static final blacklist TAG:Ljava/lang/String; = "DnsServerRepository"


# instance fields
.field private blacklist mAllServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    .line 298
    return-void
.end method

.method private declared-synchronized blacklist updateCurrentServers()Z
    .registers 8

    monitor-enter p0

    .line 355
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 356
    nop

    .line 359
    iget-object v2, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_f
    if-ltz v2, :cond_3e

    .line 360
    const/16 v4, 0xc

    if-ge v2, v4, :cond_23

    iget-object v4, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/DnsServerEntry;

    iget-wide v4, v4, Lcom/android/server/net/DnsServerEntry;->expiry:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_3e

    .line 361
    :cond_23
    iget-object v4, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/DnsServerEntry;

    .line 362
    iget-object v5, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v5, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v4, v4, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 359
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 372
    :cond_3e
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/DnsServerEntry;

    .line 373
    iget-object v2, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_63

    .line 374
    iget-object v2, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v1, v1, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_65

    or-int/2addr v3, v1

    .line 378
    goto :goto_44

    .line 379
    :cond_63
    monitor-exit p0

    return v3

    .line 354
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method private declared-synchronized blacklist updateExistingEntry(Ljava/net/InetAddress;J)Z
    .registers 5

    monitor-enter p0

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/DnsServerEntry;

    .line 347
    if-eqz p1, :cond_10

    .line 348
    iput-wide p2, p1, Lcom/android/server/net/DnsServerEntry;->expiry:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 349
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 351
    :cond_10
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 345
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addServers(J[Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    .line 314
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr p1, v0

    .line 319
    array-length v2, p3

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_33

    aget-object v4, p3, v3
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3e

    .line 322
    :try_start_f
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_13} :catch_2e
    .catchall {:try_start_f .. :try_end_13} :catchall_3e

    .line 325
    nop

    .line 327
    :try_start_14
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/net/DnsServerRepository;->updateExistingEntry(Ljava/net/InetAddress;J)Z

    move-result v5

    if-nez v5, :cond_30

    .line 330
    cmp-long v5, p1, v0

    if-lez v5, :cond_30

    .line 331
    new-instance v5, Lcom/android/server/net/DnsServerEntry;

    invoke-direct {v5, v4, p1, p2}, Lcom/android/server/net/DnsServerEntry;-><init>(Ljava/net/InetAddress;J)V

    .line 332
    iget-object v6, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v6, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 323
    :catch_2e
    move-exception v4

    .line 324
    nop

    .line 319
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 339
    :cond_33
    iget-object p1, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 342
    invoke-direct {p0}, Lcom/android/server/net/DnsServerRepository;->updateCurrentServers()Z

    move-result p1
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return p1

    .line 313
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public declared-synchronized blacklist setDnsServersOn(Landroid/net/LinkProperties;)V
    .registers 3

    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 303
    monitor-exit p0

    return-void

    .line 301
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
