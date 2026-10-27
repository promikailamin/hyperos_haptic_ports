.class public final Lcom/android/server/broadcastradio/aidl/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# instance fields
.field public final mAidlTunerSessions:Landroid/util/ArraySet;

.field public mAntennaConnected:Ljava/lang/Boolean;

.field public mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field public final mHalTunerCallback:Landroid/hardware/broadcastradio/ITunerCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field public final mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

.field public mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public static synthetic $r8$lambda$1VITZWIX_pnvwnRQ6IBjlCOvy4s(Ljava/lang/Runnable;)V
    .registers 1

    .line 428
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$EBwNGRV-8whiUGHsQ1QTsZmntw0(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->lambda$fanoutAidlCallback$1(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAidlTunerSessions(Lcom/android/server/broadcastradio/aidl/RadioModule;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgramInfoCache(Lcom/android/server/broadcastradio/aidl/RadioModule;)Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAntennaConnected(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentProgramInfo(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .registers 6

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 91
    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/ITunerCallback;

    .line 200
    const-string/jumbo v0, "properties cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 201
    const-string/jumbo p2, "service cannot be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/hardware/broadcastradio/IBroadcastRadio;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 202
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHandler:Landroid/os/Handler;

    .line 203
    const-string p1, "User controller can not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/broadcastradio/RadioServiceUserController;

    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 204
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string p2, "BcRadioAidlSrv.module"

    const/16 p3, 0x19

    invoke-direct {p1, p2, p3}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;Landroid/os/IBinder;Lcom/android/server/broadcastradio/RadioServiceUserController;)Lcom/android/server/broadcastradio/aidl/RadioModule;
    .registers 9

    .line 211
    const-string v0, "BcRadioAidlSrv.module"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "Try loading module for module id = %d, module name = %s"

    .line 212
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 211
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {p2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/broadcastradio/IBroadcastRadio;

    move-result-object p2

    if-nez p2, :cond_22

    .line 216
    const-string p0, "Module %s is null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception p0

    goto :goto_4f

    :cond_22
    const/4 v2, 0x0

    .line 222
    :try_start_23
    invoke-interface {p2, v2}, Landroid/hardware/broadcastradio/IBroadcastRadio;->getAmFmRegionConfig(Z)Landroid/hardware/broadcastradio/AmFmRegionConfig;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_27} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_20

    goto :goto_32

    .line 224
    :catch_28
    :try_start_28
    const-string v2, "Module %s does not has AMFM config"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_20

    move-object v2, v1

    .line 230
    :goto_32
    :try_start_32
    invoke-interface {p2}, Landroid/hardware/broadcastradio/IBroadcastRadio;->getDabRegionConfig()[Landroid/hardware/broadcastradio/DabTableEntry;

    move-result-object v3
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_36} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_20

    goto :goto_41

    .line 232
    :catch_37
    :try_start_37
    const-string v3, "Module %s does not has DAB config"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    .line 237
    :goto_41
    invoke-interface {p2}, Landroid/hardware/broadcastradio/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/Properties;

    move-result-object v4

    .line 236
    invoke-static {p0, p1, v4, v2, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p0

    .line 239
    new-instance v2, Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-direct {v2, p2, p0, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule;-><init>(Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4e} :catch_20

    return-object v2

    .line 241
    :goto_4f
    const-string p2, "Failed to load module %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public addAnnouncementListener(Landroid/hardware/radio/IAnnouncementListener;[I)Landroid/hardware/radio/ICloseHandle;
    .registers 8

    .line 477
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Add AnnouncementListener"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    array-length v0, p2

    new-array v2, v0, [B

    move v3, v1

    :goto_e
    if-ge v3, v0, :cond_18

    .line 480
    aget v4, p2, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    const/4 p2, 0x1

    .line 483
    new-array p2, p2, [Landroid/hardware/broadcastradio/ICloseHandle;

    const/4 v0, 0x0

    aput-object v0, p2, v1

    .line 484
    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 506
    :try_start_23
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p1, v0, v2}, Landroid/hardware/broadcastradio/IBroadcastRadio;->registerAnnouncementListener(Landroid/hardware/broadcastradio/IAnnouncementListener;[B)Landroid/hardware/broadcastradio/ICloseHandle;

    move-result-object p1

    aput-object p1, p2, v1
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2b} :catch_31

    .line 511
    new-instance p1, Lcom/android/server/broadcastradio/aidl/RadioModule$3;

    invoke-direct {p1, p0, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;[Landroid/hardware/broadcastradio/ICloseHandle;)V

    return-object p1

    :catch_31
    move-exception p0

    .line 508
    const-string p1, "AnnouncementListener"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v4, v0

    move-object v5, v4

    move v3, v2

    move v2, v1

    .line 318
    :goto_7
    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_7e

    .line 319
    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 320
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {v6}, Lcom/android/server/broadcastradio/aidl/TunerSession;->getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v6

    if-nez v6, :cond_1e

    goto :goto_7b

    :cond_1e
    if-nez v4, :cond_3b

    .line 326
    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 327
    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 328
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v2

    .line 329
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v3

    goto :goto_7b

    .line 332
    :cond_3b
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_56

    .line 333
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 334
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_56

    .line 336
    :cond_4f
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 340
    :cond_56
    :goto_56
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_71

    .line 341
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 342
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_71

    .line 344
    :cond_6a
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_71
    :goto_71
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v7

    or-int/2addr v2, v7

    .line 349
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v6

    and-int/2addr v3, v6

    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7e
    if-nez v4, :cond_81

    return-object v0

    .line 352
    :cond_81
    new-instance p0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    return-object p0
.end method

.method public closeSessions(I)V
    .registers 8

    .line 291
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close TunerSessions %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_12
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 298
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_3d

    const/4 p0, 0x0

    :goto_21
    if-ge p0, v1, :cond_3c

    .line 301
    aget-object v0, v2, p0

    .line 303
    :try_start_25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/broadcastradio/aidl/TunerSession;->close(Ljava/lang/Integer;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception v3

    .line 305
    const-string v4, "BcRadioAidlSrv.module"

    const-string v5, "Failed to close TunerSession %s: %s"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_39
    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    :cond_3c
    return-void

    :catchall_3d
    move-exception p0

    .line 299
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 540
    const-string v0, "RadioModule\n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 542
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 543
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_e
    const-string v2, "BroadcastRadioServiceImpl: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 545
    const-string v2, "Properties: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 546
    const-string v2, "Antenna state: "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 547
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-nez v2, :cond_3b

    .line 548
    const-string/jumbo v2, "undetermined\n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_50

    :catchall_38
    move-exception p0

    goto/16 :goto_b8

    .line 550
    :cond_3b
    const-string v3, "%s\n"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "connected"

    goto :goto_49

    :cond_46
    const-string/jumbo v2, "not connected"

    :goto_49
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 552
    :goto_50
    const-string v2, "current ProgramInfo: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 553
    const-string v2, "ProgramInfoCache: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 554
    const-string v2, "Union of AIDL ProgramFilters: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 555
    const-string v2, "AIDL TunerSessions [%d]:\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 557
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    .line 558
    :goto_88
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_9e

    .line 559
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 561
    :cond_9e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 562
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_e .. :try_end_a2} :catchall_38

    .line 563
    const-string v0, "Radio module events:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 565
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 566
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/RadioEventLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 567
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 569
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 562
    :goto_b8
    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_38

    throw p0
.end method

.method public fanoutAidlCallback(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .registers 3

    .line 438
    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .registers 10

    .line 447
    const-string v0, "BcRadioAidlSrv.module"

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v1}, Lcom/android/server/broadcastradio/RadioServiceUserController;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 449
    :goto_b
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_69

    .line 450
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    if-eq v5, v1, :cond_2c

    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 451
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    if-eqz v5, :cond_2c

    goto :goto_66

    .line 455
    :cond_2c
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 456
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {v6}, Lcom/android/server/broadcastradio/aidl/TunerSession;->getUid()I

    move-result v6

    .line 455
    invoke-interface {p1, v5, v6}, Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;I)V
    :try_end_45
    .catch Landroid/os/DeadObjectException; {:try_start_2c .. :try_end_45} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_45} :catch_46

    goto :goto_66

    :catch_46
    move-exception v5

    .line 465
    const-string v6, "Failed to invoke ITunerCallback"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_66

    .line 459
    :catch_4f
    const-string v5, "Removing dead TunerSession"

    invoke-static {v0, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5b

    .line 461
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 463
    :cond_5b
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_69
    if-eqz v2, :cond_7a

    .line 470
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 469
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    :cond_7a
    return-void
.end method

.method public final fireLater(Ljava/lang/Runnable;)V
    .registers 3

    .line 428
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Get image for id = %d"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2c

    .line 529
    :try_start_11
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->getImage(I)[B

    move-result-object p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_26

    if-eqz p0, :cond_24

    .line 534
    array-length p1, p0

    if-nez p1, :cond_1d

    goto :goto_24

    :cond_1d
    const/4 p1, 0x0

    .line 536
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0

    :catch_26
    move-exception p0

    .line 531
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 525
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image ID is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProperties()Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object p0
.end method

.method public getService()Landroid/hardware/broadcastradio/IBroadcastRadio;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    return-object p0
.end method

.method public final synthetic lambda$fanoutAidlCallback$1(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 441
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onTunerSessionClosed(Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    filled-new-array {p1}, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 407
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 359
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .registers 6

    .line 365
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 368
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 371
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 373
    :try_start_f
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p0}, Landroid/hardware/broadcastradio/IBroadcastRadio;->stopProgramListUpdates()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 375
    const-string p1, "BcRadioAidlSrv.module"

    const-string/jumbo v0, "mHalTunerSession.stopProgramListUpdates() failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 380
    :cond_21
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    :try_start_24
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v3}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    if-eqz p1, :cond_36

    .line 385
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_59

    .line 387
    :cond_36
    :goto_36
    monitor-exit v2

    return-void

    .line 392
    :cond_38
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 393
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_34

    .line 395
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 396
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;

    move-result-object p1

    .line 395
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->startProgramListUpdates(Landroid/hardware/broadcastradio/ProgramFilter;)V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_44} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p0

    .line 400
    const-string p1, "BcRadioAidlSrv.module"

    const-string/jumbo v0, "mHalTunerSession.startProgramListUpdates() failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_51
    move-exception p0

    .line 398
    const-string p1, "Start Program ListUpdates"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 393
    :goto_59
    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_34

    throw p0
.end method

.method public final varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .registers 6

    .line 412
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 413
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p1, 0x0

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 416
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 418
    :try_start_1a
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->unsetTunerCallback()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    .line 420
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 421
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 420
    const-string v0, "BcRadioAidlSrv.module"

    const-string v1, "Failed to unregister HAL callback for module %d"

    invoke-static {v0, p1, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/aidl/TunerSession;
    .registers 8

    .line 257
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Open TunerSession"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_d
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 263
    new-instance v2, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/android/server/broadcastradio/aidl/TunerSession;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/ITunerCallback;Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    .line 264
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 266
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2f

    if-eqz v1, :cond_4a

    .line 269
    :try_start_27
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/ITunerCallback;

    invoke-interface {v1, v5}, Landroid/hardware/broadcastradio/IBroadcastRadio;->setTunerCallback(Landroid/hardware/broadcastradio/ITunerCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_31
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_4a

    :catchall_2f
    move-exception p0

    goto :goto_5a

    :catch_31
    move-exception p1

    .line 271
    :try_start_32
    const-string v1, "BcRadioAidlSrv.module"

    const-string v2, "Failed to register HAL callback for module %d"

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 272
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 271
    invoke-static {v1, p1, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 276
    :cond_4a
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_2f

    if-eqz v3, :cond_54

    .line 281
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    :cond_54
    if-eqz v4, :cond_59

    .line 284
    invoke-interface {p1, v4}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    :cond_59
    return-object v2

    .line 276
    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_2f

    throw p0
.end method
