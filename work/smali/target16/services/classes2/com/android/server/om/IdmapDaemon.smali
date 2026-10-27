.class public Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"


# static fields
.field public static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field public final mIdmapToken:Ljava/lang/Object;

.field public mOpenedCount:I

.field public volatile mService:Landroid/os/IIdmap2;


# direct methods
.method public static synthetic $r8$lambda$gF_qdnHUHUDllnxzP_BbWXzZv-I()V
    .registers 2

    .line 321
    const-string v0, "idmap"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "service \'%s\' died"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmOpenedCount(Lcom/android/server/om/IdmapDaemon;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smstopIdmapServiceLocked()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->stopIdmapServiceLocked()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/server/om/IdmapDaemon;
    .registers 1

    .line 133
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v0, :cond_b

    .line 134
    new-instance v0, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v0}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 136
    :cond_b
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    return-object v0
.end method

.method public static stopIdmapServiceLocked()V
    .registers 3

    .line 339
    const-string v0, "idmap2d"

    :try_start_2
    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 340
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception v0

    .line 345
    const-string v1, "OverlayManager"

    const-string v2, "Failed to disable idmap2 daemon"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 356
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon-IA;)V

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    goto :goto_38

    .line 359
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->getIdmapServiceLocked()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_29

    .line 361
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon-IA;)V

    monitor-exit v0

    return-object v1

    .line 364
    :cond_29
    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 365
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon-IA;)V

    monitor-exit v0

    return-object v1

    .line 366
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_1a

    throw p0
.end method

.method public createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .registers 6

    .line 218
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_16

    .line 219
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 221
    const-string v2, "idmap2d service is not ready for createFabricatedOverlay()"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    .line 226
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception p0

    goto :goto_2d

    :catchall_18
    move-exception v2

    goto :goto_22

    .line 225
    :cond_1a
    :try_start_1a
    invoke-interface {v2, p1}, Landroid/os/IIdmap2;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_18

    .line 226
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_16

    return-object v2

    :goto_22
    if-eqz p0, :cond_2c

    .line 218
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p0

    :try_start_29
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    throw v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_16

    .line 227
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to fabricate overlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;
    .registers 18

    .line 142
    const-string v0, ", "

    const-string v1, "\", \""

    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0

    .line 143
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_53

    .line 145
    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idmap2d service is not ready for createIdmap(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_50

    .line 153
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_50
    move-exception v0

    move-object p1, v0

    goto :goto_67

    :cond_53
    move/from16 v8, p6

    .line 151
    :try_start_55
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object p1
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_50

    .line 153
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return-object p1

    :goto_67
    if-eqz p0, :cond_72

    .line 142
    :try_start_69
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw p1
.end method

.method public deleteFabricatedOverlay(Ljava/lang/String;)Z
    .registers 6

    .line 233
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_2a

    .line 234
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idmap2d service is not ready for deleteFabricatedOverlay(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2c

    .line 242
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    return v1

    :catch_2a
    move-exception p0

    goto :goto_41

    :catchall_2c
    move-exception v2

    goto :goto_36

    .line 241
    :cond_2e
    :try_start_2e
    invoke-interface {v2, p1}, Landroid/os/IIdmap2;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2c

    .line 242
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_2a

    return v2

    :goto_36
    if-eqz p0, :cond_40

    .line 233
    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p0

    :try_start_3d
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_2a

    .line 243
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete fabricated overlay \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 284
    const-string v0, "idmap2d service is not ready for dumpIdmap()"

    const-string v1, "OverlayManager"

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_15

    .line 285
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_19

    .line 288
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 293
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception p0

    goto :goto_30

    :catchall_17
    move-exception p1

    goto :goto_25

    .line 291
    :cond_19
    :try_start_19
    invoke-interface {v2, p1}, Landroid/os/IIdmap2;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_17

    .line 293
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_15

    return-object p1

    :goto_25
    if-eqz p0, :cond_2f

    .line 284
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p0

    :try_start_2c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    throw p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_15

    .line 294
    :goto_30
    const-string p1, "failed to dump idmap"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFabricatedOverlayInfos()Ljava/util/List;
    .registers 8

    monitor-enter p0

    .line 249
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 253
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-nez v3, :cond_2d

    .line 256
    const-string v3, "OverlayManager"

    const-string v4, "idmap2d service is not ready for getFabricatedOverlayInfos()"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_2a
    .catchall {:try_start_8 .. :try_end_1b} :catchall_27

    .line 271
    :try_start_1b
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_22
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_22

    :catchall_1f
    move-exception v0

    goto/16 :goto_89

    .line 277
    :catch_22
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 257
    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception v0

    move v4, v1

    goto :goto_74

    :catch_2a
    move-exception v3

    move v4, v1

    goto :goto_57

    .line 260
    :cond_2d
    :try_start_2d
    invoke-interface {v3}, Landroid/os/IIdmap2;->acquireFabricatedOverlayIterator()I

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_2a
    .catchall {:try_start_2d .. :try_end_31} :catchall_27

    .line 262
    :goto_31
    :try_start_31
    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->nextFabricatedOverlayInfos(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_43

    .line 263
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_41
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3f

    goto :goto_31

    :catchall_3f
    move-exception v0

    goto :goto_74

    :catch_41
    move-exception v3

    goto :goto_57

    .line 271
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_52

    if-eq v4, v1, :cond_52

    .line 272
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_52} :catch_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_1f

    .line 277
    :catch_52
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_1f

    .line 265
    monitor-exit p0

    return-object v0

    .line 267
    :goto_57
    :try_start_57
    const-string v5, "OverlayManager"

    const-string v6, "failed to get all fabricated overlays"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_3f

    if-eqz v2, :cond_72

    .line 271
    :try_start_60
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_6f

    if-eq v4, v1, :cond_6f

    .line 272
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6f} :catch_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_1f

    .line 277
    :catch_6f
    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_1f

    .line 280
    :cond_72
    monitor-exit p0

    return-object v0

    :goto_74
    if-eqz v2, :cond_88

    .line 271
    :try_start_76
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_85

    if-eq v4, v1, :cond_85

    .line 272
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_85} :catch_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_1f

    .line 277
    :catch_85
    :cond_85
    :try_start_85
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 279
    :cond_88
    throw v0

    :goto_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_1f

    throw v0
.end method

.method public final getIdmapServiceLocked()Landroid/os/IBinder;
    .registers 16

    .line 302
    const-string p0, "idmap2d"

    :try_start_2
    invoke-static {p0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 303
    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_22

    :catch_c
    move-exception p0

    .line 306
    const-string v0, "OverlayManager"

    const-string v1, "Failed to enable idmap2 daemon"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to set system property"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v8, v4, v6

    .line 318
    :goto_31
    const-string p0, "idmap"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_43

    .line 320
    new-instance p0, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v10, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-object v10

    :cond_43
    const-wide/16 v10, 0x5

    .line 325
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v12, v10, v0

    if-gtz v12, :cond_59

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v12, v4, v8

    if-gtz v12, :cond_59

    goto :goto_31

    .line 329
    :cond_59
    new-instance v12, Ljava/util/concurrent/TimeoutException;

    const/16 v13, 0x1388

    .line 331
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x7530

    .line 332
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sub-long/2addr v10, v0

    add-long/2addr v10, v2

    .line 333
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sub-long/2addr v4, v8

    add-long/2addr v4, v6

    .line 334
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v13, v14, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 330
    const-string v0, "Failed to connect to \'%s\' in %d/%d ms (spent %d/%d ms)"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v12, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public idmapExists(Ljava/lang/String;I)Z
    .registers 8

    .line 199
    const-string v0, "OverlayManager"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const/4 v2, 0x0

    .line 200
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_3b
    .catchall {:try_start_7 .. :try_end_b} :catchall_39

    .line 201
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idmap2d service is not ready for idmapExists(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_3d

    .line 209
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_3b
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 213
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :catchall_39
    move-exception p0

    goto :goto_76

    :catch_3b
    move-exception p0

    goto :goto_5e

    :catchall_3d
    move-exception p2

    goto :goto_53

    .line 208
    :cond_3f
    :try_start_3f
    new-instance v4, Ljava/io/File;

    invoke-interface {v3, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p2
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_3d

    .line 209
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_3b
    .catchall {:try_start_4c .. :try_end_4f} :catchall_39

    .line 213
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p2

    :goto_53
    if-eqz p0, :cond_5d

    .line 200
    :try_start_55
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception p0

    :try_start_5a
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    throw p2
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_3b
    .catchall {:try_start_5a .. :try_end_5e} :catchall_39

    .line 210
    :goto_5e
    :try_start_5e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to check if idmap exists for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_39

    .line 213
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :goto_76
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 214
    throw p0
.end method

.method public removeIdmap(Ljava/lang/String;I)Z
    .registers 6

    .line 157
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0

    .line 158
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v0

    if-nez v0, :cond_34

    .line 160
    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idmap2d service is not ready for removeIdmap(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_32

    .line 166
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p1

    goto :goto_3c

    .line 165
    :cond_34
    :try_start_34
    invoke-interface {v0, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result p1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_32

    .line 166
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return p1

    :goto_3c
    if-eqz p0, :cond_46

    .line 157
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw p1
.end method

.method public verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z
    .registers 18

    .line 172
    const-string v0, ", "

    const-string v1, "\", \""

    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0

    .line 173
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_53

    .line 175
    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idmap2d service is not ready for verifyIdmap(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_50

    .line 183
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    const/4 p0, 0x0

    return p0

    :catchall_50
    move-exception v0

    move-object p1, v0

    goto :goto_67

    :cond_53
    move/from16 v8, p6

    .line 181
    :try_start_55
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result p1
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_50

    .line 183
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return p1

    :goto_67
    if-eqz p0, :cond_72

    .line 172
    :try_start_69
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw p1
.end method
