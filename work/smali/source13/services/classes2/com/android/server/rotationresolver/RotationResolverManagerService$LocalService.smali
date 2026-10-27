.class final Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
.super Landroid/rotationresolver/RotationResolverInternal;
.source "RotationResolverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rotationresolver/RotationResolverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-direct {p0}, Landroid/rotationresolver/RotationResolverInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    return-void
.end method


# virtual methods
.method public isRotationResolverSupported()Z
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    # getter for: Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$000(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v1, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    monitor-exit v0

    return v1

    .line 179
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
    .registers 21
    .param p1, "callbackInternal"    # Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "proposedRotation"    # I
    .param p4, "currentRotation"    # I
    .param p5, "timeout"    # J
    .param p7, "cancellationSignalInternal"    # Landroid/os/CancellationSignal;

    .line 187
    move-object v1, p0

    move-object v2, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    # getter for: Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$100(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 190
    :try_start_f
    iget-object v0, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$fgetmPrivacyManager(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    move v0, v4

    .line 192
    .local v0, "isCameraAvailable":Z
    :goto_20
    iget-object v5, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v5, v5, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_8e

    if-eqz v5, :cond_64

    if-eqz v0, :cond_64

    .line 193
    :try_start_28
    iget-object v4, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 195
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 194
    # invokes: Lcom/android/server/rotationresolver/RotationResolverManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v4, v5}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$200(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_60

    .line 197
    .local v4, "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    if-nez p2, :cond_47

    .line 198
    :try_start_36
    new-instance v12, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v6, ""

    const/4 v9, 0x1

    move-object v5, v12

    move/from16 v7, p4

    move/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_8e

    move-object v5, v12

    .local v5, "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    goto :goto_56

    .line 202
    .end local v5    # "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    :cond_47
    :try_start_47
    new-instance v12, Landroid/service/rotationresolver/RotationResolutionRequest;

    const/4 v9, 0x1

    move-object v5, v12

    move-object v6, p2

    move/from16 v7, p4

    move/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_60

    move-object v5, v12

    .line 206
    .restart local v5    # "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    :goto_56
    move-object/from16 v6, p7

    :try_start_58
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    .line 208
    .end local v4    # "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .end local v5    # "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    move/from16 v5, p3

    move/from16 v7, p4

    goto :goto_86

    .line 217
    .end local v0    # "isCameraAvailable":Z
    :catchall_60
    move-exception v0

    move-object/from16 v6, p7

    goto :goto_89

    .line 192
    .restart local v0    # "isCameraAvailable":Z
    :cond_64
    move-object/from16 v6, p7

    .line 209
    if-eqz v0, :cond_72

    .line 210
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Rotation Resolver service is disabled."

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 212
    :cond_72
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Camera is locked by a toggle."

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_7b
    invoke-interface {p1, v4}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V
    :try_end_7e
    .catchall {:try_start_58 .. :try_end_7e} :catchall_88

    .line 215
    const/4 v4, 0x6

    move/from16 v5, p3

    move/from16 v7, p4

    :try_start_83
    invoke-static {v5, v7, v4}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    .line 217
    .end local v0    # "isCameraAvailable":Z
    :goto_86
    monitor-exit v3

    .line 218
    return-void

    .line 217
    :catchall_88
    move-exception v0

    :goto_89
    move/from16 v5, p3

    move/from16 v7, p4

    goto :goto_95

    :catchall_8e
    move-exception v0

    move/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v6, p7

    :goto_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_83 .. :try_end_96} :catchall_97

    throw v0

    :catchall_97
    move-exception v0

    goto :goto_95
.end method
