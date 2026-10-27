.class public Landroid/hardware/camera2/utils/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 96
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_d

    .line 97
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 101
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 48
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_36

    .line 72
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_2b

    .line 62
    :pswitch_7
    nop

    .line 63
    const/16 v0, 0x3e8

    goto :goto_2b

    .line 59
    :pswitch_b
    nop

    .line 60
    const/4 v0, 0x5

    goto :goto_2b

    .line 56
    :pswitch_e
    nop

    .line 57
    const/4 v0, 0x4

    goto :goto_2b

    .line 53
    :pswitch_11
    nop

    .line 54
    const/4 v0, 0x1

    goto :goto_2b

    .line 50
    :pswitch_14
    nop

    .line 51
    const/4 v0, 0x2

    goto :goto_2b

    .line 66
    :pswitch_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :pswitch_21
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :goto_2b
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_21
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_5
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
