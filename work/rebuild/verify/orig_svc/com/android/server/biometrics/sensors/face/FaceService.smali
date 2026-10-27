.class public Lcom/android/server/biometrics/sensors/face/FaceService;
.super Lcom/android/server/SystemService;
.source "FaceService.java"


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

.field final mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method public static synthetic $r8$lambda$p0mDtP9bFd18n3eGZfcWpAszxpc()Landroid/hardware/biometrics/IBiometricService;
    .registers 1

    .line 778
    const-string v0, "biometric"

    .line 779
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 778
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$uKv-MEKRpeV_1PIrCLKfZhF5NY0(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/log/BiometricContext;Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/FaceService;->lambda$new$1(Lcom/android/server/biometrics/log/BiometricContext;Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticationStateListeners(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceProviderFunction(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 776
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    .line 775
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/biometrics/sensors/face/FaceService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;Ljava/util/function/Supplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/IBiometricService;",
            ">;)V"
        }
    .end annotation

    .line 786
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 787
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 788
    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 789
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 790
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>(Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 791
    new-instance p1, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 792
    new-instance p1, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    invoke-direct {p1, v0, p4}, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;-><init>(Landroid/hardware/face/IFaceService;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 793
    new-instance p4, Lcom/android/server/biometrics/sensors/face/FaceService$1;

    invoke-direct {p4, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    invoke-virtual {p1, p4}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    if-eqz p3, :cond_3c

    goto :goto_41

    .line 801
    :cond_3c
    new-instance p3, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/log/BiometricContext;)V

    :goto_41
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

    return-void
.end method

.method public static native acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;
.end method

.method public static getDeclaredInstances()[Ljava/lang/String;
    .registers 4

    .line 842
    sget-object v0, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before:getDeclaredInstances: IFace instance found, a.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string/jumbo v1, "virtual"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 849
    const-class v3, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 851
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After:getDeclaredInstances: a.length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static native releaseSurfaceHandle(Landroid/os/NativeHandle;)V
.end method


# virtual methods
.method public final synthetic lambda$new$1(Lcom/android/server/biometrics/log/BiometricContext;Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .registers 13

    .line 801
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 802
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    iget-object v4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Landroid/hardware/biometrics/face/SensorProps;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    return-object v0
.end method

.method public onStart()V
    .registers 3

    .line 810
    const-string v0, "face"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public sendFaceReEnrollNotification()V
    .registers 4

    .line 873
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermissionOrShell(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_32

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    :try_start_11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 879
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 880
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->sendFaceReEnrollNotification()V

    goto :goto_2a

    :catchall_21
    move-exception p0

    goto :goto_2e

    .line 882
    :cond_23
    const-string p0, "FaceService"

    const-string v2, "Null provider for notification"

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_21

    .line 885
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    throw p0

    :cond_32
    return-void
.end method

.method public syncEnrollmentsNow()V
    .registers 7

    .line 856
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermissionOrShell(Landroid/content/Context;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFaceVirtualEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 858
    const-string v0, "FaceService"

    const-string v1, "Sync virtual enrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 860
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 861
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 862
    iget v3, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;Z)V

    goto :goto_3c

    :cond_50
    return-void
.end method
