.class public Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "WallpaperEffectsGenerationPerUserService.java"

# interfaces
.implements Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;",
        "Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;",
        ">;",
        "Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

.field private mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "master"    # Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 58
    return-void
.end method

.method private createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .registers 4
    .param p1, "taskId"    # Ljava/lang/String;

    .line 203
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method private destroyAndRebindRemoteService()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-nez v0, :cond_5

    .line 180
    return-void

    .line 183
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 184
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_12
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v0}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->destroy()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 188
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 189
    if-eqz v0, :cond_34

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 191
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v0}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->reconnect()V

    .line 196
    :cond_34
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v0, :cond_43

    .line 197
    invoke-static {v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 200
    :cond_43
    return-void
.end method

.method private ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
    .registers 10

    .line 235
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-nez v0, :cond_39

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_1b

    .line 238
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    iget-boolean v1, v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->verbose:Z

    if-eqz v1, :cond_19

    .line 239
    sget-object v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "ensureRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 244
    :cond_1b
    new-instance v8, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 246
    invoke-virtual {v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    iget-boolean v7, v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->verbose:Z

    move-object v1, v8

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;ZZ)V

    iput-object v8, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 249
    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    :cond_39
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    return-object v0
.end method

.method private invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 8
    .param p1, "cinematicEffectResponse"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 212
    const-string v0, "]"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmListener(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 214
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-static {v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmListener(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    goto :goto_6b

    .line 217
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 218
    sget-object v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cinematic effect listener not found for task["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-static {v4}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3f} :catch_42
    .catchall {:try_start_3 .. :try_end_3f} :catchall_40

    goto :goto_6b

    .line 228
    :catchall_40
    move-exception v0

    goto :goto_6f

    .line 222
    :catch_42
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 224
    sget-object v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking cinematic effect listener for task["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-static {v5}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_43 .. :try_end_6b} :catchall_40

    .line 228
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6b
    :goto_6b
    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 229
    nop

    .line 230
    return-void

    .line 228
    :goto_6f
    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 229
    throw v0
.end method

.method static synthetic lambda$onGenerateCinematicEffectLocked$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;)V
    .registers 2
    .param p0, "cinematicEffectRequest"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p1, "s"    # Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-interface {p1, p0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;->onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    return-void
.end method

.method private updateRemoteServiceLocked()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->destroy()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v0, :cond_19

    .line 159
    invoke-static {v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 162
    :cond_19
    return-void
.end method


# virtual methods
.method public isCallingUidAllowed(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->getServiceUidLocked()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 65
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget v3, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_44

    .line 69
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 70
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 77
    return-object v0

    .line 71
    :cond_18
    sget-object v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperEffectsGenerationService from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not require permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service does not require permission android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :catch_44
    move-exception v0

    .line 68
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

.method public onConnectedStateChanged(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .line 260
    if-nez p1, :cond_d

    .line 261
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "remote wallpaper effects generation service disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    .line 264
    :cond_d
    return-void
.end method

.method public onGenerateCinematicEffectLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .registers 9
    .param p1, "cinematicEffectRequest"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p2, "cinematicEffectListener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 95
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "newTaskId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v1, :cond_2e

    .line 98
    invoke-static {v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 99
    new-instance v1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v1

    .line 99
    invoke-direct {p0, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    goto :goto_2d

    .line 105
    :cond_20
    new-instance v1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v1

    .line 105
    invoke-direct {p0, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 111
    :goto_2d
    return-void

    .line 113
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    move-result-object v1

    .line 114
    .local v1, "remoteService":Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
    if-eqz v1, :cond_44

    .line 115
    new-instance v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 117
    new-instance v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-direct {v2, v0, p2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;-><init>(Ljava/lang/String;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    iput-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    goto :goto_7f

    .line 120
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 121
    sget-object v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Remote service not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_51
    nop

    .line 125
    :try_start_52
    invoke-direct {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v2

    .line 124
    invoke-interface {p2, v2}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_59} :catch_5a

    .line 131
    goto :goto_7f

    .line 126
    :catch_5a
    move-exception v2

    .line 127
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 128
    sget-object v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke cinematic effect listener for task ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    return-void
.end method

.method onPackageRestartedLocked()V
    .registers 3

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 173
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_e
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->destroyAndRebindRemoteService()V

    .line 176
    return-void
.end method

.method onPackageUpdatedLocked()V
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_e
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->destroyAndRebindRemoteService()V

    .line 169
    return-void
.end method

.method public onReturnCinematicEffectResponseLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 2
    .param p1, "cinematicEffectResponse"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 142
    return-void
.end method

.method public onServiceDied(Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 254
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "remote wallpaper effects generation service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    .line 256
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->onServiceDied(Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;)V

    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 3
    .param p1, "disabled"    # Z

    .line 83
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 84
    .local v0, "enabledChanged":Z
    invoke-direct {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    .line 85
    return v0
.end method
