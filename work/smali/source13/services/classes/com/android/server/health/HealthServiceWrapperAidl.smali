.class Lcom/android/server/health/HealthServiceWrapperAidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperAidl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;,
        Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;
    }
.end annotation


# static fields
.field static final SERVICE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HealthServiceWrapperAidl"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/health/IHealth;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

.field private final mServiceCallback:Landroid/os/IServiceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    .registers 9
    .param p1, "regCallback"    # Lcom/android/server/health/HealthRegCallbackAidl;
    .param p2, "serviceManager"    # Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HealthServiceBinder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback-IA;)V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 70
    const-string v4, "HealthInitGetServiceAidl"

    invoke-static {v4}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 73
    :try_start_20
    sget-object v4, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-interface {p2, v4}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->waitForDeclaredService(Ljava/lang/String;)Landroid/hardware/health/IHealth;

    move-result-object v5
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5b

    .line 75
    .local v5, "newService":Landroid/hardware/health/IHealth;
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 76
    nop

    .line 77
    if-eqz v5, :cond_53

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    .line 83
    if-eqz p1, :cond_36

    .line 84
    invoke-virtual {p1, v3, v5}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V

    .line 87
    :cond_36
    const-string v1, "HealthInitRegisterNotificationAidl"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    :try_start_3e
    invoke-interface {p2, v4, v2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4e

    .line 92
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 93
    nop

    .line 94
    const-string v0, "HealthServiceWrapperAidl"

    const-string/jumbo v1, "health: HealthServiceWrapper listening to AIDL HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 92
    :catchall_4e
    move-exception v0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 93
    throw v0

    .line 78
    :cond_53
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "IHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    .end local v5    # "newService":Landroid/hardware/health/IHealth;
    :catchall_5b
    move-exception v0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 76
    throw v0
.end method

.method private getPropertyInternal(ILandroid/os/BatteryProperty;)I
    .registers 6
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/health/IHealth;

    .line 115
    .local v0, "service":Landroid/hardware/health/IHealth;
    if-eqz v0, :cond_4c

    .line 117
    packed-switch p1, :pswitch_data_56

    goto :goto_49

    .line 131
    :pswitch_e
    :try_start_e
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getChargeStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 132
    goto :goto_49

    .line 134
    :pswitch_17
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getEnergyCounterNwh()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_49

    .line 128
    :pswitch_1f
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getCapacity()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 129
    goto :goto_49

    .line 125
    :pswitch_28
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getCurrentAverageMicroamps()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 126
    goto :goto_49

    .line 122
    :pswitch_31
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getCurrentNowMicroamps()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 123
    goto :goto_49

    .line 119
    :pswitch_3a
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getChargeCounterUah()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_42
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_42} :catch_46
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_42} :catch_43

    .line 120
    goto :goto_49

    .line 140
    :catch_43
    move-exception v1

    .line 142
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, -0x2

    return v2

    .line 137
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_46
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v2, -0x1

    return v2

    .line 143
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_49
    nop

    .line 148
    const/4 v1, 0x0

    return v1

    .line 115
    :cond_4c
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_31
        :pswitch_28
        :pswitch_1f
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 185
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 186
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 189
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 190
    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/health/IHealth;

    .line 176
    .local v0, "service":Landroid/hardware/health/IHealth;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 178
    :cond_c
    :try_start_c
    invoke-interface {v0}, Landroid/hardware/health/IHealth;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_10} :catch_11

    return-object v1

    .line 179
    :catch_11
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/RuntimeException;
    return-object v1
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 4
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-string v0, "HealthGetPropertyAidl"

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 107
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperAidl;->getPropertyInternal(ILandroid/os/BatteryProperty;)I

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 109
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 107
    return v0

    .line 109
    :catchall_d
    move-exception v0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 110
    throw v0
.end method

.method synthetic lambda$scheduleUpdate$0$com-android-server-health-HealthServiceWrapperAidl()V
    .registers 4

    .line 157
    const-string v0, "HealthServiceWrapperAidl"

    const-string v1, "HealthScheduleUpdate"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 159
    :try_start_7
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/health/IHealth;

    .line 160
    .local v1, "service":Landroid/hardware/health/IHealth;
    if-nez v1, :cond_1b

    .line 161
    const-string/jumbo v2, "no health service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_17} :catch_21
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 168
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 162
    return-void

    .line 164
    :cond_1b
    :try_start_1b
    invoke-interface {v1}, Landroid/hardware/health/IHealth;->update()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 168
    .end local v1    # "service":Landroid/hardware/health/IHealth;
    goto :goto_28

    :catchall_1f
    move-exception v0

    goto :goto_2d

    .line 165
    :catch_21
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_22
    const-string v2, "Cannot call update on health AIDL HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 168
    nop

    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_28
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :goto_2d
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 169
    throw v0
.end method

.method public scheduleUpdate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method
