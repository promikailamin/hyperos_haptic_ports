.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;
.super Ljava/lang/Object;
.source "SenseProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;


# direct methods
.method public static synthetic $r8$lambda$9k5wBPwTs8dDu9O1OFaP5IZSTr4(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->lambda$onServiceConnected$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nC6ZcO_u0KntQpm1Re-movqxORg(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V
    .registers 3

    .line 992
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onServiceConnected$0()V
    .registers 1

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->updateSchedule()V

    return-void
.end method

.method public final synthetic lambda$onServiceDisconnected$1()V
    .registers 1

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->updateResetSchedule()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 998
    const-string p1, "SenseProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-static {p2}, Lvendor/aospa/biometrics/face/ISenseService$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 1001
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mServices:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1003
    :try_start_23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    move-result-object v0

    invoke-interface {p1, v0}, Lvendor/aospa/biometrics/face/ISenseService;->setCallback(Lvendor/aospa/biometrics/face/ISenseServiceReceiver;)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mServices:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1005
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_43} :catch_46
    .catchall {:try_start_23 .. :try_end_43} :catchall_44

    goto :goto_4a

    :catchall_44
    move-exception p0

    goto :goto_52

    :catch_46
    move-exception p1

    .line 1009
    :try_start_47
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1011
    :goto_4a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fputmIsBinding(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Z)V

    .line 1012
    monitor-exit p2

    goto :goto_54

    :goto_52
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_44

    throw p0

    :cond_54
    :goto_54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1023
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service disconnected : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SenseProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mServices:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1025
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fputmIsBinding(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Z)V

    .line 1026
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)I

    move-result v0

    if-ne p1, v0, :cond_3f

    .line 1027
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1031
    :cond_3f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public updateResetSchedule()V
    .registers 4

    .line 1035
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1036
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_17

    .line 1037
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1038
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 1040
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    .line 1041
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 1042
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    return-void
.end method

.method public updateSchedule()V
    .registers 11

    .line 1017
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 1018
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)I

    move-result v4

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->mUserId:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method
