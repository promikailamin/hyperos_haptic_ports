.class public final Lcom/android/server/biometrics/log/BiometricContextProvider;
.super Ljava/lang/Object;
.source "BiometricContextProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/log/BiometricContext;


# static fields
.field public static sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;


# instance fields
.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mDisplayState:I

.field public mDockState:I

.field final mDockStateReceiver:Landroid/content/BroadcastReceiver;

.field public mFoldState:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsHardwareIgnoringTouches:Z

.field public final mSession:Ljava/util/Map;

.field public final mSubscribers:Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$wLtADBxZmTuvmwtHCo4AJHruKDw(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->lambda$notifyChanged$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayState(Lcom/android/server/biometrics/log/BiometricContextProvider;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldState(Lcom/android/server/biometrics/log/BiometricContextProvider;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsHardwareIgnoringTouches(Lcom/android/server/biometrics/log/BiometricContextProvider;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayState(Lcom/android/server/biometrics/log/BiometricContextProvider;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/biometrics/log/BiometricContextProvider;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFoldState(Lcom/android/server/biometrics/log/BiometricContextProvider;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHardwareIgnoringTouches(Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyChanged(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;)V
    .registers 8

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    .line 91
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 92
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 93
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    .line 94
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 110
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 111
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    .line 113
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribeBiometricContextListener(Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribeDockState(Landroid/content/Context;)V

    return-void
.end method

.method public static defaultProvider(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;
    .registers 9

    .line 65
    const-class v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    monitor-enter v1

    .line 66
    :try_start_3
    sget-object v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_32

    if-nez v0, :cond_3f

    .line 68
    :try_start_7
    new-instance v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    const-string/jumbo v0, "window"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/WindowManager;

    const-string/jumbo v0, "statusbar"

    .line 70
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 72
    invoke-static {}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getInstance()Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    invoke-direct {v7}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;-><init>()V

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;)V

    sput-object v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_31
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_31} :catch_35
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    goto :goto_3f

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto :goto_43

    :catch_35
    move-exception v0

    move-object p0, v0

    .line 75
    :try_start_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find required service"

    invoke-direct {v0, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 78
    :cond_3f
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_32

    .line 79
    sget-object p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-object p0

    .line 78
    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_32

    throw p0
.end method


# virtual methods
.method public getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    return-object p0
.end method

.method public getBiometricPromptSessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    return-object p0
.end method

.method public getCurrentRotation()I
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public getDisplayState()I
    .registers 1

    .line 225
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    return p0
.end method

.method public getDockedState()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    return p0
.end method

.method public getFoldState()I
    .registers 1

    .line 215
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    return p0
.end method

.method public getKeyguardEntrySessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    return-object p0
.end method

.method public isAod()Z
    .registers 2

    .line 189
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isAwake()Z
    .registers 3

    .line 194
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    if-eq p0, v0, :cond_c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    return v0
.end method

.method public isDisplayOn()Z
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isHardwareIgnoringTouches()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    return p0
.end method

.method public final synthetic lambda$notifyChanged$0()V
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->notifySubscribers(Lcom/android/server/biometrics/log/BiometricContext;)V

    return-void
.end method

.method public final notifyChanged()V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V
    .registers 8

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/biometrics/log/BiometricContextProvider;->updateContext(Lcom/android/server/biometrics/log/OperationContextExt;Z)Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object p0

    invoke-virtual {v1, p0, p3, v0}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->add(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    if-eqz p4, :cond_20

    .line 242
    invoke-virtual {p1, p4}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext(Landroid/hardware/biometrics/AuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 244
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final subscribeBiometricContextListener(Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 3

    .line 119
    :try_start_0
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 144
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 159
    const-string p1, "BiometricContextProvider"

    const-string v0, "Unable to register biometric context listener"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final subscribeDockState(Landroid/content/Context;)V
    .registers 4

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[keyguard session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getKeyguardEntrySessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bp session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getBiometricPromptSessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getDisplayState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAwake: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHardwareIgnoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isHardwareIgnoringTouches()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isDisplayOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getDockedState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getCurrentRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foldState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsubscribe(Lcom/android/server/biometrics/log/OperationContextExt;)V
    .registers 2

    .line 250
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->remove(Lcom/android/server/biometrics/log/OperationContextExt;)V

    return-void
.end method

.method public updateContext(Lcom/android/server/biometrics/log/OperationContextExt;Z)Lcom/android/server/biometrics/log/OperationContextExt;
    .registers 3

    .line 172
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object p0

    return-object p0
.end method
