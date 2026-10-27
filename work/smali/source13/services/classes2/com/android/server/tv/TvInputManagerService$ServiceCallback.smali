.class final Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
.super Landroid/media/tv/ITvInputServiceCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 4
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 3181
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputServiceCallback$Stub;-><init>()V

    .line 3182
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 3183
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 3184
    return-void
.end method

.method private addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V
    .registers 6
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 3201
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    .line 3202
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3203
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 3204
    return-void
.end method

.method private ensureHardwarePermission()V
    .registers 3

    .line 3187
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 3191
    return-void

    .line 3189
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have hardware permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidInput(Landroid/media/tv/TvInputInfo;)V
    .registers 4
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 3194
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3197
    return-void

    .line 3195
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TvInputInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 3207
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 3208
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    .line 3209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3211
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    .line 3212
    :try_start_11
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 3213
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V

    .line 3214
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    .line 3216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3217
    nop

    .line 3218
    return-void

    .line 3214
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .end local p1    # "deviceId":I
    .end local p2    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 3216
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .restart local p1    # "deviceId":I
    .restart local p2    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3217
    throw v2
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 3221
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 3222
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    .line 3223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3225
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    .line 3226
    :try_start_11
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 3227
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V

    .line 3228
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    .line 3230
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3231
    nop

    .line 3232
    return-void

    .line 3228
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .end local p1    # "id":I
    .end local p2    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 3230
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .restart local p1    # "id":I
    .restart local p2    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3231
    throw v2
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;

    .line 3235
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 3236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3238
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_5a

    .line 3239
    :try_start_e
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v3

    .line 3240
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    .line 3241
    .local v4, "removed":Z
    :goto_25
    if-eqz v4, :cond_39

    .line 3242
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 3243
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/tv/TvInputHardwareManager;->removeHardwareInput(Ljava/lang/String;)V

    goto :goto_51

    .line 3245
    :cond_39
    const-string v5, "TvInputManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to remove input "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "removed":Z
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_57

    .line 3249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3250
    nop

    .line 3251
    return-void

    .line 3247
    :catchall_57
    move-exception v3

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .end local p1    # "inputId":Ljava/lang/String;
    :try_start_59
    throw v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 3249
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .restart local p1    # "inputId":Ljava/lang/String;
    :catchall_5a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3250
    throw v2
.end method
