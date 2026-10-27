.class Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
.super Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualSensorCallbackDelegate"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

.field private final blacklist mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

.field private final blacklist mDirectChannelExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$20QjzpzHL8dEBZCLutYs7vCn1Io(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelDestroyed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PYJbVHIiubIpRimXmv87MAvG-m4(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onConfigurationChanged$0(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZPtLCahc44s_CeMZlVo9UO2GvJk(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelCreated$3(ILandroid/os/SharedMemory;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dR61tGGcwzBvI750JXUnfIWPFl0(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelCreated$2(ILandroid/os/SharedMemory;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$esFWQt4aoRSa4vje90qg09O_fV0(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelConfigured$7(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lPJkYhivi_OznhQ-qRhaLqEBRiY(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onConfigurationChanged$1(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nSpVPsSMX8Y3PTEq7RW1uNWSPbo(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelDestroyed$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vxsC6CnTcDjE_IC8LiL8e03VNkM(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelConfigured$6(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)V
    .registers 5

    .line 834
    invoke-direct {p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;-><init>()V

    .line 835
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 836
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    .line 837
    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    .line 838
    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    .line 839
    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$0(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 6

    .line 849
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/sensor/VirtualSensorCallback;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$1(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelConfigured$6(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 6

    .line 880
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelConfigured$7(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 879
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelCreated$2(ILandroid/os/SharedMemory;)V
    .registers 4

    .line 859
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelCreated$3(ILandroid/os/SharedMemory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 858
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelDestroyed$4(I)V
    .registers 3

    .line 869
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;->onDirectChannelDestroyed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelDestroyed$5(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    .registers 13

    .line 844
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p3

    .line 845
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v6

    .line 846
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p4

    .line 847
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v7

    .line 848
    new-instance v2, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda7;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda7;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 851
    return-void
.end method

.method public blacklist onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 12

    .line 877
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_15

    .line 878
    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 883
    :cond_15
    return-void
.end method

.method public blacklist onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    .registers 4

    .line 856
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    .line 857
    new-instance v0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 862
    :cond_10
    return-void
.end method

.method public blacklist onDirectChannelDestroyed(I)V
    .registers 3

    .line 866
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    .line 867
    new-instance v0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 872
    :cond_10
    return-void
.end method
