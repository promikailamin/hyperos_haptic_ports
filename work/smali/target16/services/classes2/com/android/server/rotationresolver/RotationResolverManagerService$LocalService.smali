.class public final Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
.super Landroid/rotationresolver/RotationResolverInternal;
.source "RotationResolverManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-direct {p0}, Landroid/rotationresolver/RotationResolverInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    return-void
.end method


# virtual methods
.method public isRotationResolverSupported()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$000(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
    .registers 17

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$100(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 190
    :try_start_d
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$fgetmPrivacyManager(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    .line 192
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    if-eqz v2, :cond_49

    if-nez v0, :cond_49

    const/4 v0, -0x2

    .line 194
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$200(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-nez p2, :cond_3a

    .line 197
    new-instance v2, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v3, ""

    const/4 v6, 0x1

    move v5, p3

    move v4, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    :goto_34
    move-object/from16 p2, p7

    goto :goto_45

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_68

    .line 201
    :cond_3a
    new-instance v2, Landroid/service/rotationresolver/RotationResolutionRequest;

    const/4 v6, 0x1

    move-object v3, p2

    move v5, p3

    move v4, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    goto :goto_34

    .line 205
    :goto_45
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    goto :goto_66

    :cond_49
    if-nez v0, :cond_55

    .line 209
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Rotation Resolver service is disabled."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 211
    :cond_55
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Camera is locked by a toggle."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    const/4 p0, 0x0

    .line 213
    invoke-interface {p1, p0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    const/4 p0, 0x6

    .line 214
    invoke-static {p3, p4, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    .line 216
    :goto_66
    monitor-exit v1

    return-void

    :goto_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_d .. :try_end_69} :catchall_37

    throw p0
.end method
