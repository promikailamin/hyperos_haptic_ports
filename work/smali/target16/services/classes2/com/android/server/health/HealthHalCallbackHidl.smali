.class public Lcom/android/server/health/HealthHalCallbackHidl;
.super Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;
.source "HealthHalCallbackHidl.java"

# interfaces
.implements Lcom/android/server/health/HealthServiceWrapperHidl$Callback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCallback:Lcom/android/server/health/HealthInfoCallback;


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

.method public constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 46
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 50
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 5

    .line 61
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 63
    iput-object p1, v0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    const/4 p1, -0x1

    .line 65
    iput p1, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const-wide/16 v1, -0x1

    .line 66
    iput-wide v1, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 69
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {v0}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_1/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    return-void
.end method

.method public healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {p1}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_1/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 6

    if-nez p2, :cond_4

    goto/16 :goto_9c

    .line 82
    :cond_4
    const-string p3, "HealthUnregisterCallback"

    invoke-static {p3}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_47

    .line 85
    :try_start_b
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    if-eqz p1, :cond_47

    .line 87
    sget-object p3, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health: cannot unregister previous callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p1}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2b} :catch_2c
    .catchall {:try_start_b .. :try_end_2b} :catchall_4b

    goto :goto_47

    :catch_2c
    move-exception p1

    .line 93
    :try_start_2d
    sget-object p3, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_4b

    .line 98
    :cond_47
    :goto_47
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    goto :goto_50

    :catchall_4b
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 99
    throw p0

    .line 101
    :goto_50
    const-string p1, "HealthRegisterCallback"

    invoke-static {p1}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    .line 103
    :try_start_55
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    if-eqz p0, :cond_79

    .line 105
    sget-object p1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "health: cannot register callback: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_75} :catch_80
    .catchall {:try_start_55 .. :try_end_75} :catchall_9d

    .line 114
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    return-void

    .line 110
    :cond_79
    :try_start_79
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7c} :catch_80
    .catchall {:try_start_79 .. :try_end_7c} :catchall_9d

    .line 114
    :goto_7c
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    goto :goto_9c

    :catch_80
    move-exception p0

    .line 112
    :try_start_81
    sget-object p1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "health: cannot register callback (transaction error): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_9d

    goto :goto_7c

    :goto_9c
    return-void

    :catchall_9d
    move-exception p0

    .line 114
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 115
    throw p0
.end method
