.class Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/IdmapDaemon$Connection;
    }
.end annotation


# static fields
.field private static final IDMAP_DAEMON:Ljava/lang/String; = "idmap2d"

.field private static final SERVICE_CONNECT_INTERVAL_SLEEP_MS:I = 0x5

.field private static final SERVICE_CONNECT_TIMEOUT_MS:I = 0x1388

.field private static final SERVICE_TIMEOUT_MS:I = 0x2710

.field private static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field private final mIdmapToken:Ljava/lang/Object;

.field private final mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mService:Landroid/os/IIdmap2;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-void
.end method

.method static bridge synthetic -$$Nest$smstopIdmapService()V
    .registers 0

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->stopIdmapService()V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-void
.end method

.method private connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 313
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V

    monitor-exit v0

    return-object v1

    .line 316
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->getIdmapService()Landroid/os/IBinder;

    move-result-object v1

    .line 317
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_27

    .line 318
    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v3, p0, v2, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V

    monitor-exit v0

    return-object v3

    .line 321
    :cond_27
    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 322
    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v4, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V

    monitor-exit v0

    return-object v3

    .line 323
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private getIdmapService()Landroid/os/IBinder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    :try_start_0
    const-string v0, "idmap2d"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 274
    goto :goto_1c

    .line 269
    :catch_6
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to set system property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 271
    const-string v1, "OverlayManager"

    const-string v2, "Failed to enable idmap2 daemon"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 276
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 277
    .local v0, "endMillis":J
    :goto_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    const-string v3, "idmap"

    const/4 v4, 0x0

    if-gtz v2, :cond_45

    .line 278
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 279
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_3d

    .line 280
    new-instance v3, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 282
    return-object v2

    .line 286
    :cond_3d
    const-wide/16 v3, 0x5

    :try_start_3f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_43

    .line 288
    goto :goto_44

    .line 287
    :catch_43
    move-exception v3

    .line 289
    .end local v2    # "binder":Landroid/os/IBinder;
    :goto_44
    goto :goto_23

    .line 291
    :cond_45
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    const/16 v4, 0x1388

    .line 293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    .line 292
    const-string v3, "Failed to connect to \'%s\' in %d milliseconds"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getInstance()Lcom/android/server/om/IdmapDaemon;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v0, :cond_b

    .line 118
    new-instance v0, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v0}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 120
    :cond_b
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    return-object v0
.end method

.method static synthetic lambda$getIdmapService$0()V
    .registers 3

    .line 281
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "idmap"

    aput-object v2, v0, v1

    const-string/jumbo v1, "service \'%s\' died"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static stopIdmapService()V
    .registers 3

    .line 298
    :try_start_0
    const-string v0, "idmap2d"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 303
    goto :goto_e

    .line 299
    :catch_6
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OverlayManager"

    const-string v2, "Failed to disable idmap2 daemon"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_e
    return-void
.end method


# virtual methods
.method createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .registers 7
    .param p1, "overlay"    # Landroid/os/FabricatedOverlayInternal;

    .line 187
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_2f

    .line 188
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 189
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_19

    .line 190
    const-string v4, "idmap2d service is not ready for createFabricatedOverlay()"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    .line 191
    nop

    .line 195
    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_2f

    .line 191
    :cond_18
    return-object v1

    .line 194
    :cond_19
    :try_start_19
    invoke-interface {v3, p1}, Landroid/os/IIdmap2;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_23

    .line 195
    if-eqz v2, :cond_22

    :try_start_1f
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2f

    .line 194
    :cond_22
    return-object v4

    .line 187
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_23
    move-exception v3

    if-eqz v2, :cond_2e

    :try_start_26
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v4

    :try_start_2b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlay":Landroid/os/FabricatedOverlayInternal;
    :cond_2e
    :goto_2e
    throw v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 195
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlay":Landroid/os/FabricatedOverlayInternal;
    :catch_2f
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to fabricate overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    return-object v1
.end method

.method createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .registers 23
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "overlayPath"    # Ljava/lang/String;
    .param p3, "overlayName"    # Ljava/lang/String;
    .param p4, "policies"    # I
    .param p5, "enforce"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const-string v0, ", "

    const-string v1, "\", \""

    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    .line 127
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 128
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_73

    .line 129
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idmap2d service is not ready for createIdmap(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_9a

    move-object/from16 v11, p1

    :try_start_1d
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_71

    move-object/from16 v12, p2

    :try_start_27
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_6f

    move-object/from16 v13, p3

    :try_start_31
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_6d

    move/from16 v14, p4

    :try_start_3d
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_6b

    move/from16 v15, p5

    :try_start_47
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_69

    move/from16 v1, p6

    :try_start_51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_98

    .line 132
    const/4 v0, 0x0

    .line 137
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 132
    :cond_68
    return-object v0

    .line 126
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_69
    move-exception v0

    goto :goto_a5

    :catchall_6b
    move-exception v0

    goto :goto_a3

    :catchall_6d
    move-exception v0

    goto :goto_a1

    :catchall_6f
    move-exception v0

    goto :goto_9f

    :catchall_71
    move-exception v0

    goto :goto_9d

    .line 135
    .restart local v3    # "idmap2":Landroid/os/IIdmap2;
    :cond_73
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v1, p6

    :try_start_7f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_98

    .line 137
    if-eqz v2, :cond_97

    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 135
    :cond_97
    return-object v0

    .line 126
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_98
    move-exception v0

    goto :goto_a7

    :catchall_9a
    move-exception v0

    move-object/from16 v11, p1

    :goto_9d
    move-object/from16 v12, p2

    :goto_9f
    move-object/from16 v13, p3

    :goto_a1
    move/from16 v14, p4

    :goto_a3
    move/from16 v15, p5

    :goto_a5
    move/from16 v1, p6

    :goto_a7
    move-object v3, v0

    if-eqz v2, :cond_b3

    :try_start_aa
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b3

    :catchall_ae
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b3
    :goto_b3
    throw v3
.end method

.method deleteFabricatedOverlay(Ljava/lang/String;)Z
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 202
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_46

    .line 203
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 204
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_30

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idmap2d service is not ready for deleteFabricatedOverlay(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_3a

    .line 207
    nop

    .line 211
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_46

    .line 207
    :cond_2f
    return v1

    .line 210
    :cond_30
    :try_start_30
    invoke-interface {v3, p1}, Landroid/os/IIdmap2;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v4
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_3a

    .line 211
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_46

    .line 210
    :cond_39
    return v4

    .line 202
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_3a
    move-exception v3

    if-eqz v2, :cond_45

    :try_start_3d
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v4

    :try_start_42
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "path":Ljava/lang/String;
    :cond_45
    :goto_45
    throw v3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_46

    .line 211
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_46
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete fabricated overlay \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return v1
.end method

.method dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "overlayPath"    # Ljava/lang/String;

    .line 250
    const-string v0, "OverlayManager"

    const-string v1, "idmap2d service is not ready for dumpIdmap()"

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_33

    .line 251
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 252
    .local v3, "service":Landroid/os/IIdmap2;
    if-nez v3, :cond_19

    .line 253
    move-object v4, v1

    .line 254
    .local v4, "dumpText":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_27

    .line 255
    nop

    .line 259
    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_33

    .line 255
    :cond_18
    return-object v1

    .line 257
    .end local v4    # "dumpText":Ljava/lang/String;
    :cond_19
    :try_start_19
    invoke-interface {v3, p1}, Landroid/os/IIdmap2;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "dump":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_27

    .line 259
    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_33

    .line 258
    :cond_26
    return-object v4

    .line 250
    .end local v1    # "dump":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IIdmap2;
    :catchall_27
    move-exception v1

    if-eqz v2, :cond_32

    :try_start_2a
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlayPath":Ljava/lang/String;
    :cond_32
    :goto_32
    throw v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33

    .line 259
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlayPath":Ljava/lang/String;
    :catch_33
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "failed to dump idmap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized getFabricatedOverlayInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 218
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8a

    .line 219
    .local v0, "allInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    const/4 v1, 0x0

    .line 221
    .local v1, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    move-object v1, v2

    .line 222
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    .line 223
    .local v2, "service":Landroid/os/IIdmap2;
    if-nez v2, :cond_31

    .line 224
    const-string v3, "OverlayManager"

    const-string v4, "idmap2d service is not ready for getFabricatedOverlayInfos()"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_5a
    .catchall {:try_start_7 .. :try_end_1d} :catchall_58

    .line 238
    :try_start_1d
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 239
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2b
    .catchall {:try_start_1d .. :try_end_2a} :catchall_8a

    .line 243
    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    :cond_2a
    goto :goto_2c

    .line 241
    :catch_2b
    move-exception v4

    .line 244
    :goto_2c
    :try_start_2c
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_8a

    .line 225
    monitor-exit p0

    return-object v3

    .line 228
    :cond_31
    :try_start_31
    invoke-interface {v2}, Landroid/os/IIdmap2;->acquireFabricatedOverlayIterator()V

    .line 230
    :goto_34
    invoke-interface {v2}, Landroid/os/IIdmap2;->nextFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 231
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_5a
    .catchall {:try_start_31 .. :try_end_42} :catchall_58

    goto :goto_34

    .line 233
    :cond_43
    nop

    .line 238
    :try_start_44
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 239
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_51} :catch_52
    .catchall {:try_start_44 .. :try_end_51} :catchall_8a

    .line 243
    :cond_51
    goto :goto_53

    .line 241
    :catch_52
    move-exception v3

    .line 244
    :goto_53
    :try_start_53
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_8a

    .line 233
    monitor-exit p0

    return-object v0

    .line 237
    .end local v2    # "service":Landroid/os/IIdmap2;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    :catchall_58
    move-exception v2

    goto :goto_77

    .line 234
    :catch_5a
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5b
    const-string v3, "OverlayManager"

    const-string v4, "failed to get all fabricated overlays"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 239
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6f} :catch_70
    .catchall {:try_start_62 .. :try_end_6f} :catchall_8a

    .line 243
    :cond_6f
    goto :goto_71

    .line 241
    :catch_70
    move-exception v2

    .line 244
    :goto_71
    :try_start_71
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_8a

    .line 245
    nop

    .line 246
    monitor-exit p0

    return-object v0

    .line 238
    :goto_77
    :try_start_77
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_84

    .line 239
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_84} :catch_85
    .catchall {:try_start_77 .. :try_end_84} :catchall_8a

    .line 243
    :cond_84
    goto :goto_86

    .line 241
    :catch_85
    move-exception v3

    .line 244
    :goto_86
    :try_start_86
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 245
    throw v2
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    .line 217
    .end local v0    # "allInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    .end local v1    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method idmapExists(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "overlayPath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 171
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_59

    .line 172
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 173
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_3a

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idmap2d service is not ready for idmapExists(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_4d

    .line 176
    nop

    .line 180
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_59

    .line 176
    :cond_39
    return v1

    .line 179
    :cond_3a
    :try_start_3a
    new-instance v4, Ljava/io/File;

    invoke-interface {v3, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_4d

    .line 180
    if-eqz v2, :cond_4c

    :try_start_49
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_59

    .line 179
    :cond_4c
    return v4

    .line 171
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_4d
    move-exception v3

    if-eqz v2, :cond_58

    :try_start_50
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v4

    :try_start_55
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlayPath":Ljava/lang/String;
    .end local p2    # "userId":I
    :cond_58
    :goto_58
    throw v3
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_59

    .line 180
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlayPath":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_59
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to check if idmap exists for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return v1
.end method

.method removeIdmap(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "overlayPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 142
    .local v0, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v1

    .line 143
    .local v1, "idmap2":Landroid/os/IIdmap2;
    if-nez v1, :cond_39

    .line 144
    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idmap2d service is not ready for removeIdmap(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_43

    .line 146
    const/4 v2, 0x0

    .line 150
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 146
    :cond_38
    return v2

    .line 149
    :cond_39
    :try_start_39
    invoke-interface {v1, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_43

    .line 150
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 149
    :cond_42
    return v2

    .line 141
    .end local v1    # "idmap2":Landroid/os/IIdmap2;
    :catchall_43
    move-exception v1

    if-eqz v0, :cond_4e

    :try_start_46
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw v1
.end method

.method verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z
    .registers 23
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "overlayPath"    # Ljava/lang/String;
    .param p3, "overlayName"    # Ljava/lang/String;
    .param p4, "policies"    # I
    .param p5, "enforce"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    const-string v0, ", "

    const-string v1, "\", \""

    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    .line 157
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 158
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_73

    .line 159
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idmap2d service is not ready for verifyIdmap(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_9a

    move-object/from16 v11, p1

    :try_start_1d
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_71

    move-object/from16 v12, p2

    :try_start_27
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_6f

    move-object/from16 v13, p3

    :try_start_31
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_6d

    move/from16 v14, p4

    :try_start_3d
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_6b

    move/from16 v15, p5

    :try_start_47
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_69

    move/from16 v1, p6

    :try_start_51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_98

    .line 162
    const/4 v0, 0x0

    .line 167
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 162
    :cond_68
    return v0

    .line 156
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_69
    move-exception v0

    goto :goto_a5

    :catchall_6b
    move-exception v0

    goto :goto_a3

    :catchall_6d
    move-exception v0

    goto :goto_a1

    :catchall_6f
    move-exception v0

    goto :goto_9f

    :catchall_71
    move-exception v0

    goto :goto_9d

    .line 165
    .restart local v3    # "idmap2":Landroid/os/IIdmap2;
    :cond_73
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v1, p6

    :try_start_7f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_98

    .line 167
    if-eqz v2, :cond_97

    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 165
    :cond_97
    return v0

    .line 156
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catchall_98
    move-exception v0

    goto :goto_a7

    :catchall_9a
    move-exception v0

    move-object/from16 v11, p1

    :goto_9d
    move-object/from16 v12, p2

    :goto_9f
    move-object/from16 v13, p3

    :goto_a1
    move/from16 v14, p4

    :goto_a3
    move/from16 v15, p5

    :goto_a5
    move/from16 v1, p6

    :goto_a7
    move-object v3, v0

    if-eqz v2, :cond_b3

    :try_start_aa
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b3

    :catchall_ae
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b3
    :goto_b3
    throw v3
.end method
