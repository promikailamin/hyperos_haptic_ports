.class public final Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public static synthetic $r8$lambda$4H27nG5sHAQqHYzMQZqi4tBbCII(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$onUserStarting$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6T1tYl_GMGu03574D1VibaMubYk(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monUpdateResourceOverlay(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcHwasQrHcDWPnzfNFrrqshyKdA(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$onUserUnlocking$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykQTvnJIzX0sVvuWI6n1db_k78U(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;[I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$initializeUsersAsync$2([I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1014
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->createServiceForProduction(Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 1021
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1022
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1021
    invoke-static {p1, v0, v2}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->registerCallback(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V

    .line 1025
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->initializeUsersAsync([I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 3

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1031
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method

.method public static createServiceForProduction(Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .registers 10

    .line 1047
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const-string v2, "android.imms"

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1049
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 1051
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "android.imms2"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1053
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 1055
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 1057
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1058
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldEnableConcurrentMultiUserMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 1059
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V

    return-object v3
.end method


# virtual methods
.method public final initializeUsersAsync([I)V
    .registers 4

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule initialization for users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$initializeUsersAsync$2([I)V
    .registers 14

    .line 1173
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1174
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1175
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 1177
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_78

    aget v5, p1, v4

    .line 1178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start initialization for user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputMethodManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 1181
    invoke-static {v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->initializeIfNecessary(I)V

    .line 1182
    invoke-static {v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v8

    .line 1183
    invoke-static {v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v9

    .line 1184
    iget-object v10, v6, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1186
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v10

    .line 1187
    iget-object v11, v6, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1188
    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v8

    .line 1191
    invoke-static {v8, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v8

    .line 1192
    invoke-static {v5, v8}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 1194
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v8

    .line 1196
    invoke-static {v1, v8}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result v8

    .line 1198
    iget-object v9, v6, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1200
    iget-object v6, v6, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Complete initialization for user="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_78
    return-void
.end method

.method public final synthetic lambda$onUserStarting$1(I)V
    .registers 4

    .line 1161
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1162
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_f

    .line 1163
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 1165
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public final synthetic lambda$onUserUnlocking$0(I)V
    .registers 5

    .line 1142
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_d

    .line 1144
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_19

    :cond_d
    const/4 v2, 0x0

    .line 1147
    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 1149
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 1151
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_b

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 1093
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->systemRunning()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1065
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1066
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v1

    .line 1067
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;

    invoke-direct {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/inputmethod/ZeroJankProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V

    .line 1069
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->create(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)Lcom/android/server/inputmethod/IInputMethodManagerImpl;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 1068
    const-string v3, "input_method"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1071
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerImeRequestedChangedListener()V

    return-void
.end method

.method public onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 3

    .line 1100
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1101
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->onUserCreated(I)V

    .line 1102
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->initializeUsersAsync([I)V

    return-void
.end method

.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .registers 5

    .line 1108
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1109
    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserRemoved(I)V

    .line 1110
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->remove(I)V

    .line 1111
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->remove(I)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserDataRepository(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/UserDataRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->remove(I)V

    .line 1113
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1114
    :try_start_17
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1115
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v1

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    goto :goto_30

    :catchall_28
    move-exception p0

    goto :goto_4c

    :cond_2a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurrentImeUserId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v1

    .line 1116
    :goto_30
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v2

    if-nez v2, :cond_4a

    if-ne p1, v1, :cond_4a

    .line 1121
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p1

    .line 1122
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1125
    :cond_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_28

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1159
    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserStarting(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 1208
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1213
    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserStopped(I)V

    .line 1214
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 1215
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1218
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1219
    invoke-virtual {v1, v0, v2, v2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p0

    .line 1222
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    .line 1221
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1077
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 1078
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1081
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    goto :goto_1b

    .line 1083
    :cond_f
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1085
    monitor-exit p1

    return-void

    :goto_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_d

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    .line 1131
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1132
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1134
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1135
    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserUnlocking(I)V

    .line 1136
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1137
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v1

    const/4 v3, 0x0

    .line 1136
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    .line 1139
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1140
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 1141
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
