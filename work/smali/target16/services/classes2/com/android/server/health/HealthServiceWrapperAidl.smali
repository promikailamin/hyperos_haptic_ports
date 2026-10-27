.class public Lcom/android/server/health/HealthServiceWrapperAidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperAidl.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String;


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

.field public final mServiceCallback:Landroid/os/IServiceCallback;


# direct methods
.method public static synthetic $r8$lambda$-oplhFZ3XbYCRctwu9K5sMMyz8U(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->lambda$scheduleUpdate$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    .registers 9

    .line 71
    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HealthServiceBinder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl-IA;)V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 73
    const-string v4, "HealthInitGetServiceAidl"

    invoke-static {v4}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 76
    :try_start_20
    sget-object v4, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-interface {p2, v4}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->waitForDeclaredService(Ljava/lang/String;)Landroid/hardware/health/IHealth;

    move-result-object v5
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_58

    .line 78
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    if-eqz v5, :cond_50

    .line 84
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    if-eqz p1, :cond_35

    .line 87
    invoke-virtual {p1, v3, v5}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V

    .line 90
    :cond_35
    const-string p0, "HealthInitRegisterNotificationAidl"

    invoke-static {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    :try_start_3d
    invoke-interface {p2, v4, v2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4b

    .line 95
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 97
    const-string p0, "HealthServiceWrapperAidl"

    const-string p1, "health: HealthServiceWrapper listening to AIDL HAL"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_4b
    move-exception p0

    .line 95
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 96
    throw p0

    .line 81
    :cond_50
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "IHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_58
    move-exception p0

    .line 78
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 79
    throw p0
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 254
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 258
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;
    .registers 2

    .line 230
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 235
    :cond_c
    :try_start_c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 209
    :cond_c
    :try_start_c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method

.method public getHingeInfo()[Landroid/hardware/health/HingeInfo;
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 222
    :cond_c
    :try_start_c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHingeInfo()[Landroid/hardware/health/HingeInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 4

    .line 108
    const-string v0, "HealthGetPropertyAidl"

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 110
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperAidl;->getPropertyInternal(ILandroid/os/BatteryProperty;)I

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 112
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return p0

    :catchall_d
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 113
    throw p0
.end method

.method public final getPropertyInternal(ILandroid/os/BatteryProperty;)I
    .registers 3

    .line 117
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-eqz p0, :cond_85

    packed-switch p1, :pswitch_data_8e

    goto/16 :goto_7f

    .line 162
    :pswitch_f
    :try_start_f
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 163
    iget p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 158
    :pswitch_1a
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 159
    iget-object p0, p0, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/os/BatteryProperty;->setString(Ljava/lang/String;)V

    goto :goto_7f

    .line 154
    :pswitch_24
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 155
    iget-wide p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 151
    :pswitch_2e
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargingPolicy()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 147
    :pswitch_37
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 148
    iget-wide p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 143
    :pswitch_41
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    .line 144
    iget-wide p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 137
    :pswitch_4b
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeStatus()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 140
    :pswitch_54
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getEnergyCounterNwh()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 134
    :pswitch_5c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCapacity()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 131
    :pswitch_65
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentAverageMicroamps()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 128
    :pswitch_6e
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentNowMicroamps()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_7f

    .line 125
    :pswitch_77
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeCounterUah()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_7f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_7f} :catch_83
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_7f} :catch_81

    :goto_7f
    const/4 p0, 0x0

    return p0

    :catch_81
    const/4 p0, -0x2

    return p0

    :catch_83
    const/4 p0, -0x1

    return p0

    .line 119
    :cond_85
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_54
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_f
    .end packed-switch
.end method

.method public final synthetic lambda$scheduleUpdate$0()V
    .registers 3

    .line 186
    const-string v0, "HealthServiceWrapperAidl"

    const-string v1, "HealthScheduleUpdate"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 188
    :try_start_7
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-nez p0, :cond_1d

    .line 190
    const-string/jumbo p0, "no health service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_17} :catch_1b
    .catchall {:try_start_7 .. :try_end_17} :catchall_2d

    .line 197
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :catch_1b
    move-exception p0

    goto :goto_24

    .line 193
    :cond_1d
    :try_start_1d
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_1d .. :try_end_20} :catch_1b
    .catchall {:try_start_1d .. :try_end_20} :catchall_2d

    .line 197
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    .line 195
    :goto_24
    :try_start_24
    const-string v1, "Cannot call update on health AIDL HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2d

    .line 197
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 198
    throw p0
.end method

.method public scheduleUpdate()V
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
