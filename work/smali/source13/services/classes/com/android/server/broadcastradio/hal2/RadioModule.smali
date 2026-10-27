.class Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.module"


# instance fields
.field private final mAidlTunerSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/broadcastradio/hal2/TunerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mAntennaConnected:Ljava/lang/Boolean;

.field private mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private final mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

.field private mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field private final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

.field private mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAidlTunerSessions(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentProgramInfo(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgramInfoCache(Lcom/android/server/broadcastradio/hal2/RadioModule;)Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAntennaConnected(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentProgramInfo(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlockAndFireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Ljava/lang/Object;)V
    .registers 6
    .param p1, "service"    # Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .param p2, "properties"    # Landroid/hardware/radio/RadioManager$ModuleProperties;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 71
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 74
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-direct {v1, v0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 77
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 81
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 136
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 138
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method private buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;
    .registers 10

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "idTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 219
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    const/4 v2, 0x0

    .line 220
    .local v2, "includeCategories":Z
    const/4 v3, 0x1

    .line 222
    .local v3, "excludeModifications":Z
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 223
    .local v5, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    nop

    .line 224
    invoke-virtual {v5}, Lcom/android/server/broadcastradio/hal2/TunerSession;->getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v6

    .line 225
    .local v6, "filter":Landroid/hardware/radio/ProgramList$Filter;
    if-nez v6, :cond_1e

    .line 226
    goto :goto_a

    .line 229
    :cond_1e
    if-nez v0, :cond_3d

    .line 230
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    .line 231
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v7

    .line 232
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v2

    .line 233
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v3

    .line 234
    goto :goto_a

    .line 236
    :cond_3d
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_58

    .line 237
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_58

    .line 240
    :cond_51
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_73

    .line 245
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 246
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_73

    .line 248
    :cond_6c
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_73
    :goto_73
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v7

    or-int/2addr v2, v7

    .line 253
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v7

    and-int/2addr v3, v7

    .line 254
    .end local v5    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    .end local v6    # "filter":Landroid/hardware/radio/ProgramList$Filter;
    goto :goto_a

    .line 256
    :cond_7e
    if-nez v0, :cond_82

    const/4 v4, 0x0

    goto :goto_87

    :cond_82
    new-instance v4, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    :goto_87
    return-object v4
.end method

.method private fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 8
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 345
    const-string v0, "BcRadio2Srv.module"

    const/4 v1, 0x0

    .line 346
    .local v1, "deadSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/broadcastradio/hal2/TunerSession;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 348
    .local v3, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :try_start_15
    iget-object v4, v3, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;)V
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_15 .. :try_end_1a} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_33

    .line 356
    :catch_1b
    move-exception v4

    .line 357
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Failed to invoke ITunerCallback: "

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 349
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_22
    move-exception v4

    .line 351
    .local v4, "ex":Landroid/os/DeadObjectException;
    const-string v5, "Removing dead TunerSession"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez v1, :cond_30

    .line 353
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 355
    :cond_30
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v4    # "ex":Landroid/os/DeadObjectException;
    :goto_33
    nop

    .line 359
    .end local v3    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :goto_34
    goto :goto_9

    .line 360
    :cond_35
    if-eqz v1, :cond_47

    .line 361
    nop

    .line 362
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 361
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 364
    :cond_47
    return-void
.end method

.method static synthetic lambda$addAnnouncementListener$5(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .registers 4
    .param p0, "halResult"    # Landroid/util/MutableInt;
    .param p1, "hwCloseHandle"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p2, "result"    # I
    .param p3, "closeHnd"    # Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    .line 385
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 386
    iput-object p3, p1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 387
    return-void
.end method

.method static synthetic lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 4
    .param p0, "hwSession"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "session"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 178
    const-string/jumbo v0, "openSession"

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 179
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 180
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .registers 3
    .param p0, "amfmConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 150
    if-nez p1, :cond_4

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 151
    :cond_4
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .registers 3
    .param p0, "dabConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Ljava/util/ArrayList;

    .line 155
    if-nez p1, :cond_4

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 156
    :cond_4
    return-void
.end method

.method private lockAndFireLater(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 328
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method private onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 267
    nop

    .line 268
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v0

    .line 269
    .local v0, "newFilter":Landroid/hardware/radio/ProgramList$Filter;
    const-string v1, "BcRadio2Srv.module"

    if-nez v0, :cond_1f

    .line 271
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    if-nez v2, :cond_e

    .line 272
    return-void

    .line 274
    :cond_e
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 276
    :try_start_11
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->stopProgramListUpdates()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 279
    goto :goto_1e

    .line 277
    :catch_17
    move-exception v2

    .line 278
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "mHalTunerSession.stopProgramListUpdates() failed: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-void

    .line 285
    :cond_1f
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v2}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 286
    if-eqz p1, :cond_2e

    .line 287
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-virtual {p1, v1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;)V

    .line 289
    :cond_2e
    return-void

    .line 294
    :cond_2f
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 296
    :try_start_31
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result v2

    .line 298
    .local v2, "halResult":I
    const-string/jumbo v3, "startProgramListUpdates"

    invoke-static {v3, v2}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_41} :catch_42

    .line 301
    .end local v2    # "halResult":I
    goto :goto_49

    .line 299
    :catch_42
    move-exception v2

    .line 300
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "mHalTunerSession.startProgramListUpdates() failed: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_49
    return-void
.end method

.method private varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 6
    .param p1, "tunerSessions"    # [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 311
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 312
    .local v2, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 315
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-eqz v1, :cond_34

    .line 316
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "closing HAL tuner session"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_25
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 321
    goto :goto_32

    .line 319
    :catch_2b
    move-exception v2

    .line 320
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "mHalTunerSession.close() failed: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_32
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 324
    :cond_34
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;Ljava/lang/Object;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .registers 10
    .param p0, "idx"    # I
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    .line 146
    .local v1, "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    if-nez v1, :cond_8

    return-object v0

    .line 148
    :cond_8
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 149
    .local v2, "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 153
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 154
    .local v3, "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 158
    nop

    .line 159
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    iget-object v6, v3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 158
    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v4

    .line 161
    .local v4, "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    new-instance v5, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {v5, v1, v4, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Ljava/lang/Object;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_39} :catch_3a

    return-object v5

    .line 162
    .end local v1    # "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .end local v2    # "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    .end local v3    # "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    .end local v4    # "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    :catch_3a
    move-exception v1

    .line 163
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BcRadio2Srv.module"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 10
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "enabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 370
    .local v3, "type":I
    int-to-byte v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 373
    :cond_16
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 374
    .local v1, "halResult":Landroid/util/MutableInt;
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 375
    .local v2, "hwCloseHandle":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ICloseHandle;>;"
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$2;

    invoke-direct {v3, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 383
    .local v3, "hwListener":Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 384
    :try_start_29
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v6, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v5, v0, v3, v6}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 388
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_41

    .line 389
    const-string v4, "addAnnouncementListener"

    iget v5, v1, Landroid/util/MutableInt;->value:I

    invoke-static {v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 391
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    invoke-direct {v4, p0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    return-object v4

    .line 388
    :catchall_41
    move-exception v5

    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v5
.end method

.method public closeSessions(Ljava/lang/Integer;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Integer;

    .line 205
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 207
    .local v1, "tunerSessions":[Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 209
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    .line 210
    array-length v0, v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_22

    aget-object v3, v1, v2

    .line 211
    .local v3, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    .line 210
    .end local v3    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 213
    :cond_22
    return-void

    .line 209
    .end local v1    # "tunerSessions":[Lcom/android/server/broadcastradio/hal2/TunerSession;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 3
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 341
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method getImage(I)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "id"    # I

    .line 404
    if-eqz p1, :cond_3c

    .line 407
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_5
    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 409
    .local v1, "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 410
    .local v2, "rawImage":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 411
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 413
    .end local v1    # "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v3    # "i":I
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_39

    .line 415
    array-length v0, v2

    if-nez v0, :cond_32

    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_32
    const/4 v0, 0x0

    array-length v1, v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 413
    .end local v2    # "rawImage":[B
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 404
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image ID is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object v0
.end method

.method synthetic lambda$fanoutAidlCallback$4$com-android-server-broadcastradio-hal2-RadioModule(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 341
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method synthetic lambda$getImage$6$com-android-server-broadcastradio-hal2-RadioModule(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getImage(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$lockAndFireLater$3$com-android-server-broadcastradio-hal2-RadioModule(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 329
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 5
    .param p1, "tunerSession"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 305
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    const/4 v1, 0x1

    :try_start_4
    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 261
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .registers 7
    .param p1, "userCb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez v1, :cond_24

    .line 176
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 177
    .local v1, "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v2, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 181
    iget-object v2, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 183
    .end local v1    # "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    :cond_24
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;Ljava/lang/Object;)V

    .line 185
    .local v1, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-eqz v2, :cond_3d

    .line 190
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 192
    :cond_3d
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-eqz v2, :cond_44

    .line 193
    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 196
    :cond_44
    monitor-exit v0

    return-object v1

    .line 197
    .end local v1    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method
