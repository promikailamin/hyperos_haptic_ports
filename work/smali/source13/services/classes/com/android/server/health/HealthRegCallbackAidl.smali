.class public Lcom/android/server/health/HealthRegCallbackAidl;
.super Ljava/lang/Object;
.source "HealthRegCallbackAidl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HealthRegCallbackAidl"


# instance fields
.field private final mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

.field private final mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .registers 4
    .param p1, "healthInfoCallback"    # Lcom/android/server/health/HealthInfoCallback;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

    .line 50
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    .line 51
    return-void
.end method

.method private static registerCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    .registers 5
    .param p0, "newService"    # Landroid/hardware/health/IHealth;
    .param p1, "cb"    # Landroid/hardware/health/IHealthInfoCallback;

    .line 95
    const-string v0, "HealthRegCallbackAidl"

    :try_start_2
    invoke-interface {p0, p1}, Landroid/hardware/health/IHealth;->registerCallback(Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_12

    .line 103
    nop

    .line 107
    :try_start_6
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 110
    goto :goto_11

    .line 108
    :catch_a
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "health: cannot update after registering health info callback"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void

    .line 96
    :catch_12
    move-exception v1

    .line 97
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "health: cannot register callback, framework may cease to receive updates on health / battery info!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-void
.end method

.method private static unregisterCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    .registers 5
    .param p0, "oldService"    # Landroid/hardware/health/IHealth;
    .param p1, "cb"    # Landroid/hardware/health/IHealthInfoCallback;

    .line 81
    if-nez p0, :cond_3

    return-void

    .line 83
    :cond_3
    :try_start_3
    invoke-interface {p0, p1}, Landroid/hardware/health/IHealth;->unregisterCallback(Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    .line 90
    goto :goto_25

    .line 84
    :catch_7
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "HealthRegCallbackAidl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method


# virtual methods
.method public onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V
    .registers 6
    .param p1, "oldService"    # Landroid/hardware/health/IHealth;
    .param p2, "newService"    # Landroid/hardware/health/IHealth;

    .line 63
    iget-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    if-nez v0, :cond_5

    return-void

    .line 65
    :cond_5
    const-wide/32 v0, 0x80000

    const-string v2, "HealthUnregisterCallbackAidl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 67
    :try_start_d
    iget-object v2, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

    invoke-static {p1, v2}, Lcom/android/server/health/HealthRegCallbackAidl;->unregisterCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2a

    .line 69
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    nop

    .line 72
    const-string v2, "HealthRegisterCallbackAidl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 74
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

    invoke-static {p2, v2}, Lcom/android/server/health/HealthRegCallbackAidl;->registerCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_25

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    throw v2

    .line 69
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    throw v2
.end method
