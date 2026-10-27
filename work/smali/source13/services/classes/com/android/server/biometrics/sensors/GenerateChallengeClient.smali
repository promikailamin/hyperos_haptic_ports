.class public abstract Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "GenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenerateChallengeClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "biometricLogger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p9, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/android/server/biometrics/sensors/GenerateChallengeClient;, "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 65
    .local p0, "this":Lcom/android/server/biometrics/sensors/GenerateChallengeClient;, "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<TT;>;"
    const/16 v0, 0xa

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 58
    .local p0, "this":Lcom/android/server/biometrics/sensors/GenerateChallengeClient;, "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->startHalOperation()V

    .line 61
    return-void
.end method

.method public unableToStart()V
    .registers 6

    .line 46
    .local p0, "this":Lcom/android/server/biometrics/sensors/GenerateChallengeClient;, "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 48
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getTargetUserId()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 51
    goto :goto_20

    .line 49
    :catch_18
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GenerateChallengeClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method
