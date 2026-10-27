.class public abstract Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AmbientContextManagerPerUserService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AmbientContextManagerPerUserService"


# direct methods
.method public static synthetic $r8$lambda$Q1fXi1AOjdUwDAZBqospBgmQ11o(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->lambda$createDetectionResultRemoteCallback$2(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNLujgEwFNbhdKMx0dK4yHaMtvQ(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/os/RemoteCallback;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->lambda$onQueryServiceStatus$0(Landroid/os/RemoteCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZqWY5zqF0pX4oq8c_sJNpkntXpE(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7

    .line 495
    const-string v0, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    .line 496
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 500
    :try_start_c
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result v2

    .line 501
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 502
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got detection status of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_3d

    .line 505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    throw p0
.end method

.method public static synthetic $r8$lambda$aO9bcGVTbpeFQ8NV4Fq_3mncSd0(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/ambientcontext/IAmbientContextObserver;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->lambda$startDetection$1(Landroid/app/ambientcontext/IAmbientContextObserver;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-void
.end method

.method private setUpServiceIfNeeded()Z
    .registers 7

    .line 454
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    .line 455
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 456
    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    goto :goto_34

    .line 461
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_2e

    if-eq v3, v1, :cond_28

    .line 469
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateServiceInfoListLocked returned unknown service types."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 466
    :cond_28
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setComponentName(Landroid/content/ComponentName;)V

    goto :goto_3d

    .line 463
    :cond_2e
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setComponentName(Landroid/content/ComponentName;)V

    goto :goto_3d

    .line 457
    :cond_34
    :goto_34
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateServiceInfoListLocked returned incorrect componentNames"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 474
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_44

    return v2

    .line 480
    :cond_44
    :try_start_44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v4, 0x0

    .line 480
    invoke-interface {v0, v3, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_54} :catch_58

    if-eqz p0, :cond_57

    return v1

    :cond_57
    return v2

    .line 483
    :catch_58
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException while setting up service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public abstract clearRemoteService()V
.end method

.method public completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V
    .registers 4

    .line 374
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/ambientcontext/IAmbientContextObserver;->onRegistrationComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 376
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call IAmbientContextObserver.onRegistrationComplete: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 423
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public destroyLocked()V
    .registers 3

    .line 332
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 335
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_10
    invoke-interface {v0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->unbind()V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->clearRemoteService()V

    .line 338
    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 304
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1a

    .line 305
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 307
    const-string p1, ""

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 304
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public abstract ensureRemoteServiceInitiated()V
.end method

.method public abstract getAmbientContextEventArrayExtraKeyConfig()I
.end method

.method public abstract getAmbientContextPackageNameExtraKeyConfig()I
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public final getConsentComponent()Landroid/content/ComponentName;
    .registers 4

    .line 514
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getConsentComponentConfig()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 516
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_18
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consent component name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public abstract getConsentComponentConfig()I
.end method

.method public abstract getProtectedBindPermission()Ljava/lang/String;
.end method

.method public abstract getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
.end method

.method public final getServerStatusCallback(Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .registers 3

    .line 494
    new-instance p0, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p0, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object p0
.end method

.method public abstract getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
.end method

.method public final synthetic lambda$createDetectionResultRemoteCallback$2(Landroid/os/Bundle;)V
    .registers 7

    .line 424
    const-string v0, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    .line 425
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 427
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getClientRequestObserver(ILjava/lang/String;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object p0

    if-nez p0, :cond_19

    return-void

    .line 434
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 436
    :try_start_1d
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/app/ambientcontext/IAmbientContextObserver;->onEvents(Ljava/util/List;)V

    .line 437
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got detection result of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_46} :catch_4c
    .catchall {:try_start_1d .. :try_end_46} :catchall_4a

    .line 442
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    goto :goto_6b

    :catch_4c
    move-exception p0

    .line 440
    :try_start_4d
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call IAmbientContextObserver.onEvents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4d .. :try_end_67} :catchall_4a

    .line 442
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    throw p0
.end method

.method public final synthetic lambda$onQueryServiceStatus$0(Landroid/os/RemoteCallback;Ljava/lang/Integer;)V
    .registers 3

    .line 157
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public final synthetic lambda$startDetection$1(Landroid/app/ambientcontext/IAmbientContextObserver;Ljava/lang/Integer;)V
    .registers 3

    .line 357
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6

    .line 267
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newServiceInfoLocked with component name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 271
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_81

    .line 278
    :cond_34
    :try_start_34
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 281
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getProtectedBindPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_69

    .line 284
    :cond_4f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service %s requires %s permission. Found %s permission"

    .line 286
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 287
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getProtectedBindPermission()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 284
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    return-object v0

    .line 292
    :catch_6a
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    :cond_81
    :goto_81
    const-string/jumbo p0, "service name does not match this per user, returning..."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 143
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query event status of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_38

    .line 147
    const-string p1, "Detection service is not available at this moment."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 148
    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 150
    monitor-exit v1

    return-void

    :catchall_36
    move-exception p0

    goto :goto_4d

    .line 152
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 153
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    move-result-object v0

    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/os/RemoteCallback;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServerStatusCallback(Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p0

    .line 153
    invoke-interface {v0, p1, p2, p0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 158
    monitor-exit v1

    return-void

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_36

    throw p0
.end method

.method public onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .registers 6

    .line 251
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_18

    .line 253
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Detection service is not available at this moment."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 254
    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_26

    .line 259
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 260
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 261
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public onStartConsentActivity([ILjava/lang/String;)V
    .registers 12

    .line 177
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening consent activity of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v1

    .line 185
    :try_start_26
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_101

    if-eqz v1, :cond_fb

    .line 192
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto/16 :goto_fb

    .line 197
    :cond_3e
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 198
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recent task package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match with client package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getConsentComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_7f

    .line 207
    const-string p0, "Consent component not found!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting consent activity for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 215
    :try_start_9c
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 216
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 217
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getAmbientContextPackageNameExtraKeyConfig()I

    move-result v8

    .line 216
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 219
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getAmbientContextEventArrayExtraKeyConfig()I

    move-result p0

    .line 218
    invoke-virtual {v8, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v7, :cond_c3

    .line 224
    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c8

    :catchall_c1
    move-exception p0

    goto :goto_f7

    .line 226
    :cond_c3
    const-string p2, "Missing packageNameExtraKey for consent activity"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c8
    if-eqz p0, :cond_ce

    .line 229
    invoke-virtual {v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_d3

    .line 231
    :cond_ce
    const-string p0, "Missing eventArrayExtraKey for consent activity"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_d3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    .line 236
    iget p1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 237
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v6}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v6, v3, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_e7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9c .. :try_end_e7} :catch_eb
    .catchall {:try_start_9c .. :try_end_e7} :catchall_c1

    .line 241
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 239
    :catch_eb
    :try_start_eb
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unable to start consent activity"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catchall {:try_start_eb .. :try_end_f3} :catchall_c1

    .line 241
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_f7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw p0

    .line 193
    :cond_fb
    :goto_fb
    const-string p0, "Recent task list is empty!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 188
    :catch_101
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to query recent tasks!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnregisterObserver(Ljava/lang/String;)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->clientRemoved(ILjava/lang/String;)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public sendDetectionResultIntent(Landroid/app/PendingIntent;Ljava/util/List;)V
    .registers 11

    .line 404
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 409
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 410
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 412
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7
    :try_end_1f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_1f} :catch_4a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 412
    :try_start_24
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 414
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending PendingIntent to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_24 .. :try_end_49} :catch_4b

    return-void

    :catch_4a
    move-object v0, p1

    .line 417
    :catch_4b
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t deliver pendingIntent:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendStatusCallback(Landroid/os/RemoteCallback;I)V
    .registers 4

    .line 389
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 390
    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract setComponentName(Landroid/content/ComponentName;)V
.end method

.method public startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .registers 8

    .line 349
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested detection of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 352
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;

    move-result-object v2

    new-instance v3, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 356
    invoke-virtual {p0, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServerStatusCallback(Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p0

    .line 354
    invoke-interface {v0, p1, p2, v2, p0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    goto :goto_46

    :catchall_3b
    move-exception p0

    goto :goto_48

    .line 359
    :cond_3d
    const-string p1, "No valid component found for AmbientContextDetectionService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 360
    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    .line 363
    :goto_46
    monitor-exit v1

    return-void

    :goto_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_3b

    throw p0
.end method

.method public stopDetection(Ljava/lang/String;)V
    .registers 5

    .line 318
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop detection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 321
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 322
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    move-result-object p0

    .line 323
    invoke-interface {p0, p1}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->stopDetection(Ljava/lang/String;)V

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 325
    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_2a

    throw p0
.end method
