.class Lcom/android/server/biometrics/log/BiometricContextProvider;
.super Ljava/lang/Object;
.source "BiometricContextProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/log/BiometricContext;


# static fields
.field private static final SESSION_TYPES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BiometricContextProvider"

.field private static sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;


# instance fields
.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mIsDozing:Z

.field private final mSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDozing(Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySubscribers(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->notifySubscribers()V

    return-void
.end method

.method constructor <init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V
    .registers 7
    .param p1, "ambientDisplayConfiguration"    # Landroid/hardware/display/AmbientDisplayConfiguration;
    .param p2, "service"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 86
    :try_start_16
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/os/Handler;)V

    invoke-interface {p2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 101
    const/4 v0, 0x3

    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {p2, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_27} :catch_28

    .line 117
    goto :goto_30

    .line 115
    :catch_28
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricContextProvider"

    const-string v2, "Unable to register biometric context listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method static defaultProvider(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-class v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2d

    if-nez v1, :cond_29

    .line 59
    :try_start_7
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    new-instance v2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v2, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "statusbar"

    .line 61
    invoke-static {v3}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_1f
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_1f} :catch_20
    .catchall {:try_start_7 .. :try_end_1f} :catchall_2d

    .line 65
    goto :goto_29

    .line 63
    :catch_20
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_21
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to find required service"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v2

    .line 67
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_29
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2d

    .line 68
    sget-object v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-object v0

    .line 67
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private notifySubscribers()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 183
    return-void
.end method

.method private setFirstSessionId(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 4
    .param p1, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getKeyguardEntrySessionId()Ljava/lang/Integer;

    move-result-object v0

    .line 131
    .local v0, "sessionId":Ljava/lang/Integer;
    if-eqz v0, :cond_10

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 133
    const/4 v1, 0x2

    iput-byte v1, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 134
    return-void

    .line 137
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getBiometricPromptSessionId()Ljava/lang/Integer;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_20

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 140
    const/4 v1, 0x1

    iput-byte v1, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 141
    return-void

    .line 144
    :cond_20
    const/4 v1, 0x0

    iput v1, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 145
    iput-byte v1, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 146
    return-void
.end method


# virtual methods
.method public getBiometricPromptSessionId()Ljava/lang/Integer;
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    .line 159
    .local v0, "id":Lcom/android/internal/logging/InstanceId;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1
.end method

.method public getKeyguardEntrySessionId()Ljava/lang/Integer;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    .line 152
    .local v0, "id":Lcom/android/internal/logging/InstanceId;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1
.end method

.method public isAod()Z
    .registers 3

    .line 164
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method synthetic lambda$notifySubscribers$0$com-android-server-biometrics-log-BiometricContextProvider(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "consumer"    # Ljava/util/function/Consumer;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAod()Z

    move-result v0

    iput-boolean v0, p1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 181
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/biometrics/common/OperationContext;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public unsubscribe(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 3
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 175
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public updateContext(Landroid/hardware/biometrics/common/OperationContext;Z)Landroid/hardware/biometrics/common/OperationContext;
    .registers 4
    .param p1, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "isCryptoOperation"    # Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAod()Z

    move-result v0

    iput-boolean v0, p1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 124
    iput-boolean p2, p1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->setFirstSessionId(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 126
    return-object p1
.end method
