.class final Lcom/android/server/health/HealthServiceWrapperHidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperHidl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthServiceWrapperHidl$Notification;,
        Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;,
        Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;,
        Lcom/android/server/health/HealthServiceWrapperHidl$Callback;,
        Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;
    }
.end annotation


# static fields
.field public static final INSTANCE_VENDOR:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "HealthServiceWrapperHidl"


# instance fields
.field private mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

.field private mInstanceName:Ljava/lang/String;

.field private final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/health/V2_0/IHealth;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/health/HealthServiceWrapperHidl;)Lcom/android/server/health/HealthServiceWrapperHidl$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandlerThread(Lcom/android/server/health/HealthServiceWrapperHidl;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHealthSupplier(Lcom/android/server/health/HealthServiceWrapperHidl;)Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstanceName(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V
    .registers 9
    .param p1, "callback"    # Lcom/android/server/health/HealthServiceWrapperHidl$Callback;
    .param p2, "managerSupplier"    # Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;
    .param p3, "healthSupplier"    # Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 184
    const-string v0, "default"

    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 51
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;Lcom/android/server/health/HealthServiceWrapperHidl$Notification-IA;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 52
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "HealthServiceHwbinder"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    if-eqz p2, :cond_9e

    if-eqz p3, :cond_9e

    .line 188
    iput-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "newService":Landroid/hardware/health/V2_0/IHealth;
    const-string v3, "HealthInitGetService_default"

    invoke-static {v3}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 194
    :try_start_29
    invoke-interface {p3, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v3
    :try_end_2d
    .catch Ljava/util/NoSuchElementException; {:try_start_29 .. :try_end_2d} :catch_34
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2f

    move-object v1, v3

    goto :goto_35

    .line 198
    :catchall_2f
    move-exception v0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 199
    throw v0

    .line 195
    :catch_34
    move-exception v3

    .line 198
    :goto_35
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 199
    nop

    .line 200
    if-eqz v1, :cond_42

    .line 201
    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 205
    :cond_42
    iget-object v3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    if-eqz v3, :cond_8c

    if-eqz v1, :cond_8c

    .line 212
    if-eqz p1, :cond_4f

    .line 213
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    .line 214
    invoke-interface {p1, v2, v1, v3}, Lcom/android/server/health/HealthServiceWrapperHidl$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V

    .line 218
    :cond_4f
    const-string v0, "HealthInitRegisterNotification"

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 221
    nop

    .line 222
    :try_start_5a
    invoke-interface {p2}, Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;->get()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v2, "android.hardware.health@2.0::IHealth"

    iget-object v3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 223
    invoke-interface {v0, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_87

    .line 225
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 226
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "health: HealthServiceWrapper listening to instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HealthServiceWrapperHidl"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 225
    :catchall_87
    move-exception v0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 226
    throw v0

    .line 206
    :cond_8c
    new-instance v2, Ljava/util/NoSuchElementException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 207
    const-string v0, "IHealth service instance %s isn\'t available. Perhaps no permission?"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v1    # "newService":Landroid/hardware/health/V2_0/IHealth;
    :cond_9e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic lambda$getHealthInfo$7(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;ILandroid/hardware/health/V2_0/HealthInfo;)V
    .registers 4
    .param p0, "ret"    # Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;
    .param p1, "result"    # I
    .param p2, "value"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 159
    if-nez p1, :cond_a

    .line 160
    iget-object v0, p2, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v0}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V1_0/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Ljava/lang/Object;

    .line 162
    :cond_a
    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 80
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 81
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 82
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 87
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 88
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 89
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 94
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 95
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 96
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 101
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 102
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 103
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 108
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 109
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 110
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .registers 5
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # J

    .line 115
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 116
    if-nez p2, :cond_7

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 117
    :cond_7
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 63
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 66
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 67
    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/health/V2_0/IHealth;

    .line 155
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 156
    :cond_c
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;

    invoke-direct {v2, v1}, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable-IA;)V

    move-object v1, v2

    .line 157
    .local v1, "ret":Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;, "Lcom/android/server/health/HealthServiceWrapperHidl$Mutable<Landroid/hardware/health/HealthInfo;>;"
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 163
    iget-object v2, v1, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/health/HealthInfo;

    return-object v2
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 6
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 73
    :try_start_5
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/health/V2_0/IHealth;

    .line 74
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_55

    .line 75
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 76
    .local v1, "outResult":Landroid/util/MutableInt;
    packed-switch p1, :pswitch_data_64

    goto :goto_4f

    .line 106
    :pswitch_19
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda4;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 111
    goto :goto_4f

    .line 113
    :pswitch_22
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda5;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_4f

    .line 99
    :pswitch_2b
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 104
    goto :goto_4f

    .line 92
    :pswitch_34
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 97
    goto :goto_4f

    .line 85
    :pswitch_3d
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 90
    goto :goto_4f

    .line 78
    :pswitch_46
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 83
    nop

    .line 120
    :goto_4f
    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5e

    .line 122
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 120
    return v2

    .line 74
    .end local v1    # "outResult":Landroid/util/MutableInt;
    :cond_55
    :try_start_55
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/health/HealthServiceWrapperHidl;
    .end local p1    # "id":I
    .end local p2    # "prop":Landroid/os/BatteryProperty;
    throw v1
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5e

    .line 122
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0    # "this":Lcom/android/server/health/HealthServiceWrapperHidl;
    .restart local p1    # "id":I
    .restart local p2    # "prop":Landroid/os/BatteryProperty;
    :catchall_5e
    move-exception v0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 123
    throw v0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method

.method synthetic lambda$scheduleUpdate$6$com-android-server-health-HealthServiceWrapperHidl()V
    .registers 4

    .line 132
    const-string v0, "HealthServiceWrapperHidl"

    const-string v1, "HealthScheduleUpdate"

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 134
    :try_start_7
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/health/V2_0/IHealth;

    .line 135
    .local v1, "service":Landroid/hardware/health/V2_0/IHealth;
    if-nez v1, :cond_1b

    .line 136
    const-string/jumbo v2, "no health service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_22
    .catchall {:try_start_7 .. :try_end_17} :catchall_20

    .line 143
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 137
    return-void

    .line 139
    :cond_1b
    :try_start_1b
    invoke-interface {v1}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_22
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    .line 143
    nop

    .end local v1    # "service":Landroid/hardware/health/V2_0/IHealth;
    goto :goto_29

    :catchall_20
    move-exception v0

    goto :goto_2e

    .line 140
    :catch_22
    move-exception v1

    .line 141
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_23
    const-string v2, "Cannot call update on health HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    .line 143
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_29
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :goto_2e
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 144
    throw v0
.end method

.method public scheduleUpdate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method
