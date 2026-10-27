.class Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
.super Ljava/lang/Object;
.source "DefaultHalFactory.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareDefaultHalFactory"

.field private static final USE_DEFAULT_HAL:I = 0x0

.field private static final USE_MOCK_HAL_V2:I = 0x2

.field private static final USE_MOCK_HAL_V3:I = 0x3

.field private static final mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;-><init>()V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$create$0()V
    .registers 2

    .line 70
    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic lambda$create$1()V
    .registers 2

    .line 80
    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic lambda$create$2(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V
    .registers 4
    .param p0, "driver"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 90
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "reboot"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    .line 93
    goto :goto_1d

    .line 91
    :catch_15
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundTriggerMiddlewareDefaultHalFactory"

    const-string v2, "Failed to reboot mock HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method static synthetic lambda$create$3(Ljava/lang/String;)V
    .registers 8
    .param p0, "aidlServiceName"    # Ljava/lang/String;

    .line 107
    :try_start_0
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "reboot"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 111
    goto :goto_1c

    .line 109
    :catch_14
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundTriggerMiddlewareDefaultHalFactory"

    const-string v2, "Failed to reboot mock HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 6

    .line 55
    :try_start_0
    const-string v0, "debug.soundtrigger_middleware.use_mock_hal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_c4

    .line 57
    .local v0, "mockHal":I
    const/4 v2, 0x1

    const-string v3, "SoundTriggerMiddlewareDefaultHalFactory"

    if-nez v0, :cond_54

    .line 61
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 62
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/default"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "aidlServiceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 65
    const-string v2, "Connecting to default soundtrigger3.ISoundTriggerHw"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-object v2

    .line 75
    :cond_3f
    const-string v4, "Connecting to default soundtrigger-V2.x.ISoundTriggerHw"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v2

    .line 77
    .local v2, "driver":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    new-instance v3, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda1;-><init>()V

    sget-object v4, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-static {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v3

    return-object v3

    .line 82
    .end local v1    # "aidlServiceName":Ljava/lang/String;
    .end local v2    # "driver":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    :cond_54
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7b

    .line 84
    const-string v4, "Connecting to mock soundtrigger-V2.x.ISoundTriggerHw"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v2}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_5f} :catch_c4

    .line 87
    :try_start_5f
    const-string/jumbo v3, "mock"

    invoke-static {v3, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Ljava/lang/String;Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v2

    .line 88
    .restart local v2    # "driver":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    new-instance v3, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V

    sget-object v4, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-static {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v3
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_75

    .line 96
    :try_start_71
    invoke-static {v1}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    .line 88
    return-object v3

    .line 96
    .end local v2    # "driver":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    :catchall_75
    move-exception v2

    invoke-static {v1}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    .line 97
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
    throw v2

    .line 98
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
    :cond_7b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_ab

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "aidlServiceName":Ljava/lang/String;
    const-string v2, "Connecting to mock soundtrigger3.ISoundTriggerHw"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-object v2

    .line 114
    .end local v1    # "aidlServiceName":Ljava/lang/String;
    :cond_ab
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown HAL mock version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
    throw v1
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_c4} :catch_c4

    .line 116
    .end local v0    # "mockHal":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
    :catch_c4
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
