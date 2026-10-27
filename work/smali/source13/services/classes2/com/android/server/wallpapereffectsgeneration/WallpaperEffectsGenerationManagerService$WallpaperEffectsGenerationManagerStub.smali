.class Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
.super Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;
.source "WallpaperEffectsGenerationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperEffectsGenerationManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-direct {p0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;-><init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V

    return-void
.end method

.method static synthetic lambda$generateCinematicEffect$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V
    .registers 3
    .param p0, "request"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p1, "listener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
    .param p2, "service"    # Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 112
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->onGenerateCinematicEffectLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    return-void
.end method

.method static synthetic lambda$returnCinematicEffectResponse$1(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V
    .registers 2
    .param p0, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .param p1, "service"    # Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 130
    invoke-virtual {p1, p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->onReturnCinematicEffectResponseLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method

.method private runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z
    .registers 14
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "checkManageWallpaperEffectsPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;",
            ">;)Z"
        }
    .end annotation

    .line 155
    .local p3, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 156
    .local v0, "am":Landroid/app/ActivityManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 156
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, "userId":I
    if-eqz p2, :cond_8a

    .line 167
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 168
    .local v2, "ctx":Landroid/content/Context;
    const-string v3, "android.permission.MANAGE_WALLPAPER_EFFECTS_GENERATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 170
    # getter for: Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v3}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->access$000(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v3

    if-nez v3, :cond_8a

    iget-object v3, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-static {v3}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v3

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_8a

    .line 172
    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Cannot call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_8a
    :goto_8a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 179
    .local v2, "origCallingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 180
    .local v3, "origId":J
    const/4 v5, 0x0

    .line 182
    .local v5, "accepted":Z
    :try_start_93
    iget-object v6, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    # getter for: Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->access$100(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_ea

    .line 183
    :try_start_9a
    iget-object v7, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 184
    # invokes: Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v7, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->access$200(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 185
    .local v7, "service":Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
    if-eqz v7, :cond_e1

    .line 189
    if-nez p2, :cond_dd

    .line 190
    invoke-virtual {v7, v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isCallingUidAllowed(I)Z

    move-result v8

    if-eqz v8, :cond_ad

    goto :goto_dd

    .line 191
    :cond_ad
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: cannot call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] doesn\'t match service implementation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "am":Landroid/app/ActivityManagerInternal;
    .end local v1    # "userId":I
    .end local v2    # "origCallingUid":I
    .end local v3    # "origId":J
    .end local v5    # "accepted":Z
    .end local p0    # "this":Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
    .end local p1    # "func":Ljava/lang/String;
    .end local p2    # "checkManageWallpaperEffectsPermission":Z
    .end local p3    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;>;"
    throw v9

    .line 196
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v0    # "am":Landroid/app/ActivityManagerInternal;
    .restart local v1    # "userId":I
    .restart local v2    # "origCallingUid":I
    .restart local v3    # "origId":J
    .restart local v5    # "accepted":Z
    .restart local p0    # "this":Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
    .restart local p1    # "func":Ljava/lang/String;
    .restart local p2    # "checkManageWallpaperEffectsPermission":Z
    .restart local p3    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;>;"
    :cond_dd
    :goto_dd
    const/4 v5, 0x1

    .line 197
    invoke-interface {p3, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 199
    .end local v7    # "service":Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
    :cond_e1
    monitor-exit v6
    :try_end_e2
    .catchall {:try_start_9a .. :try_end_e2} :catchall_e7

    .line 201
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    nop

    .line 204
    return v5

    .line 199
    :catchall_e7
    move-exception v7

    :try_start_e8
    monitor-exit v6
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    .end local v0    # "am":Landroid/app/ActivityManagerInternal;
    .end local v1    # "userId":I
    .end local v2    # "origCallingUid":I
    .end local v3    # "origId":J
    .end local v5    # "accepted":Z
    .end local p0    # "this":Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
    .end local p1    # "func":Ljava/lang/String;
    .end local p2    # "checkManageWallpaperEffectsPermission":Z
    .end local p3    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;>;"
    :try_start_e9
    throw v7
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_ea

    .line 201
    .restart local v0    # "am":Landroid/app/ActivityManagerInternal;
    .restart local v1    # "userId":I
    .restart local v2    # "origCallingUid":I
    .restart local v3    # "origId":J
    .restart local v5    # "accepted":Z
    .restart local p0    # "this":Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
    .restart local p1    # "func":Ljava/lang/String;
    .restart local p2    # "checkManageWallpaperEffectsPermission":Z
    .restart local p3    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;>;"
    :catchall_ea
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    throw v6
.end method


# virtual methods
.method public generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .registers 6
    .param p1, "request"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p2, "listener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 111
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    const-string v1, "generateCinematicEffect"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 114
    :try_start_e
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    .line 114
    invoke-interface {p2, v0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_20

    .line 123
    goto :goto_21

    .line 118
    :catch_20
    move-exception v0

    .line 125
    :cond_21
    :goto_21
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 137
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;-><init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V

    .line 139
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 140
    return-void
.end method

.method public returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 129
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    const-string/jumbo v1, "returnCinematicResponse"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z

    .line 131
    return-void
.end method
