.class Lcom/android/server/health/HealthHalCallbackHidl;
.super Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;
.source "HealthHalCallbackHidl.java"

# interfaces
.implements Lcom/android/server/health/HealthServiceWrapperHidl$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/server/health/HealthInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/server/health/HealthHalCallbackHidl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/health/HealthInfoCallback;

    .line 55
    invoke-direct {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    .line 57
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 47
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 50
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 5
    .param p1, "props"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 61
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 63
    .local v0, "propsLatest":Landroid/hardware/health/V2_1/HealthInfo;
    iput-object p1, v0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 65
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 66
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 69
    iget-object v1, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {v0}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_1/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    .line 70
    return-void
.end method

.method public healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .registers 4
    .param p1, "props"    # Landroid/hardware/health/V2_1/HealthInfo;

    .line 74
    iget-object v0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {p1}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_1/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    .line 75
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 8
    .param p1, "oldService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p2, "newService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p3, "instance"    # Ljava/lang/String;

    .line 80
    if-nez p2, :cond_3

    return-void

    .line 82
    :cond_3
    const-string v0, "HealthUnregisterCallback"

    invoke-static {v0}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_54

    .line 85
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 86
    .local v0, "r":I
    if-eqz v0, :cond_54

    .line 87
    sget-object v1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot unregister previous callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2d} :catch_30
    .catchall {:try_start_a .. :try_end_2d} :catchall_2e

    goto :goto_54

    .line 98
    .end local v0    # "r":I
    :catchall_2e
    move-exception v0

    goto :goto_50

    .line 92
    :catch_30
    move-exception v0

    .line 93
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_31
    sget-object v1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_2e

    .line 98
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_55

    :goto_50
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 99
    throw v0

    .line 98
    :cond_54
    :goto_54
    nop

    :goto_55
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 99
    nop

    .line 101
    const-string v0, "HealthRegisterCallback"

    invoke-static {v0}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    .line 103
    :try_start_5e
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 104
    .local v0, "r":I
    if-eqz v0, :cond_85

    .line 105
    sget-object v1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot register callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_81} :catch_8f
    .catchall {:try_start_5e .. :try_end_81} :catchall_8d

    .line 114
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 106
    return-void

    .line 110
    :cond_85
    :try_start_85
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_8f
    .catchall {:try_start_85 .. :try_end_88} :catchall_8d

    .line 114
    nop

    .end local v0    # "r":I
    :goto_89
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 115
    goto :goto_af

    .line 114
    :catchall_8d
    move-exception v0

    goto :goto_b0

    .line 111
    :catch_8f
    move-exception v0

    .line 112
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_90
    sget-object v1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot register callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_8d

    .line 114
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_89

    .line 116
    :goto_af
    return-void

    .line 114
    :goto_b0
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 115
    throw v0
.end method
