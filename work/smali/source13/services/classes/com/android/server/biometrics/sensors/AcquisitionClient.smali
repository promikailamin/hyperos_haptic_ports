.class public abstract Lcom/android/server/biometrics/sensors/AcquisitionClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "AcquisitionClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/Interruptable;
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/Interruptable;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# static fields
.field private static final ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final FINGERPRINT_FOD_PROPERTY:Ljava/lang/String; = "ro.hardware.fp.fod"

.field private static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final TAG:Ljava/lang/String; = "Biometrics/AcquisitionClient"

.field private static final VIBRATE_DURATION:I = 0x3c

.field private static final mIsFodFps:Z


# instance fields
.field private mAlreadyCancelled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mShouldSendErrorToClient:Z

.field protected final mShouldVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    nop

    .line 48
    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 50
    nop

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 52
    nop

    .line 53
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;->ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 64
    const-string/jumbo v1, "ro.hardware.fp.fod"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mIsFodFps:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "cookie"    # I
    .param p8, "sensorId"    # I
    .param p9, "shouldVibrate"    # Z
    .param p10, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p11, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
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
            "IIZ",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 72
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    move/from16 v0, p9

    iput-boolean v0, v11, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 74
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 150
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    if-eqz v0, :cond_c

    .line 151
    const-string v0, "Biometrics/AcquisitionClient"

    const-string v1, "Cancel was already requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    .line 157
    return-void
.end method

.method public cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 9
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 161
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWithoutStarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x5

    .line 165
    .local v0, "errorCode":I
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 166
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getCookie()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_31

    .line 170
    :cond_30
    goto :goto_37

    .line 168
    :catch_31
    move-exception v2

    .line 169
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to invoke sendError"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_37
    const/4 v1, 0x1

    invoke-interface {p1, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 172
    return-void
.end method

.method final notifyUserActivity()V
    .registers 6

    .line 216
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 218
    return-void
.end method

.method public onAcquired(II)V
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 181
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 182
    return-void
.end method

.method protected final onAcquiredInternal(IIZ)V
    .registers 10
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "shouldSend"    # Z

    .line 186
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    .line 187
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getTargetUserId()I

    move-result v5

    .line 186
    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAcquired(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldSend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez p1, :cond_46

    .line 195
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->notifyUserActivity()V

    .line 199
    :cond_46
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_81

    if-eqz p3, :cond_81

    .line 200
    sget-boolean v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mIsFodFps:Z

    if-eqz v0, :cond_76

    .line 201
    const/4 v0, 0x6

    if-ne p1, v0, :cond_65

    const/16 v2, 0x16

    if-ne p2, v2, :cond_65

    .line 202
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V

    goto :goto_76

    .line 203
    :cond_65
    if-ne p1, v0, :cond_76

    const/16 v0, 0x17

    if-ne p2, v0, :cond_76

    .line 204
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V

    .line 207
    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAcquired(III)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_81} :catch_82

    .line 212
    :cond_81
    goto :goto_8e

    .line 209
    :catch_82
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8e
    return-void
.end method

.method public onError(II)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 98
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 99
    return-void
.end method

.method protected onErrorInternal(IIZ)V
    .registers 14
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I
    .param p3, "finish"    # Z

    .line 116
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onErrorInternal code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-eqz v0, :cond_5f

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v6

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getTargetUserId()I

    move-result v9

    .line 123
    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    .line 126
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 127
    if-eq p1, v3, :cond_49

    .line 128
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 130
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getCookie()I

    move-result v5

    invoke-virtual {v0, v4, v5, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_58} :catch_59

    .line 134
    :cond_58
    goto :goto_5f

    .line 132
    :catch_59
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to invoke sendError"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    if-eqz p3, :cond_72

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    if-nez v0, :cond_6b

    .line 139
    const-string v0, "Callback is null, perhaps the client hasn\'t been started yet?"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 141
    :cond_6b
    if-eq p1, v3, :cond_72

    .line 142
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 146
    :cond_72
    :goto_72
    return-void
.end method

.method public onUserCanceled()V
    .registers 3

    .line 106
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    const-string v0, "Biometrics/AcquisitionClient"

    const-string/jumbo v1, "onUserCanceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    .line 113
    return-void
.end method

.method protected abstract stopHalOperation()V
.end method

.method public unableToStart()V
    .registers 6

    .line 84
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 86
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getCookie()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 90
    goto :goto_20

    .line 88
    :catch_18
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Biometrics/AcquisitionClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method

.method protected final vibrateError()V
    .registers 4

    .line 234
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 235
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v1, :cond_17

    .line 237
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 244
    :cond_17
    return-void
.end method

.method protected final vibrateSuccess()V
    .registers 4

    .line 221
    .local p0, "this":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 222
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v1, :cond_17

    .line 224
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 231
    :cond_17
    return-void
.end method
