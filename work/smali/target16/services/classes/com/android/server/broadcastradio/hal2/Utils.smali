.class public abstract Lcom/android/server/broadcastradio/hal2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static getBand(I)Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .registers 2

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_7

    .line 40
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0

    :cond_7
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_e

    .line 41
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0

    :cond_e
    const/16 v0, 0x6a9

    if-ge p0, v0, :cond_15

    .line 42
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0

    :cond_15
    const/16 v0, 0x7530

    if-ge p0, v0, :cond_1c

    .line 43
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0

    :cond_1c
    const v0, 0xea60

    if-ge p0, v0, :cond_24

    .line 44
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0

    :cond_24
    const v0, 0x1adb0

    if-ge p0, v0, :cond_2c

    .line 45
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0

    .line 46
    :cond_2c
    sget-object p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0
.end method

.method public static maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;
    .registers 1

    .line 55
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;->exec()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 57
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V
    .registers 1

    .line 68
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;->exec()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 70
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
