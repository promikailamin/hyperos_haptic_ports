.class public Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.super Lcom/android/internal/app/ISoundTriggerSession$Stub;
.source "SoundTriggerService.java"


# instance fields
.field public final mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

.field public final mCallbacks:Ljava/util/TreeMap;

.field public final mCallbacksLock:Ljava/lang/Object;

.field public final mClient:Landroid/os/IBinder;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mListener:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

.field public final mLoadedModels:Ljava/util/TreeMap;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public static synthetic $r8$lambda$eUwzt9osHt4HleFc2LqltNBNXY4(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->lambda$new$1(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v5KUhMJKSsM1xhlXPr5YKNHNsZQ(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventLogger(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Lcom/android/server/utils/EventLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;Lcom/android/server/soundtrigger/SoundTriggerHelper;Lcom/android/server/utils/EventLogger;)V
    .registers 7

    .line 527
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;-><init>()V

    .line 520
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 521
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 528
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 529
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mClient:Landroid/os/IBinder;

    .line 530
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 531
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 532
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSessionEventLoggers(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    :try_start_2d
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    const/4 p4, 0x0

    invoke-interface {p2, p3, p4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_3a

    .line 537
    :catch_37
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    .line 539
    :goto_3a
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    .line 541
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 542
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    invoke-direct {p3, p1, p4, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Ljava/util/function/Consumer;)V

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 543
    invoke-virtual {p3}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->forceOpChangeRefresh()V

    .line 544
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/AppOpsManager;

    move-result-object p4

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object p0, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "android:record_audio"

    invoke-virtual {p4, v1, p0, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 547
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDeviceStateHandler(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/DeviceStateHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/DeviceStateHandler;->registerListener(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;)V

    return-void
.end method


# virtual methods
.method public final clientDied()V
    .registers 6

    .line 991
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmServiceEventLogger(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/utils/EventLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const-string v4, "Client died"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "SoundTriggerService"

    .line 994
    invoke-virtual {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 992
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 995
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->detach()V

    return-void
.end method

.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .registers 6

    .line 614
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 615
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 616
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 621
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 623
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_42

    if-eqz v0, :cond_41

    .line 624
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_41
    return-void

    :catchall_42
    move-exception p0

    if-eqz v0, :cond_4d

    .line 615
    :try_start_45
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p0
.end method

.method public final detach()V
    .registers 3

    .line 999
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    if-eqz v0, :cond_f

    .line 1000
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1002
    :cond_f
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDeviceStateHandler(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/DeviceStateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->unregisterListener(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    .line 1004
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$mdetachSessionLogger(Lcom/android/server/soundtrigger/SoundTriggerService;Lcom/android/server/utils/EventLogger;)V

    return-void
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    .line 1008
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmContext(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1010
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .registers 4

    .line 1017
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1018
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    .line 1021
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have permission "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModelState(Landroid/os/ParcelUuid;)I
    .registers 10

    .line 890
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 891
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 892
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_81

    .line 896
    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v4, 0x2

    const/high16 v5, -0x80000000

    if-nez v3, :cond_50

    .line 898
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model is not loaded"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 902
    invoke-virtual {v6, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 898
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 903
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_4e

    if-eqz v0, :cond_4d

    .line 920
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4d
    return v5

    :catchall_4e
    move-exception p0

    goto :goto_7f

    .line 905
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6e

    .line 911
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unsupported model type"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 915
    invoke-virtual {v6, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 911
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_78

    .line 907
    :cond_6e
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v5

    .line 918
    :goto_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4e

    if-eqz v0, :cond_7e

    .line 920
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_7e
    return v5

    .line 919
    :goto_7f
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_4e

    :try_start_80
    throw p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p0

    if-eqz v0, :cond_8c

    .line 891
    :try_start_84
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8c
    :goto_8c
    throw p0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 5

    .line 926
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 927
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 928
    :try_start_11
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_2d

    .line 930
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    .line 931
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2a

    if-eqz v0, :cond_29

    .line 933
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_29
    return-object p0

    :catchall_2a
    move-exception p0

    .line 932
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    if-eqz v0, :cond_38

    .line 927
    :try_start_30
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw p0
.end method

.method public getParameter(Landroid/os/ParcelUuid;I)I
    .registers 6

    .line 962
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 963
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_3c

    .line 965
    :try_start_10
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz p1, :cond_31

    .line 969
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameter(Ljava/util/UUID;I)I

    move-result p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2f

    if-eqz v0, :cond_2e

    .line 971
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2e
    return p0

    :catchall_2f
    move-exception p0

    goto :goto_3a

    .line 967
    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sound model is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 970
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2f

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    if-eqz v0, :cond_47

    .line 962
    :try_start_3f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw p0
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 4

    .line 595
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 596
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 597
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    .line 598
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1d

    if-eqz v0, :cond_1c

    .line 600
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_1c
    return-object p0

    :catchall_1d
    move-exception p0

    if-eqz v0, :cond_28

    .line 595
    :try_start_20
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    throw p0
.end method

.method public final getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;
    .registers 2

    if-eqz p1, :cond_7

    .line 1031
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;
    .registers 2

    if-eqz p1, :cond_7

    .line 1027
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .registers 6

    .line 876
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 877
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_35

    .line 879
    :try_start_c
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v2, :cond_24

    .line 881
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_22

    const/4 p0, 0x0

    if-eqz v0, :cond_21

    .line 885
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_21
    return p0

    :catchall_22
    move-exception p0

    goto :goto_37

    .line 883
    :cond_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_22

    .line 884
    :try_start_25
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result p0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_35

    if-eqz v0, :cond_34

    .line 885
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_34
    return p0

    :catchall_35
    move-exception p0

    goto :goto_39

    .line 883
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_22

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    :goto_39
    if-eqz v0, :cond_43

    .line 876
    :try_start_3b
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 1

    .line 535
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .registers 2

    .line 540
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onDeviceStateChanged(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .registers 7

    .line 629
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 630
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 631
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_6e

    .line 632
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_6e

    .line 638
    :cond_22
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_6c

    .line 639
    :try_start_29
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz v2, :cond_59

    .line 643
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 644
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 645
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_57

    .line 646
    :try_start_49
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    monitor-exit v2

    goto :goto_59

    :catchall_54
    move-exception p0

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_54

    :try_start_56
    throw p0

    :catchall_57
    move-exception p0

    goto :goto_6a

    .line 649
    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_57

    const/4 p0, 0x0

    if-eqz v0, :cond_69

    .line 652
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_69
    return p0

    .line 650
    :goto_6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_57

    :try_start_6b
    throw p0

    :catchall_6c
    move-exception p0

    goto :goto_8d

    .line 633
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 634
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Invalid sound model"

    invoke-direct {v3, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    const/4 p1, 0x2

    invoke-virtual {v3, p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 633
    invoke-virtual {v1, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_6c

    const/high16 p0, -0x80000000

    if-eqz v0, :cond_8c

    .line 652
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_8c
    return p0

    :goto_8d
    if-eqz v0, :cond_97

    .line 630
    :try_start_8f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_97
    :goto_97
    throw p0
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 8

    .line 657
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 659
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 660
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    const/4 v3, 0x2

    if-eqz p1, :cond_a3

    .line 661
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_26

    goto/16 :goto_a3

    .line 667
    :cond_26
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    goto :goto_87

    .line 674
    :cond_35
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_85

    .line 675
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    .line 679
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 680
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 681
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    .line 680
    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 682
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_71

    .line 683
    :try_start_63
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v2

    goto :goto_73

    :catchall_6e
    move-exception p0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    :try_start_70
    throw p0

    :catchall_71
    move-exception p0

    goto :goto_83

    .line 686
    :cond_73
    :goto_73
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_71

    if-eqz v0, :cond_82

    .line 689
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_82
    return v3

    .line 687
    :goto_83
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_71

    :try_start_84
    throw p0

    :catchall_85
    move-exception p0

    goto :goto_bf

    .line 668
    :cond_87
    :goto_87
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Only one keyphrase supported"

    invoke-direct {v5, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 669
    invoke-virtual {v5, v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 668
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_9d
    .catchall {:try_start_84 .. :try_end_9d} :catchall_85

    if-eqz v0, :cond_a2

    .line 689
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_a2
    return v1

    .line 662
    :cond_a3
    :goto_a3
    :try_start_a3
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Invalid sound model"

    invoke-direct {v5, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 663
    invoke-virtual {v5, v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 662
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_b9
    .catchall {:try_start_a3 .. :try_end_b9} :catchall_85

    if-eqz v0, :cond_be

    .line 689
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_be
    return v1

    :goto_bf
    if-eqz v0, :cond_c9

    .line 659
    :try_start_c1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_c9

    :catchall_c5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c9
    :goto_c9
    throw p0
.end method

.method public queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 6

    .line 978
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 979
    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_3b

    .line 981
    :try_start_10
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez p1, :cond_28

    .line 983
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_26

    const/4 p0, 0x0

    if-eqz v0, :cond_25

    .line 987
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_25
    return-object p0

    :catchall_26
    move-exception p0

    goto :goto_39

    .line 985
    :cond_28
    :try_start_28
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_26

    if-eqz v0, :cond_38

    .line 987
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_38
    return-object p0

    .line 986
    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_26

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    if-eqz v0, :cond_46

    .line 978
    :try_start_3e
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw p0
.end method

.method public setParameter(Landroid/os/ParcelUuid;II)I
    .registers 9

    .line 939
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 940
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 941
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_63

    .line 943
    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v3, :cond_50

    .line 945
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {p3, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    const/4 p1, 0x2

    .line 949
    invoke-virtual {p3, p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 945
    invoke-virtual {p2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 950
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_4e

    if-eqz v0, :cond_4d

    .line 955
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4d
    return p0

    :catchall_4e
    move-exception p0

    goto :goto_61

    .line 952
    :cond_50
    :try_start_50
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 953
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 952
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameter(Ljava/util/UUID;II)I

    move-result p0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_4e

    if-eqz v0, :cond_60

    .line 955
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_60
    return p0

    .line 954
    :goto_61
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_4e

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    if-eqz v0, :cond_6e

    .line 940
    :try_start_66
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p0
.end method

.method public startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 13

    .line 554
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 556
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 557
    :try_start_14
    const-string v0, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-nez p1, :cond_3d

    .line 560
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Invalid sound model"

    invoke-direct {p3, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    const/4 p1, 0x2

    invoke-virtual {p3, p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 560
    invoke-virtual {p2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_3a

    const/high16 p0, -0x80000000

    if-eqz v1, :cond_39

    .line 576
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_39
    return p0

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_67

    :cond_3d
    if-eqz p4, :cond_44

    .line 566
    :try_start_3f
    const-string v0, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 569
    :cond_44
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p1

    if-nez p1, :cond_61

    .line 573
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_3a

    :cond_61
    if-eqz v1, :cond_66

    .line 576
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_66
    return p1

    :goto_67
    if-eqz v1, :cond_72

    .line 556
    :try_start_69
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw p0
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 20

    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 696
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    .line 696
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 698
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v8

    .line 699
    :try_start_18
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v0, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    move-object/from16 v4, p3

    .line 704
    invoke-virtual {p0, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    .line 706
    new-instance v12, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;

    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    move-object v12, v0

    .line 710
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_122

    .line 711
    :try_start_42
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    if-nez v0, :cond_74

    .line 713
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 715
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string v1, "Model not loaded"

    invoke-direct {v5, v7, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 716
    invoke-virtual {v5, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 713
    invoke-virtual {v0, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 718
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_42 .. :try_end_6a} :catchall_70

    if-eqz v8, :cond_6f

    .line 759
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_6f
    return v3

    :catchall_70
    move-exception v0

    move-object p0, v0

    goto/16 :goto_120

    .line 721
    :cond_74
    :try_start_74
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_70

    .line 722
    :try_start_77
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 723
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_11c

    if-eqz v6, :cond_a3

    .line 725
    :try_start_86
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 727
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string v1, "Model already running"

    invoke-direct {v5, v7, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 728
    invoke-virtual {v5, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 725
    invoke-virtual {v0, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 729
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_70

    if-eqz v8, :cond_a2

    .line 759
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_a2
    return v3

    .line 732
    :cond_a3
    :try_start_a3
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c7

    .line 738
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 740
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string v1, "Unsupported model type"

    invoke-direct {v5, v7, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 741
    invoke-virtual {v5, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 738
    invoke-virtual {v0, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 742
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_a3 .. :try_end_c1} :catchall_70

    if-eqz v8, :cond_c6

    .line 759
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_c6
    return v3

    .line 734
    :cond_c7
    :try_start_c7
    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v10

    move-object v11, v0

    check-cast v11, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v14, 0x0

    move-object/from16 v13, p4

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    if-eqz v0, :cond_f6

    .line 746
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 748
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string v1, "Model start fail"

    invoke-direct {v5, v7, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 749
    invoke-virtual {v5, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 746
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 750
    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_c7 .. :try_end_f0} :catchall_70

    if-eqz v8, :cond_f5

    .line 759
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f5
    return v0

    .line 752
    :cond_f6
    :try_start_f6
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_70

    .line 753
    :try_start_f9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_f9 .. :try_end_103} :catchall_118

    .line 756
    :try_start_103
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 757
    monitor-exit v2
    :try_end_111
    .catchall {:try_start_103 .. :try_end_111} :catchall_70

    const/4 p0, 0x0

    if-eqz v8, :cond_117

    .line 759
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_117
    return p0

    :catchall_118
    move-exception v0

    move-object p0, v0

    .line 754
    :try_start_11a
    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_118

    :try_start_11b
    throw p0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_70

    :catchall_11c
    move-exception v0

    move-object p0, v0

    .line 723
    :try_start_11e
    monitor-exit v5
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11c

    :try_start_11f
    throw p0

    .line 757
    :goto_120
    monitor-exit v2
    :try_end_121
    .catchall {:try_start_11f .. :try_end_121} :catchall_70

    :try_start_121
    throw p0
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_122

    :catchall_122
    move-exception v0

    move-object p0, v0

    if-eqz v8, :cond_12e

    .line 698
    :try_start_126
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    goto :goto_12e

    :catchall_12a
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12e
    :goto_12e
    throw p0
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 581
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 582
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 583
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p2

    if-nez p2, :cond_35

    .line 587
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3b

    :cond_35
    :goto_35
    if-eqz v0, :cond_3a

    .line 590
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3a
    return p2

    :goto_3b
    if-eqz v0, :cond_45

    .line 582
    :try_start_3d
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw p0
.end method

.method public stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .registers 11

    .line 764
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    .line 764
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 767
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 768
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_f7

    .line 771
    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    if-nez v3, :cond_51

    .line 773
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 777
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 773
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 779
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_4e

    if-eqz v0, :cond_4d

    .line 824
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4d
    return v4

    :catchall_4e
    move-exception p0

    goto/16 :goto_f5

    .line 782
    :cond_51
    :try_start_51
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 783
    :try_start_54
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 784
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_f2

    if-nez v7, :cond_80

    .line 786
    :try_start_63
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not running"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 790
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 786
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 791
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_4e

    if-eqz v0, :cond_7f

    .line 824
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_7f
    return v4

    .line 794
    :cond_80
    :try_start_80
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a4

    .line 800
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 802
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unknown model type"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 804
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 800
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 806
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_80 .. :try_end_9e} :catchall_4e

    if-eqz v0, :cond_a3

    .line 824
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_a3
    return v4

    .line 796
    :cond_a4
    :try_start_a4
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 797
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 796
    invoke-virtual {v4, v3, v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v3

    if-eqz v3, :cond_cd

    .line 810
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 812
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Failed to stop model"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 814
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 810
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 815
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_a4 .. :try_end_c7} :catchall_4e

    if-eqz v0, :cond_cc

    .line 824
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_cc
    return v3

    .line 817
    :cond_cd
    :try_start_cd
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_4e

    .line 818
    :try_start_d0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d0 .. :try_end_da} :catchall_ef

    .line 821
    :try_start_da
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 822
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_da .. :try_end_e8} :catchall_4e

    const/4 p0, 0x0

    if-eqz v0, :cond_ee

    .line 824
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_ee
    return p0

    :catchall_ef
    move-exception p0

    .line 819
    :try_start_f0
    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_4e

    :catchall_f2
    move-exception p0

    .line 784
    :try_start_f3
    monitor-exit v6
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw p0

    .line 822
    :goto_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_f4 .. :try_end_f6} :catchall_4e

    :try_start_f6
    throw p0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f7

    :catchall_f7
    move-exception p0

    if-eqz v0, :cond_102

    .line 767
    :try_start_fa
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fe

    goto :goto_102

    :catchall_fe
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_102
    :goto_102
    throw p0
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .registers 11

    .line 829
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 830
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 831
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_c5

    .line 834
    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    if-nez v3, :cond_50

    .line 836
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 838
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 840
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 836
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 841
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_4e

    if-eqz v0, :cond_4d

    .line 871
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4d
    return v4

    :catchall_4e
    move-exception p0

    goto :goto_c3

    .line 844
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_82

    const/4 v8, 0x1

    if-eq v6, v8, :cond_77

    .line 853
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unknown model type"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 857
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 853
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 858
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_4e

    if-eqz v0, :cond_76

    .line 871
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_76
    return v4

    .line 850
    :cond_77
    :try_start_77
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v3

    goto :goto_94

    .line 846
    :cond_82
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 847
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    .line 846
    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v3

    :goto_94
    if-eqz v3, :cond_b3

    .line 861
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Failed to unload model"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 865
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 861
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 866
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_77 .. :try_end_ad} :catchall_4e

    if-eqz v0, :cond_b2

    .line 871
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_b2
    return v3

    .line 868
    :cond_b3
    :try_start_b3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_b3 .. :try_end_bd} :catchall_4e

    if-eqz v0, :cond_c2

    .line 871
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_c2
    return v7

    .line 870
    :goto_c3
    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_4e

    :try_start_c4
    throw p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception p0

    if-eqz v0, :cond_d0

    .line 830
    :try_start_c8
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw p0
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 6

    .line 605
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 606
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 607
    :try_start_14
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 608
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_28

    if-eqz v0, :cond_27

    .line 609
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    if-eqz v0, :cond_33

    .line 606
    :try_start_2b
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw p0
.end method
