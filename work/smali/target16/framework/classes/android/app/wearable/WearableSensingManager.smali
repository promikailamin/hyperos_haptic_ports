.class public Landroid/app/wearable/WearableSensingManager;
.super Ljava/lang/Object;
.source "WearableSensingManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/WearableSensingManager$StatusCode;
    }
.end annotation


# static fields
.field static final blacklist ALLOW_WEARABLE_SENSING_SERVICE_FILE_READ:J = 0x13b6193aL

.field public static final blacklist CONNECTION_ID_INVALID:I = -0x1

.field private static final blacklist CONNECTION_ID_PLACEHOLDER:I = -0x2

.field public static final blacklist EXTRA_WEARABLE_SENSING_DATA_REQUEST:Ljava/lang/String; = "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

.field public static final whitelist STATUS_ACCESS_DENIED:I = 0x5

.field public static final whitelist STATUS_CHANNEL_ERROR:I = 0x7

.field public static final whitelist STATUS_MAX_CONCURRENT_CONNECTIONS_EXCEEDED:I = 0x9

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingStatusBundleKey"

.field public static final whitelist STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_UNSUPPORTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_UNSUPPORTED_DATA_TYPE:I = 0x8

.field public static final whitelist STATUS_UNSUPPORTED_OPERATION:I = 0x6

.field public static final whitelist STATUS_WEARABLE_UNAVAILABLE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/wearable/IWearableSensingManager;

.field private final blacklist mWearableConnectionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/wearable/WearableConnection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1N1-ahcdKgRbrJYFjidNq70uN-M(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingManager;->lambda$provideConnection$0(Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 201
    const-class v0, Landroid/app/wearable/WearableSensingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/wearable/IWearableSensingManager;)V
    .registers 4

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    .line 214
    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 216
    return-void
.end method

.method private static blacklist createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    .line 706
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private blacklist createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
    .registers 3

    .line 719
    new-instance v0, Landroid/app/wearable/WearableSensingManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$1;-><init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static whitelist getDataRequestFromIntent(Landroid/content/Intent;)Landroid/app/wearable/WearableSensingDataRequest;
    .registers 3

    .line 197
    const-string v0, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    const-class v1, Landroid/app/wearable/WearableSensingDataRequest;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/wearable/WearableSensingDataRequest;

    return-object p0
.end method

.method static synthetic blacklist lambda$createStatusCallback$1(Ljava/util/function/Consumer;I)V
    .registers 2

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createStatusCallback$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6

    .line 708
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 711
    :try_start_a
    new-instance v2, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw p0
.end method

.method private synthetic blacklist lambda$provideConnection$0(Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V
    .registers 5

    .line 329
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 330
    sget-object p2, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surpassed status callback for removed connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 336
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 337
    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->onConnectionAccepted()V

    goto :goto_38

    .line 339
    :cond_2c
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/app/wearable/WearableConnection;->onError(I)V

    .line 342
    :goto_38
    return-void
.end method


# virtual methods
.method public whitelist getAvailableConnectionCount()I
    .registers 2

    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v0}, Landroid/app/wearable/IWearableSensingManager;->getAvailableConnectionCount()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 227
    :catch_7
    move-exception v0

    .line 228
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist provideConnection(Landroid/app/wearable/WearableConnection;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 325
    new-instance v0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;)V

    .line 326
    invoke-static {p2, v0}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    .line 349
    :try_start_9
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 352
    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->getConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 353
    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 354
    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    .line 351
    invoke-interface {v1, v2, v3, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result p2

    .line 356
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2e} :catch_30

    .line 361
    nop

    .line 362
    return-void

    .line 359
    :catch_30
    move-exception p1

    .line 360
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provideConnection(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    .line 268
    :try_start_4
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 269
    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    .line 268
    invoke-interface {v0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_f
    move-exception p1

    .line 271
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/SharedMemory;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 529
    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    .line 530
    iget-object p4, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p4, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 533
    nop

    .line 534
    return-void

    .line 531
    :catch_b
    move-exception p1

    .line 532
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provideDataStream(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    .line 491
    nop

    .line 492
    const-wide/32 v0, 0x13b6193a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 493
    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    goto :goto_14

    .line 492
    :cond_13
    const/4 p2, 0x0

    .line 496
    :goto_14
    :try_start_14
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 500
    nop

    .line 501
    return-void

    .line 498
    :catch_1b
    move-exception p1

    .line 499
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 452
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    .line 454
    :try_start_4
    iget-object p4, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p4, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 458
    nop

    .line 459
    return-void

    .line 456
    :catch_b
    move-exception p1

    .line 457
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 593
    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    .line 594
    iget-object p4, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p4, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 598
    nop

    .line 599
    return-void

    .line 596
    :catch_b
    move-exception p1

    .line 597
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeAllConnections()V
    .registers 2

    .line 424
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 426
    :try_start_5
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v0}, Landroid/app/wearable/IWearableSensingManager;->removeAllConnections()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 429
    nop

    .line 430
    return-void

    .line 427
    :catch_c
    move-exception v0

    .line 428
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist removeConnection(Landroid/app/wearable/WearableConnection;)V
    .registers 5

    .line 389
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 390
    const-string v0, "The provided connection was never provided or was already removed."

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 394
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_34

    .line 400
    :try_start_1a
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/app/wearable/IWearableSensingManager;->removeConnection(I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 406
    nop

    .line 407
    return-void

    .line 401
    :cond_28
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2e} :catch_2e

    .line 404
    :catch_2e
    move-exception p1

    .line 405
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 395
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to remove connection before provideConnection returns. The connection will not be removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_3c
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startHotwordRecognition(Landroid/content/ComponentName;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    .line 680
    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p2

    .line 679
    invoke-interface {v0, p1, p2}, Landroid/app/wearable/IWearableSensingManager;->startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 683
    nop

    .line 684
    return-void

    .line 681
    :catch_b
    move-exception p1

    .line 682
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist stopHotwordRecognition(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 698
    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-static {p1, p2}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/app/wearable/IWearableSensingManager;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 701
    nop

    .line 702
    return-void

    .line 699
    :catch_b
    move-exception p1

    .line 700
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 619
    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    .line 620
    iget-object p4, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p4, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 624
    nop

    .line 625
    return-void

    .line 622
    :catch_b
    move-exception p1

    .line 623
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
