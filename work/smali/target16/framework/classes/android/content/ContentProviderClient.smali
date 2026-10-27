.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$NotRespondingRunnable;,
        Landroid/content/ContentProviderClient$CursorWrapperInner;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static greylist-max-o sAnrHandler:Landroid/os/Handler;


# instance fields
.field private greylist-max-o mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private greylist-max-o mAnrTimeout:J

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mAuthority:Ljava/lang/String;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mContentResolver:Landroid/content/ContentResolver;

.field private final greylist-max-p mPackageName:Ljava/lang/String;

.field private final greylist-max-o mStable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentProvider(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentResolver(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 104
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    .line 106
    iget-object p2, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 109
    iput-object p3, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    .line 110
    iput-boolean p4, p0, Landroid/content/ContentProviderClient;->mStable:Z

    .line 112
    iget-object p1, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "ContentProviderClient.close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .registers 5

    .line 98
    const-string/jumbo v0, "unknown"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method private greylist-max-o afterRemote()V
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_b

    .line 160
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    :cond_b
    return-void
.end method

.method private greylist-max-o beforeRemote()V
    .registers 5

    .line 153
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_d

    .line 154
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_d
    return-void
.end method

.method private greylist-max-o closeInternal()Z
    .registers 4

    .line 631
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 632
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 635
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 637
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_21

    .line 638
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    .line 640
    :cond_21
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    .line 643
    :cond_2a
    return v2
.end method

.method public static blacklist closeQuietly(Landroid/content/ContentProviderClient;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 677
    return-void
.end method

.method public static greylist-max-o releaseQuietly(Landroid/content/ContentProviderClient;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 683
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 570
    const-string/jumbo v0, "operations"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 572
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 574
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 582
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 574
    return-object p1

    .line 582
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 576
    :catch_17
    move-exception p1

    .line 577
    :try_start_18
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_23

    .line 578
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 580
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 582
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 583
    throw p1
.end method

.method public whitelist applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string v0, "initialValues"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 368
    :try_start_e
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1
    :try_end_16
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_16} :catch_1c
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 375
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 368
    return p1

    .line 375
    :catchall_1a
    move-exception p1

    goto :goto_29

    .line 369
    :catch_1c
    move-exception p1

    .line 370
    :try_start_1d
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_28

    .line 371
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 373
    :cond_28
    throw p1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_1a

    .line 375
    :goto_29
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 376
    throw p1
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v0, "method"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 601
    :try_start_e
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_1a} :catch_21
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    .line 609
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 601
    return-object p1

    .line 609
    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto :goto_2f

    .line 603
    :catch_21
    move-exception v0

    move-object p1, v0

    .line 604
    :try_start_23
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_2e

    .line 605
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 607
    :cond_2e
    throw p1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_1e

    .line 609
    :goto_2f
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 610
    throw p1
.end method

.method public final whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 258
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 265
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 258
    return-object p1

    .line 265
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 259
    :catch_17
    move-exception p1

    .line 260
    :try_start_18
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_23

    .line 261
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 263
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 265
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 266
    throw p1
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 321
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 329
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 321
    return p1

    .line 329
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 323
    :catch_17
    move-exception p1

    .line 324
    :try_start_18
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_23

    .line 325
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 327
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 329
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 330
    throw p1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 619
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    .line 620
    return-void
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 392
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 399
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 392
    return p1

    .line 399
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 393
    :catch_17
    move-exception p1

    .line 394
    :try_start_18
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_23

    .line 395
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 397
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 399
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 400
    throw p1
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {p2, p3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 654
    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 656
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 657
    throw v0
.end method

.method public whitelist getLocalContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .line 670
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 240
    :try_start_f
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_17} :catch_1d
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 247
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 240
    return-object p1

    .line 247
    :catchall_1b
    move-exception p1

    goto :goto_2a

    .line 241
    :catch_1d
    move-exception p1

    .line 242
    :try_start_1e
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_29

    .line 243
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 245
    :cond_29
    throw p1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_1b

    .line 247
    :goto_2a
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 248
    throw p1
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 220
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 227
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 220
    return-object p1

    .line 227
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 221
    :catch_17
    move-exception p1

    .line 222
    :try_start_18
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_23

    .line 223
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 225
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 227
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 228
    throw p1
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 347
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 355
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 347
    return-object p1

    .line 355
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 349
    :catch_17
    move-exception p1

    .line 350
    :try_start_18
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_23

    .line 351
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 353
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 355
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 356
    throw p1
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 494
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 499
    nop

    .line 500
    if-eqz p3, :cond_1f

    .line 501
    :try_start_12
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 502
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 503
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_20

    .line 500
    :cond_1f
    const/4 v0, 0x0

    .line 505
    :goto_20
    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, v1, p1, p2, v0}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_28} :catch_2e
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 513
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 505
    return-object p1

    .line 513
    :catchall_2c
    move-exception p1

    goto :goto_3b

    .line 507
    :catch_2e
    move-exception p1

    .line 508
    :try_start_2f
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_3a

    .line 509
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 511
    :cond_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_2c

    .line 513
    :goto_3b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 514
    throw p1
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 450
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 455
    nop

    .line 456
    if-eqz p3, :cond_1f

    .line 457
    :try_start_12
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 458
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 459
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_20

    .line 456
    :cond_1f
    const/4 v0, 0x0

    .line 461
    :goto_20
    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, v1, p1, p2, v0}, Landroid/content/IContentProvider;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_28} :catch_2e
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 468
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 461
    return-object p1

    .line 468
    :catchall_2c
    move-exception p1

    goto :goto_3b

    .line 462
    :catch_2e
    move-exception p1

    .line 463
    :try_start_2f
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_3a

    .line 464
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 466
    :cond_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_2c

    .line 468
    :goto_3b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 469
    throw p1
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 535
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 540
    nop

    .line 541
    if-eqz p4, :cond_20

    .line 542
    :try_start_12
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 543
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 544
    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    move-object v6, v0

    goto :goto_22

    .line 541
    :cond_20
    const/4 v0, 0x0

    move-object v6, v0

    .line 546
    :goto_22
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_2d
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_2d} :catch_34
    .catchall {:try_start_12 .. :try_end_2d} :catchall_31

    .line 554
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 546
    return-object p1

    .line 554
    :catchall_31
    move-exception v0

    move-object p1, v0

    goto :goto_42

    .line 548
    :catch_34
    move-exception v0

    move-object p1, v0

    .line 549
    :try_start_36
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_41

    .line 550
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 552
    :cond_41
    throw p1
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_31

    .line 554
    :goto_42
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 555
    throw p1
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderClient;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 190
    nop

    .line 191
    const/4 v0, 0x0

    if-eqz p4, :cond_1b

    .line 192
    :try_start_d
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 193
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 194
    invoke-virtual {p4, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    move-object v6, v1

    goto :goto_1c

    .line 191
    :cond_1b
    move-object v6, v0

    .line 196
    :goto_1c
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_27
    .catch Landroid/os/DeadObjectException; {:try_start_d .. :try_end_27} :catch_3a
    .catchall {:try_start_d .. :try_end_27} :catchall_37

    .line 199
    if-nez p1, :cond_2e

    .line 200
    nop

    .line 209
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 200
    return-object v0

    .line 202
    :cond_2e
    :try_start_2e
    new-instance p2, Landroid/content/ContentProviderClient$CursorWrapperInner;

    invoke-direct {p2, p0, p1}, Landroid/content/ContentProviderClient$CursorWrapperInner;-><init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    :try_end_33
    .catch Landroid/os/DeadObjectException; {:try_start_2e .. :try_end_33} :catch_3a
    .catchall {:try_start_2e .. :try_end_33} :catchall_37

    .line 209
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 202
    return-object p2

    .line 209
    :catchall_37
    move-exception v0

    move-object p1, v0

    goto :goto_48

    .line 203
    :catch_3a
    move-exception v0

    move-object p1, v0

    .line 204
    :try_start_3c
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_47

    .line 205
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 207
    :cond_47
    throw p1
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_37

    .line 209
    :goto_48
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 210
    throw p1
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    nop

    .line 177
    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 178
    invoke-virtual {p0, p1, p2, p3, p6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 295
    nop

    .line 296
    if-eqz p3, :cond_19

    .line 297
    :try_start_c
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 298
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_1a

    .line 296
    :cond_19
    const/4 v0, 0x0

    .line 301
    :goto_1a
    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, v1, p1, p2, v0}, Landroid/content/IContentProvider;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result p1
    :try_end_22
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_22} :catch_28
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    .line 309
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 301
    return p1

    .line 309
    :catchall_26
    move-exception p1

    goto :goto_35

    .line 303
    :catch_28
    move-exception p1

    .line 304
    :try_start_29
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_34

    .line 305
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 307
    :cond_34
    throw p1
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_26

    .line 309
    :goto_35
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 310
    throw p1
.end method

.method public whitelist release()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist setDetectNotResponding(J)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    const-class v0, Landroid/content/ContentProviderClient;

    monitor-enter v0

    .line 129
    :try_start_3
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    .line 131
    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    const/4 p2, 0x0

    if-lez p1, :cond_31

    .line 132
    iget-object p1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez p1, :cond_17

    .line 133
    new-instance p1, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-direct {p1, p0, p2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient-IA;)V

    iput-object p1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 135
    :cond_17
    sget-object p1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez p1, :cond_27

    .line 136
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v1, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object p1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    .line 141
    :cond_27
    iget-object p1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_3c

    .line 143
    :cond_31
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 147
    iget-object p1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 149
    :goto_3c
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public final whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 276
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 283
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 276
    return-object p1

    .line 283
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 277
    :catch_17
    move-exception p1

    .line 278
    :try_start_18
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_23

    .line 279
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 281
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 283
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 284
    throw p1
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 417
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p1
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 424
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 417
    return p1

    .line 424
    :catchall_15
    move-exception p1

    goto :goto_24

    .line 418
    :catch_17
    move-exception p1

    .line 419
    :try_start_18
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_23

    .line 420
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 422
    :cond_23
    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 424
    :goto_24
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 425
    throw p1
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {p3, p4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method
