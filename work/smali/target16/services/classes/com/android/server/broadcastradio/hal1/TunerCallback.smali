.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.TunerCallback"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public mInitialConfigurationDone:Z

.field public final mNativeContext:J

.field public final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public static synthetic $r8$lambda$BEptR6OfHvcr-ORNAWuoOHPaBYQ(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListChanged$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$E0zIG4Yw6pVtOAUFhN10ADcHMg0(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GpS0DDBRZs8St4BUdrloZS5ADIY(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JFrVoDQSYhRyL7AMNscRU2QYC5U(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanAvailabilityChange$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXMXSR80L_3Yq4FgVGqGIEyMBpk(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onTrafficAnnouncement$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdCP8aweSlGbKZnceCvrJYjqp00(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onAntennaState$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y__o-kylXH4xI41YLcjSY_qMj4c(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onEmergencyAnnouncement$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffad22RVDIzXrp0J12JT5_sibF4(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhb23Z6eMUN461SVGkGeC_z2I30(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxysqaLIXGY5VYpoZNA5pJTjGcQ(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanComplete$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$zrOP4JTsuGfQjOvnAINHHxFqfIY(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onError$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 53
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 54
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 55
    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 189
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not a binder"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach()V
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    return-void
.end method

.method public final dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .registers 3

    .line 78
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 80
    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    .line 61
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final handleHwFailure()V
    .registers 2

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    .line 87
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method

.method public isInitialConfigurationDone()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    return p0
.end method

.method public final synthetic lambda$onAntennaState$5(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method public final synthetic lambda$onBackgroundScanAvailabilityChange$6(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method public final synthetic lambda$onBackgroundScanComplete$7()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method public final synthetic lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public final synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public final synthetic lambda$onEmergencyAnnouncement$4(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method public final synthetic lambda$onError$0(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method public final synthetic lambda$onProgramListChanged$8()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method public final synthetic lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public final synthetic lambda$onTrafficAnnouncement$3(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method public final synthetic lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public onAntennaState(Z)V
    .registers 3

    .line 137
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .registers 3

    .line 142
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanComplete()V
    .registers 2

    .line 147
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onConfigFlagUpdated(IZ)V
    .registers 3

    .line 179
    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 3

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 117
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 3

    .line 122
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .registers 3

    .line 132
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onError(I)V
    .registers 3

    .line 106
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgramListChanged()V
    .registers 2

    .line 152
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 3

    .line 174
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .registers 3

    .line 127
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3

    .line 111
    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendProgramListUpdate()V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Filter;

    if-nez v0, :cond_b

    return-void

    .line 162
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_15} :catch_33

    .line 167
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 168
    new-instance v1, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 169
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void

    .line 164
    :catch_33
    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string v0, "Program list not ready yet"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 3

    if-nez p1, :cond_7

    .line 91
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public stopProgramListUpdates()V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
