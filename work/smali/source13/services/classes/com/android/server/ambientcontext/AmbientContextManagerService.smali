.class public Lcom/android/server/ambientcontext/AmbientContextManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AmbientContextManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;,
        Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/ambientcontext/AmbientContextManagerService;",
        "Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SERVICE_ENABLED:Z = true

.field private static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field public static final MAX_TEMPORARY_SERVICE_DURATION_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExistingClientRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;",
            ">;"
        }
    .end annotation
.end field

.field mIsServiceEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-class v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040245

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 118
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ambientcontext/AmbientContextManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p1, "x1"    # I

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 57
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/PrintWriter;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private findExistingRequests(ILjava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 161
    .local v0, "existingRequests":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;>;"
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 162
    .local v2, "clientRequest":Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 163
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "clientRequest":Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    :cond_20
    goto :goto_b

    .line 166
    :cond_21
    return-object v0
.end method

.method public static isDetectionServiceConfigured()Z
    .registers 6

    .line 225
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 226
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "packageNames":[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    .line 229
    .local v2, "isServiceConfigured":Z
    :cond_13
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detection service configured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v2
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "service_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 181
    const/4 v1, 0x1

    const-string v2, "ambient_context_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    .line 185
    :cond_12
    return-void
.end method

.method private restorePreviouslyEnabledClients(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 292
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 294
    .local v1, "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 296
    .local v3, "clientRequest":Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    invoke-virtual {v3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserId(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 297
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring detection for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getRequest()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v4

    .line 299
    invoke-virtual {v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;

    move-result-object v6

    .line 301
    invoke-virtual {v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getClientStatusCallback()Landroid/os/RemoteCallback;

    move-result-object v7

    .line 298
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 303
    .end local v3    # "clientRequest":Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    :cond_50
    goto :goto_f

    .line 304
    .end local v1    # "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    :cond_51
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method


# virtual methods
.method clientRemoved(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 157
    return-void
.end method

.method protected enforceCallingPermissionForManagement()V
    .registers 4

    .line 214
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public getComponentName(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userId"    # I

    .line 311
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 313
    .local v1, "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    if-eqz v1, :cond_11

    .line 314
    invoke-virtual {v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 316
    .end local v1    # "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    :cond_11
    monitor-exit v0

    .line 317
    const/4 v0, 0x0

    return-object v0

    .line 316
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .registers 2

    .line 220
    const/16 v0, 0x7530

    return v0
.end method

.method getPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 172
    .local v1, "clientRequest":Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 173
    invoke-virtual {v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 175
    .end local v1    # "clientRequest":Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    :cond_1d
    goto :goto_6

    .line 176
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onBootPhase$0$com-android-server-ambientcontext-AmbientContextManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 133
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "clientStatusCallback"    # Landroid/os/RemoteCallback;

    .line 143
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New client added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 147
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;-><init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .registers 5
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 190
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newServiceLocked(IZ)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object p1

    return-object p1
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 129
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_21

    .line 130
    nop

    .line 132
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    .line 130
    const-string v2, "ambient_context_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 135
    const/4 v0, 0x1

    const-string/jumbo v1, "service_enabled"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    .line 139
    :cond_21
    return-void
.end method

.method protected onServicePackageRestartedLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 202
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Restoring remote request. Reason: Service package restarted."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->restorePreviouslyEnabledClients(I)V

    .line 204
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 208
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Restoring remote request. Reason: Service package updated."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->restorePreviouslyEnabledClients(I)V

    .line 210
    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;I)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .param p2, "userId"    # I

    .line 196
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceRemoved"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->destroyLocked()V

    .line 198
    return-void
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 57
    check-cast p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->onServiceRemoved(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 124
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal-IA;)V

    const-string v1, "ambient_context"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 125
    return-void
.end method

.method queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "eventTypes"    # [I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 279
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 283
    .local v1, "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    if-eqz v1, :cond_18

    .line 284
    invoke-virtual {v1, p3, p2, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    goto :goto_2f

    .line 286
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query service not available for user_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v1    # "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    :goto_2f
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v1
.end method

.method startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "detectionResultCallback"    # Landroid/os/RemoteCallback;
    .param p5, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 241
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 245
    .local v1, "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    if-eqz v1, :cond_18

    .line 246
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    goto :goto_2f

    .line 249
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service not available for user_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v1    # "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    :goto_2f
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v1
.end method

.method stopAmbientContextEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 264
    .local v1, "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    if-eqz v1, :cond_18

    .line 265
    invoke-virtual {v1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    goto :goto_2f

    .line 267
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service not available for user_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v1    # "service":Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    :goto_2f
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v1
.end method
