.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.super Lcom/android/internal/app/ISoundTriggerSession$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundTriggerSessionStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/IRecognitionStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksLock:Ljava/lang/Object;

.field private final mClient:Landroid/os/IBinder;

.field private final mLoadedModels:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginatorIdentity:Landroid/media/permission/Identity;

.field private final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;
    .param p2, "client"    # Landroid/os/IBinder;

    .line 271
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;-><init>()V

    .line 267
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 272
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$mnewSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 273
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mClient:Landroid/os/IBinder;

    .line 274
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 276
    :try_start_28
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    .line 281
    goto :goto_3a

    .line 279
    :catch_32
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerService"

    const-string v2, "Failed to register death listener."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method private clientDied()V
    .registers 4

    .line 860
    const-string v0, "SoundTriggerService"

    const-string v1, "Client died, cleaning up session."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    .line 864
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 867
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 873
    return-void

    .line 869
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "detectionService"    # Landroid/content/ComponentName;

    .line 876
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 877
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_15

    .line 883
    return-void

    .line 880
    :cond_15
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .registers 7
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 388
    const-string v0, "deleteSoundModel(): id = "

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 389
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_6
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 391
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 401
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_67

    .line 404
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 405
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_66
    return-void

    .line 388
    .restart local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_67
    move-exception v0

    if-eqz v1, :cond_72

    :try_start_6a
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw v0
.end method

.method public getModelState(Landroid/os/ParcelUuid;)I
    .registers 10
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 706
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 707
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 708
    const/high16 v1, -0x80000000

    .line 710
    .local v1, "ret":I
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModelState(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModelState(): id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 716
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_f8

    .line 717
    :try_start_49
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 718
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v3, :cond_9b

    .line 719
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModelState(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 724
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_49 .. :try_end_95} :catchall_f5

    .line 741
    if-eqz v0, :cond_9a

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 724
    :cond_9a
    return v1

    .line 726
    :cond_9b
    :try_start_9b
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_104

    .line 732
    const-string v4, "SoundTriggerService"

    goto :goto_b1

    .line 728
    :pswitch_a5
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v4

    move v1, v4

    .line 729
    goto :goto_ee

    .line 732
    :goto_b1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported model type, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModelState(): Unsupported model type, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 735
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 739
    :goto_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_9b .. :try_end_ef} :catchall_f5

    .line 741
    if-eqz v0, :cond_f4

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 739
    :cond_f4
    return v1

    .line 740
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_f5
    move-exception v3

    :try_start_f6
    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_f7
    throw v3
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    .line 706
    .end local v1    # "ret":I
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :catchall_f8
    move-exception v1

    if-eqz v0, :cond_103

    :try_start_fb
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_ff

    goto :goto_103

    :catchall_ff
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_103
    :goto_103
    throw v1

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_a5
    .end packed-switch
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 8

    .line 747
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 748
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 750
    const-string v1, "SoundTriggerService"

    const-string v2, "getModuleProperties()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_46

    .line 754
    :try_start_17
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v2

    .line 755
    .local v2, "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModuleProperties(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 757
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_43

    .line 759
    if-eqz v0, :cond_42

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 757
    :cond_42
    return-object v2

    .line 758
    .end local v2    # "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    :try_start_45
    throw v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 747
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    :catchall_46
    move-exception v1

    if-eqz v0, :cond_51

    :try_start_49
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw v1
.end method

.method public getParameter(Landroid/os/ParcelUuid;I)I
    .registers 10
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 800
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 801
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 803
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameter(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 811
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_c3

    .line 812
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 813
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-eqz v2, :cond_7a

    .line 822
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameter(Ljava/util/UUID;I)I

    move-result v3

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_c0

    .line 824
    if-eqz v0, :cond_79

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 822
    :cond_79
    return v3

    .line 814
    :cond_7a
    :try_start_7a
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParameter(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 819
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sound model is not loaded"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "modelParam":I
    throw v3

    .line 823
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "modelParam":I
    :catchall_c0
    move-exception v2

    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_7a .. :try_end_c2} :catchall_c0

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "modelParam":I
    :try_start_c2
    throw v2
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    .line 800
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "modelParam":I
    :catchall_c3
    move-exception v1

    if-eqz v0, :cond_ce

    :try_start_c6
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_ca

    goto :goto_ce

    :catchall_ca
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ce
    :goto_ce
    throw v1
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 7
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 356
    const-string v0, "getSoundModel(): id = "

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 357
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_6
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 359
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 365
    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_53

    .line 367
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    nop

    .line 368
    if-eqz v1, :cond_52

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 367
    :cond_52
    return-object v0

    .line 356
    .end local v0    # "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    :try_start_56
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v0
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .registers 6
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 692
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 693
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_36

    .line 695
    :try_start_c
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 696
    .local v2, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v2, :cond_22

    .line 697
    const/4 v3, 0x0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_33

    .line 701
    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 697
    :cond_21
    return v3

    .line 699
    .end local v2    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_33

    .line 700
    :try_start_23
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_36

    .line 701
    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 700
    :cond_32
    return v1

    .line 699
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "parcelUuid":Landroid/os/ParcelUuid;
    :try_start_35
    throw v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 692
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "parcelUuid":Landroid/os/ParcelUuid;
    :catchall_36
    move-exception v1

    if-eqz v0, :cond_41

    :try_start_39
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-soundtrigger-SoundTriggerService$SoundTriggerSessionStub()V
    .registers 1

    .line 277
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    .line 278
    return-void
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .registers 8
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 409
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 410
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 411
    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_9c

    .line 420
    :cond_13
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGenericSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGenericSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 424
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_b9

    .line 427
    :try_start_59
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 431
    .local v2, "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-eqz v2, :cond_87

    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 432
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 433
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_79
    .catchall {:try_start_59 .. :try_end_79} :catchall_99

    .line 434
    :try_start_79
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    monitor-exit v3

    goto :goto_87

    :catchall_84
    move-exception v4

    monitor-exit v3
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_84

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :try_start_86
    throw v4

    .line 437
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_87
    :goto_87
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    nop

    .end local v2    # "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_99

    .line 439
    const/4 v1, 0x0

    .line 440
    if-eqz v0, :cond_98

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 439
    :cond_98
    return v1

    .line 438
    :catchall_99
    move-exception v2

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :try_start_9b
    throw v2

    .line 412
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_9c
    :goto_9c
    const-string v1, "SoundTriggerService"

    const-string v2, "Invalid sound model"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v3, "loadGenericSoundModel(): Invalid sound model"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_b1
    .catchall {:try_start_9b .. :try_end_b1} :catchall_b9

    .line 417
    const/high16 v1, -0x80000000

    .line 440
    if-eqz v0, :cond_b8

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 417
    :cond_b8
    return v1

    .line 409
    :catchall_b9
    move-exception v1

    if-eqz v0, :cond_c4

    :try_start_bc
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_c4

    :catchall_c0
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c4
    :goto_c4
    throw v1
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 9
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 445
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 446
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 447
    const/high16 v1, -0x80000000

    if-eqz p1, :cond_d1

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_15

    goto/16 :goto_d1

    .line 455
    :cond_15
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    goto/16 :goto_b5

    .line 465
    :cond_25
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 470
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6b
    .catchall {:try_start_4 .. :try_end_6b} :catchall_ed

    .line 473
    :try_start_6b
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 477
    .local v2, "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    const/4 v3, 0x0

    if-eqz v2, :cond_a0

    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 478
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 479
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v5

    .line 478
    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 480
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_92
    .catchall {:try_start_6b .. :try_end_92} :catchall_b2

    .line 481
    :try_start_92
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    monitor-exit v4

    goto :goto_a0

    :catchall_9d
    move-exception v3

    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_9d

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_start_9f
    throw v3

    .line 484
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_a0
    :goto_a0
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    nop

    .end local v2    # "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_b2

    .line 486
    nop

    .line 487
    if-eqz v0, :cond_b1

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 486
    :cond_b1
    return v3

    .line 485
    :catchall_b2
    move-exception v2

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_start_b4
    throw v2

    .line 456
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_b5
    :goto_b5
    const-string v2, "SoundTriggerService"

    const-string v3, "Only one keyphrase per model is currently supported."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v4, "loadKeyphraseSoundModel(): Only one keyphrase per model is currently supported."

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_ca
    .catchall {:try_start_b4 .. :try_end_ca} :catchall_ed

    .line 462
    nop

    .line 487
    if-eqz v0, :cond_d0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 462
    :cond_d0
    return v1

    .line 448
    :cond_d1
    :goto_d1
    :try_start_d1
    const-string v2, "SoundTriggerService"

    const-string v3, "Invalid sound model"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v4, "loadKeyphraseSoundModel(): Invalid sound model"

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_e6
    .catchall {:try_start_d1 .. :try_end_e6} :catchall_ed

    .line 453
    nop

    .line 487
    if-eqz v0, :cond_ec

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 453
    :cond_ec
    return v1

    .line 445
    :catchall_ed
    move-exception v1

    if-eqz v0, :cond_f8

    :try_start_f0
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    goto :goto_f8

    :catchall_f4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f8
    :goto_f8
    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 289
    :catch_5
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 293
    const-string v1, "SoundTriggerService"

    const-string v2, "SoundTriggerService Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_11
    throw v0
.end method

.method public queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 10
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "modelParam"    # I

    .line 831
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 832
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 834
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryParameter(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryParameter(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 842
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5d
    .catchall {:try_start_4 .. :try_end_5d} :catchall_c5

    .line 843
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 844
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_b1

    .line 845
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryParameter(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 851
    const/4 v3, 0x0

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_5d .. :try_end_ab} :catchall_c2

    .line 856
    if-eqz v0, :cond_b0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 851
    :cond_b0
    return-object v3

    .line 854
    :cond_b1
    :try_start_b1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v3

    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_c2

    .line 856
    if-eqz v0, :cond_c1

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 854
    :cond_c1
    return-object v3

    .line 855
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_c2
    move-exception v2

    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "modelParam":I
    :try_start_c4
    throw v2
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    .line 831
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "modelParam":I
    :catchall_c5
    move-exception v1

    if-eqz v0, :cond_d0

    :try_start_c8
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw v1
.end method

.method public setParameter(Landroid/os/ParcelUuid;II)I
    .registers 11
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 765
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 766
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 768
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameter(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParameter(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_71
    .catchall {:try_start_4 .. :try_end_71} :catchall_e4

    .line 779
    :try_start_71
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 780
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_d0

    .line 781
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not loaded. Loaded models: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 782
    invoke-virtual {v5}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParameter(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 787
    sget v3, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_71 .. :try_end_ca} :catchall_e1

    .line 793
    if-eqz v0, :cond_cf

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 787
    :cond_cf
    return v3

    .line 790
    :cond_d0
    :try_start_d0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameter(Ljava/util/UUID;II)I

    move-result v3

    monitor-exit v1
    :try_end_db
    .catchall {:try_start_d0 .. :try_end_db} :catchall_e1

    .line 793
    if-eqz v0, :cond_e0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 790
    :cond_e0
    return v3

    .line 792
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_e1
    move-exception v2

    :try_start_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    :try_start_e3
    throw v2
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e4

    .line 765
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :catchall_e4
    move-exception v1

    if-eqz v0, :cond_ef

    :try_start_e7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_ef

    :catchall_eb
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ef
    :goto_ef
    throw v1
.end method

.method public startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 14
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p4, "runInBatterySaverMode"    # Z

    .line 302
    const-string/jumbo v0, "startRecognition(): Uuid : "

    const-string v1, "SoundTriggerService"

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2

    .line 303
    .local v2, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_9
    const-string v3, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 304
    if-eqz p4, :cond_15

    .line 305
    const-string v3, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    invoke-direct {p0, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 309
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 316
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    if-nez v0, :cond_8a

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null model in database for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition(): Null model in database for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_82
    .catchall {:try_start_9 .. :try_end_82} :catchall_ae

    .line 322
    const/high16 v1, -0x80000000

    .line 331
    if-eqz v2, :cond_89

    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 322
    :cond_89
    return v1

    .line 325
    :cond_8a
    :try_start_8a
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v1

    .line 327
    .local v1, "ret":I
    if-nez v1, :cond_a7

    .line 328
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V
    :try_end_a7
    .catchall {:try_start_8a .. :try_end_a7} :catchall_ae

    .line 330
    :cond_a7
    nop

    .line 331
    if-eqz v2, :cond_ad

    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 330
    :cond_ad
    return v1

    .line 302
    .end local v0    # "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .end local v1    # "ret":I
    :catchall_ae
    move-exception v0

    if-eqz v2, :cond_b9

    :try_start_b1
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b9
    :goto_b9
    throw v0
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 23
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "detectionService"    # Landroid/content/ComponentName;
    .param p4, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 493
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v10

    .line 494
    .local v10, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_8
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v0, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {v8, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b7

    .line 500
    move-object/from16 v11, p3

    :try_start_18
    invoke-direct {v8, v11}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    .line 503
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognitionForService(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 509
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 511
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    move-object v1, v0

    .line 513
    .local v1, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    iget-object v0, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_72
    .catchall {:try_start_18 .. :try_end_72} :catchall_1b5

    .line 514
    :try_start_72
    iget-object v0, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-object v3, v0

    .line 515
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    const/high16 v0, -0x80000000

    if-nez v3, :cond_c8

    .line 516
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRecognitionForService():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 521
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_72 .. :try_end_c2} :catchall_1b2

    .line 566
    if-eqz v10, :cond_c7

    invoke-interface {v10}, Landroid/media/permission/SafeCloseable;->close()V

    .line 521
    :cond_c7
    return v0

    .line 523
    :cond_c8
    const/4 v4, 0x0

    .line 524
    .local v4, "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_start_c9
    iget-object v5, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_1b2

    .line 525
    :try_start_cc
    iget-object v6, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-object v4, v6

    .line 526
    monitor-exit v5
    :try_end_da
    .catchall {:try_start_cc .. :try_end_da} :catchall_1af

    .line 527
    if-eqz v4, :cond_121

    .line 528
    :try_start_dc
    const-string v5, "SoundTriggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already running"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startRecognitionForService():"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " is already running"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 534
    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_dc .. :try_end_11b} :catchall_1b2

    .line 566
    if-eqz v10, :cond_120

    invoke-interface {v10}, Landroid/media/permission/SafeCloseable;->close()V

    .line 534
    :cond_120
    return v0

    .line 537
    :cond_121
    :try_start_121
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_1c8

    .line 543
    const-string v5, "SoundTriggerService"

    goto :goto_194

    .line 539
    :pswitch_12b
    iget-object v12, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v13

    move-object v14, v3

    check-cast v14, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/16 v17, 0x0

    move-object v15, v1

    move-object/from16 v16, p4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    move v5, v0

    .line 541
    .local v5, "ret":I
    nop

    .line 551
    if-eqz v5, :cond_16f

    .line 552
    const-string v0, "SoundTriggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v7, "startRecognitionForService(): Failed to start model:"

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 557
    monitor-exit v2
    :try_end_169
    .catchall {:try_start_121 .. :try_end_169} :catchall_1b2

    .line 566
    if-eqz v10, :cond_16e

    invoke-interface {v10}, Landroid/media/permission/SafeCloseable;->close()V

    .line 557
    :cond_16e
    return v5

    .line 559
    :cond_16f
    :try_start_16f
    iget-object v6, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_1b2

    .line 560
    :try_start_172
    iget-object v0, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    monitor-exit v6
    :try_end_17c
    .catchall {:try_start_172 .. :try_end_17c} :catchall_191

    .line 563
    :try_start_17c
    iget-object v0, v8, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 564
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v4    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v5    # "ret":I
    monitor-exit v2
    :try_end_18a
    .catchall {:try_start_17c .. :try_end_18a} :catchall_1b2

    .line 565
    const/4 v0, 0x0

    .line 566
    if-eqz v10, :cond_190

    invoke-interface {v10}, Landroid/media/permission/SafeCloseable;->close()V

    .line 565
    :cond_190
    return v0

    .line 561
    .restart local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v4    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v5    # "ret":I
    :catchall_191
    move-exception v0

    :try_start_192
    monitor-exit v6
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    .end local v1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v10    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "detectionService":Landroid/content/ComponentName;
    .end local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_start_193
    throw v0

    .line 543
    .end local v5    # "ret":I
    .restart local v1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v10    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "detectionService":Landroid/content/ComponentName;
    .restart local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_194
    const-string v6, "Unknown model type"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v7, "startRecognitionForService(): Unknown model type"

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 548
    monitor-exit v2
    :try_end_1a9
    .catchall {:try_start_193 .. :try_end_1a9} :catchall_1b2

    .line 566
    if-eqz v10, :cond_1ae

    invoke-interface {v10}, Landroid/media/permission/SafeCloseable;->close()V

    .line 548
    :cond_1ae
    return v0

    .line 526
    :catchall_1af
    move-exception v0

    :try_start_1b0
    monitor-exit v5
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    .end local v1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v10    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "detectionService":Landroid/content/ComponentName;
    .end local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_start_1b1
    throw v0

    .line 564
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v4    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v10    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "detectionService":Landroid/content/ComponentName;
    .restart local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_1b2
    move-exception v0

    monitor-exit v2
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_1b2

    .end local v10    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "detectionService":Landroid/content/ComponentName;
    .end local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_start_1b4
    throw v0
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b5

    .line 493
    .end local v1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v10    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "detectionService":Landroid/content/ComponentName;
    .restart local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_1b5
    move-exception v0

    goto :goto_1ba

    :catchall_1b7
    move-exception v0

    move-object/from16 v11, p3

    :goto_1ba
    move-object v1, v0

    if-eqz v10, :cond_1c6

    :try_start_1bd
    invoke-interface {v10}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1c0
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_1c1

    goto :goto_1c6

    :catchall_1c1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c6
    :goto_1c6
    throw v1

    nop

    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_12b
    .end packed-switch
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 336
    const-string/jumbo v0, "stopRecognition(): Uuid : "

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 337
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_7
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 339
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v0

    .line 347
    .local v0, "ret":I
    if-nez v0, :cond_58

    .line 348
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_5f

    .line 350
    :cond_58
    nop

    .line 351
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 350
    :cond_5e
    return v0

    .line 336
    .end local v0    # "ret":I
    :catchall_5f
    move-exception v0

    if-eqz v1, :cond_6a

    :try_start_62
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v0
.end method

.method public stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .registers 11
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 571
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 572
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 574
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 580
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_193

    .line 581
    :try_start_49
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 582
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    const/high16 v3, -0x80000000

    if-nez v2, :cond_9e

    .line 583
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopRecognitionForService(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 589
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_49 .. :try_end_98} :catchall_190

    .line 634
    if-eqz v0, :cond_9d

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 589
    :cond_9d
    return v3

    .line 591
    :cond_9e
    const/4 v4, 0x0

    .line 592
    .local v4, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_start_9f
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_190

    .line 593
    :try_start_a2
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-object v4, v6

    .line 594
    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_18d

    .line 595
    if-nez v4, :cond_f7

    .line 596
    :try_start_b2
    const-string v5, "SoundTriggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not running"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopRecognitionForService(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not running"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 602
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_b2 .. :try_end_f1} :catchall_190

    .line 634
    if-eqz v0, :cond_f6

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 602
    :cond_f6
    return v3

    .line 605
    :cond_f7
    :try_start_f7
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_1a0

    .line 611
    const-string v5, "SoundTriggerService"

    goto :goto_172

    .line 607
    :pswitch_101
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 608
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 607
    invoke-virtual {v3, v5, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v3

    .line 609
    .local v3, "ret":I
    nop

    .line 619
    if-eqz v3, :cond_14d

    .line 620
    const-string v5, "SoundTriggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to stop model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopRecognitionForService(): Failed to stop model: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 625
    monitor-exit v1
    :try_end_147
    .catchall {:try_start_f7 .. :try_end_147} :catchall_190

    .line 634
    if-eqz v0, :cond_14c

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 625
    :cond_14c
    return v3

    .line 627
    :cond_14d
    :try_start_14d
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_150
    .catchall {:try_start_14d .. :try_end_150} :catchall_190

    .line 628
    :try_start_150
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    monitor-exit v5
    :try_end_15a
    .catchall {:try_start_150 .. :try_end_15a} :catchall_16f

    .line 631
    :try_start_15a
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 632
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "ret":I
    .end local v4    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    monitor-exit v1
    :try_end_168
    .catchall {:try_start_15a .. :try_end_168} :catchall_190

    .line 633
    const/4 v1, 0x0

    .line 634
    if-eqz v0, :cond_16e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 633
    :cond_16e
    return v1

    .line 629
    .restart local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v3    # "ret":I
    .restart local v4    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_16f
    move-exception v6

    :try_start_170
    monitor-exit v5
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_171
    throw v6

    .line 611
    .end local v3    # "ret":I
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :goto_172
    const-string v6, "Unknown model type"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v7, "stopRecognitionForService(): Unknown model type"

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 616
    monitor-exit v1
    :try_end_187
    .catchall {:try_start_171 .. :try_end_187} :catchall_190

    .line 634
    if-eqz v0, :cond_18c

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 616
    :cond_18c
    return v3

    .line 594
    :catchall_18d
    move-exception v3

    :try_start_18e
    monitor-exit v5
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_18f
    throw v3

    .line 632
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v4    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :catchall_190
    move-exception v2

    monitor-exit v1
    :try_end_192
    .catchall {:try_start_18f .. :try_end_192} :catchall_190

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_192
    throw v2
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_193

    .line 571
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :catchall_193
    move-exception v1

    if-eqz v0, :cond_19e

    :try_start_196
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_19e

    :catchall_19a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19e
    :goto_19e
    throw v1

    nop

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_101
    .end packed-switch
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .registers 10
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 639
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 640
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 642
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 649
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_115

    .line 650
    :try_start_49
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 651
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    const/high16 v3, -0x80000000

    if-nez v2, :cond_9e

    .line 652
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unloadSoundModel(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 657
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_49 .. :try_end_98} :catchall_112

    .line 687
    if-eqz v0, :cond_9d

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 657
    :cond_9d
    return v3

    .line 660
    :cond_9e
    :try_start_9e
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_122

    .line 669
    const-string v4, "SoundTriggerService"

    goto :goto_f7

    .line 666
    :pswitch_a9
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v3

    .line 667
    .local v3, "ret":I
    goto :goto_c8

    .line 662
    .end local v3    # "ret":I
    :pswitch_b4
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-object v4, v2

    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 663
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    .line 662
    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v3

    .line 664
    .restart local v3    # "ret":I
    nop

    .line 676
    :goto_c8
    if-eqz v3, :cond_e7

    .line 677
    const-string v4, "SoundTriggerService"

    const-string v5, "Failed to unload model"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v6, "unloadSoundModel(): Failed to unload model"

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 682
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_9e .. :try_end_e1} :catchall_112

    .line 687
    if-eqz v0, :cond_e6

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 682
    :cond_e6
    return v3

    .line 684
    :cond_e7
    :try_start_e7
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_e7 .. :try_end_f1} :catchall_112

    .line 687
    if-eqz v0, :cond_f6

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 685
    :cond_f6
    return v5

    .line 669
    .end local v3    # "ret":I
    :goto_f7
    :try_start_f7
    const-string v5, "Unknown model type"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v6, "unloadSoundModel(): Unknown model type"

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 674
    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_f7 .. :try_end_10c} :catchall_112

    .line 687
    if-eqz v0, :cond_111

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 674
    :cond_111
    return v3

    .line 686
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_112
    move-exception v2

    :try_start_113
    monitor-exit v1
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_114
    throw v2
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_115

    .line 639
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :catchall_115
    move-exception v1

    if-eqz v0, :cond_120

    :try_start_118
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c

    goto :goto_120

    :catchall_11c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_120
    :goto_120
    throw v1

    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_a9
    .end packed-switch
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 7
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 373
    const-string/jumbo v0, "updateSoundModel(): model = "

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 374
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_7
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 376
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_4e

    .line 383
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 384
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_4d
    return-void

    .line 373
    .restart local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_4e
    move-exception v0

    if-eqz v1, :cond_59

    :try_start_51
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw v0
.end method
