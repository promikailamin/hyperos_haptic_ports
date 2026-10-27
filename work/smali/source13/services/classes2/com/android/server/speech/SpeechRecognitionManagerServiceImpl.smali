.class final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SpeechRecognitionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;",
        "Lcom/android/server/speech/SpeechRecognitionManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CONCURRENT_CONNECTIONS_BY_CLIENT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRemoteServicesByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/speech/RemoteSpeechRecognitionService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mhandleClientDeath(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "master"    # Lcom/android/server/speech/SpeechRecognitionManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 51
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 51
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method private componentMapsToRecognitionService(Landroid/content/ComponentName;)Z
    .registers 9
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    .local v0, "identityToken":J
    nop

    .line 276
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getUserId()I

    move-result v4

    .line 276
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_61

    .line 279
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    nop

    .line 282
    if-nez v2, :cond_24

    .line 283
    return v5

    .line 286
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_46

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 288
    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 289
    const/4 v3, 0x1

    return v3

    .line 291
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_46
    goto :goto_28

    .line 293
    :cond_47
    sget-object v3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceComponent is not RecognitionService: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v5

    .line 279
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_61
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    throw v2
.end method

.method private createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 224
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 228
    .local v1, "servicesForClient":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 229
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1c

    .line 230
    monitor-exit v0

    return-object v2

    .line 233
    :cond_1c
    if-eqz v1, :cond_5e

    .line 234
    nop

    .line 236
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;)V

    .line 237
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 239
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    .line 240
    .local v3, "existingService":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 242
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v2, v2, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v2, :cond_56

    .line 243
    sget-object v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reused existing connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_56
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    monitor-exit v0

    return-object v2

    .line 250
    .end local v3    # "existingService":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    :cond_5e
    if-eqz p2, :cond_68

    invoke-direct {p0, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->componentMapsToRecognitionService(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 251
    monitor-exit v0

    return-object v2

    .line 254
    :cond_68
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getUserId()I

    move-result v4

    invoke-direct {v2, v3, p2, v4, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    .line 258
    .local v2, "service":Lcom/android/server/speech/RemoteSpeechRecognitionService;
    iget-object v3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 260
    .local v3, "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v4, v4, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v4, :cond_a9

    .line 263
    sget-object v4, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating a new connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_a9
    monitor-exit v0

    return-object v2

    .line 267
    .end local v1    # "servicesForClient":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    .end local v2    # "service":Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .end local v3    # "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method private getOnDeviceComponentNameLocked()Landroid/content/ComponentName;
    .registers 5

    .line 208
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "serviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v1, v1, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v1, :cond_24

    .line 210
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_24
    if-nez v0, :cond_37

    .line 214
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v1, v1, Lcom/android/server/speech/SpeechRecognitionManagerService;->verbose:Z

    if-eqz v1, :cond_35

    .line 215
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_35
    const/4 v1, 0x0

    return-object v1

    .line 219
    :cond_37
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .param p3, "invokeCancel"    # Z

    .line 199
    if-eqz p3, :cond_5

    .line 200
    invoke-virtual {p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->shutdown()V

    .line 202
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    .line 203
    return-void
.end method

.method static synthetic lambda$createService$2(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z
    .registers 3
    .param p0, "serviceComponent"    # Landroid/content/ComponentName;
    .param p1, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 238
    invoke-virtual {p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createService$3(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 2
    .param p0, "key"    # Ljava/lang/Integer;

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 298
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 301
    .local v1, "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    if-eqz v1, :cond_14

    .line 302
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    .end local v1    # "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    :cond_14
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V
    .registers 5
    .param p0, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;
    .param p1, "errorCode"    # I

    .line 310
    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionServiceManagerCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 313
    goto :goto_c

    .line 311
    :catch_4
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to respond with error"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method


# virtual methods
.method createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .registers 21
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "onDevice"    # Z
    .param p4, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;

    .line 96
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    iget-object v0, v8, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v0, v0, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 97
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 98
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    .line 97
    const-string v4, "#createSessionLocked, component=%s, onDevice=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_24
    move-object/from16 v0, p1

    .line 102
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    if-eqz p3, :cond_2e

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v0

    move-object v10, v0

    goto :goto_2f

    .line 102
    :cond_2e
    move-object v10, v0

    .line 106
    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    .local v10, "serviceComponent":Landroid/content/ComponentName;
    :goto_2f
    if-nez v10, :cond_45

    .line 107
    iget-object v0, v8, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v0, v0, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v0, :cond_40

    .line 108
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Service component is undefined, responding with error."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_40
    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 111
    return-void

    .line 114
    :cond_45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 115
    .local v11, "creatorCallingUid":I
    invoke-direct {v8, v11, v10}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;

    move-result-object v12

    .line 117
    .local v12, "service":Lcom/android/server/speech/RemoteSpeechRecognitionService;
    if-nez v12, :cond_55

    .line 118
    const/16 v0, 0xa

    invoke-static {v9, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 119
    return-void

    .line 122
    :cond_55
    new-instance v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8, v11, v12}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    move-object v13, v0

    .line 126
    .local v13, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    move-object/from16 v14, p2

    :try_start_5d
    invoke-interface {v14, v13, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_78

    .line 131
    nop

    .line 133
    invoke-virtual {v12}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->connect()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v15, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v12

    move v5, v11

    move-object/from16 v6, p2

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {v0, v15}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 194
    return-void

    .line 127
    :catch_78
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {v8, v11, v12, v1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    .line 130
    return-void
.end method

.method synthetic lambda$createSessionLocked$0$com-android-server-speech-SpeechRecognitionManagerServiceImpl(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .registers 4
    .param p1, "creatorCallingUid"    # I
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method synthetic lambda$createSessionLocked$1$com-android-server-speech-SpeechRecognitionManagerServiceImpl(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
    .registers 15
    .param p1, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .param p3, "creatorCallingUid"    # I
    .param p4, "clientToken"    # Landroid/os/IBinder;
    .param p5, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p6, "binderService"    # Landroid/speech/IRecognitionService;

    .line 134
    const/4 v0, 0x5

    if-eqz p6, :cond_1e

    .line 136
    :try_start_3
    new-instance v7, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-interface {p1, v7}, Landroid/speech/IRecognitionServiceManagerCallback;->onSuccess(Landroid/speech/IRecognitionService;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_1d

    .line 186
    :catch_12
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Error creating a speech recognition session"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-static {p1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 189
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    goto :goto_21

    .line 191
    :cond_1e
    invoke-static {p1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 193
    :goto_21
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget v3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 78
    :catch_d
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateLocked(Z)Z
    .registers 3
    .param p1, "disabled"    # Z

    .line 87
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 88
    .local v0, "enabledChanged":Z
    return v0
.end method
