.class final Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AmbientContextManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;",
        "Lcom/android/server/ambientcontext/AmbientContextManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const-class v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "master"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 74
    return-void
.end method

.method private ensureRemoteServiceInitiated()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    if-nez v0, :cond_15

    .line 89
    new-instance v0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 92
    :cond_15
    return-void
.end method

.method private getConsentComponent()Landroid/content/ComponentName;
    .registers 6

    .line 343
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "consentComponent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 347
    const/4 v2, 0x0

    return-object v2

    .line 349
    :cond_17
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Consent component name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method

.method private getServerStatusCallback(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;
    .registers 4
    .param p1, "clientStatusCallback"    # Landroid/os/RemoteCallback;

    .line 190
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method static synthetic lambda$getServerStatusCallback$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 11
    .param p0, "clientStatusCallback"    # Landroid/os/RemoteCallback;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 191
    nop

    .line 192
    const-string v0, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 194
    .local v0, "serviceStatus":Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 196
    .local v1, "token":J
    :try_start_d
    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    .line 200
    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result v6

    .line 198
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {p0, v4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result v5

    .line 203
    .local v5, "statusCode":I
    sget-object v6, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got detection status of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_4e

    .line 206
    nop

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "statusCode":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    nop

    .line 208
    return-void

    .line 206
    :catchall_4e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v3
.end method

.method private sendDetectionResultIntent(Landroid/app/PendingIntent;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V
    .registers 13
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "result"    # Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {p2}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    const-string v2, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v9

    .line 390
    .local v9, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 392
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 393
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 392
    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending PendingIntent to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1b .. :try_end_52} :catch_53

    .line 398
    goto :goto_6c

    .line 396
    :catch_53
    move-exception v1

    .line 397
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t deliver pendingIntent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_6c
    return-void
.end method


# virtual methods
.method createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 403
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method destroyLocked()V
    .registers 3

    .line 77
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    if-eqz v0, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    invoke-virtual {v1}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->unbind()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 82
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1

    .line 84
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 155
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 157
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 158
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    if-eqz v0, :cond_17

    .line 159
    const-string v1, ""

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 161
    :cond_17
    return-void

    .line 157
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method synthetic lambda$createDetectionResultRemoteCallback$1$com-android-server-ambientcontext-AmbientContextManagerPerUserService(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "result"    # Landroid/os/Bundle;

    .line 404
    nop

    .line 405
    const-string v0, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 407
    .local v0, "detectionResult":Landroid/service/ambientcontext/AmbientContextDetectionResult;
    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 409
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v2, :cond_1a

    .line 410
    return-void

    .line 413
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 415
    .local v3, "token":J
    :try_start_1e
    invoke-direct {p0, v2, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendDetectionResultIntent(Landroid/app/PendingIntent;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V

    .line 416
    sget-object v5, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got detection result of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1e .. :try_end_47} :catchall_4c

    .line 419
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    nop

    .line 421
    return-void

    .line 419
    :catchall_4c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw v5
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 133
    const-string v0, "android.permission.BIND_AMBIENT_CONTEXT_DETECTION_SERVICE"

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mUserId:I

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 135
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_37

    .line 136
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 137
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_37

    .line 139
    :cond_19
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Service %s requires %s permission. Found %s permission"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 141
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 139
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .end local p1    # "serviceComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_39

    .line 149
    .end local v2    # "permission":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .restart local p1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_37
    :goto_37
    nop

    .line 150
    return-object v1

    .line 146
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_39
    move-exception v0

    .line 147
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

.method public onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "eventTypes"    # [I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 253
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query event status of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 257
    const-string v2, "Detection service is not available at this moment."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusToCallback(Landroid/os/RemoteCallback;I)V

    .line 260
    monitor-exit v1

    return-void

    .line 262
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 263
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 266
    invoke-direct {p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServerStatusCallback(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;

    move-result-object v2

    .line 263
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "clientStatusCallback"    # Landroid/os/RemoteCallback;

    .line 169
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_16

    .line 171
    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 175
    monitor-exit v0

    return-void

    .line 179
    :cond_16
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;

    move-result-object v2

    .line 179
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mUserId:I

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onStartConsentActivity([ILjava/lang/String;)V
    .registers 16
    .param p1, "eventTypes"    # [I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 271
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening consent activity of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getUserId()I

    move-result v1

    .line 279
    .local v1, "userId":I
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v2
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_34} :catch_10a

    .line 284
    .local v2, "recentTasks":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    nop

    .line 286
    if-eqz v2, :cond_104

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    goto/16 :goto_104

    .line 291
    :cond_43
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 292
    .local v3, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recent task package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t match with client package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 299
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getConsentComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 300
    .local v4, "consentComponent":Landroid/content/ComponentName;
    if-nez v4, :cond_88

    .line 301
    const-string v5, "Consent component not found!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 305
    :cond_88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting consent activity for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 309
    .local v6, "identity":J
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 310
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040221

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, "packageNameExtraKey":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040220

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "eventArrayExtraKey":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    if-eqz v9, :cond_ca

    .line 318
    invoke-virtual {v5, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cf

    .line 320
    :cond_ca
    const-string v11, "Missing packageNameExtraKey for consent activity"

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_cf
    if-eqz v10, :cond_d5

    .line 323
    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_da

    .line 325
    :cond_d5
    const-string v11, "Missing eventArrayExtraKey for consent activity"

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_da
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 330
    .local v0, "options":Landroid/app/ActivityOptions;
    iget v11, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v0, v11}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 331
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v8, v5, v11, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_ee
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a7 .. :try_end_ee} :catch_f1
    .catchall {:try_start_a7 .. :try_end_ee} :catchall_ef

    .line 335
    .end local v0    # "options":Landroid/app/ActivityOptions;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "packageNameExtraKey":Ljava/lang/String;
    .end local v10    # "eventArrayExtraKey":Ljava/lang/String;
    goto :goto_fb

    :catchall_ef
    move-exception v0

    goto :goto_100

    .line 332
    :catch_f1
    move-exception v0

    .line 333
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_f2
    sget-object v8, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "unable to start consent activity"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_ef

    .line 335
    nop

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_fb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :goto_100
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw v0

    .line 287
    .end local v3    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v4    # "consentComponent":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "identity":J
    :cond_104
    :goto_104
    const-string v3, "Recent task list is empty!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 281
    .end local v2    # "recentTasks":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_10a
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to query recent tasks!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onUnregisterObserver(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->clientRemoved(ILjava/lang/String;)V

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method sendStatusCallback(Landroid/os/RemoteCallback;I)V
    .registers 5
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p2, "statusCode"    # I

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method sendStatusToCallback(Landroid/os/RemoteCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "status"    # I

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method setUpServiceIfNeeded()Z
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    .line 111
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 114
    return v1

    .line 119
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mUserId:I

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_23

    .line 124
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 125
    if-eqz v0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    .line 121
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_23
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException while setting up service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1
.end method

.method startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "detectionResultCallback"    # Landroid/os/RemoteCallback;
    .param p4, "clientStatusCallback"    # Landroid/os/RemoteCallback;

    .line 214
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested detection of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 217
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 218
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 219
    invoke-direct {p0, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServerStatusCallback(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;

    move-result-object v2

    .line 218
    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    goto :goto_3b

    .line 221
    :cond_32
    const-string v2, "No valid component found for AmbientContextDetectionService"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p0, p4, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusToCallback(Landroid/os/RemoteCallback;I)V

    .line 225
    :goto_3b
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method stopDetection(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 367
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop detection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_27

    .line 370
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 371
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    invoke-virtual {v1, p1}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->stopDetection(Ljava/lang/String;)V

    .line 373
    :cond_27
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw v1
.end method
