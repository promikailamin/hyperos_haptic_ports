.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraAccessException$AccessError;
    }
.end annotation


# static fields
.field public static final greylist-max-o CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final whitelist CAMERA_DISABLED:I = 0x1

.field public static final whitelist CAMERA_DISCONNECTED:I = 0x2

.field public static final whitelist CAMERA_ERROR:I = 0x3

.field public static final whitelist CAMERA_IN_USE:I = 0x4

.field public static final whitelist MAX_CAMERAS_IN_USE:I = 0x5

.field private static final whitelist serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final greylist-max-o mReason:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    .line 112
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 113
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 114
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3

    .line 117
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 118
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 122
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 124
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/Throwable;)V
    .registers 4

    .line 127
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 129
    return-void
.end method

.method private static greylist-max-o getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 156
    invoke-static {p0}, Landroid/hardware/camera2/CameraAccessException;->getProblemString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s (%d): %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDefaultMessage(I)Ljava/lang/String;
    .registers 1

    .line 135
    packed-switch p0, :pswitch_data_14

    .line 152
    const/4 p0, 0x0

    return-object p0

    .line 139
    :pswitch_5
    const-string p0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object p0

    .line 137
    :pswitch_8
    const-string p0, "The camera device is in use already"

    return-object p0

    .line 149
    :pswitch_b
    const-string p0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object p0

    .line 143
    :pswitch_e
    const-string p0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object p0

    .line 147
    :pswitch_11
    const-string p0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o getProblemString(I)Ljava/lang/String;
    .registers 1

    .line 162
    sparse-switch p0, :sswitch_data_1e

    .line 182
    const-string p0, "<UNKNOWN ERROR>"

    goto :goto_1d

    .line 179
    :sswitch_6
    nop

    .line 180
    const-string p0, "CAMERA_DEPRECATED_HAL"

    goto :goto_1d

    .line 167
    :sswitch_a
    nop

    .line 168
    const-string p0, "MAX_CAMERAS_IN_USE"

    goto :goto_1d

    .line 164
    :sswitch_e
    nop

    .line 165
    const-string p0, "CAMERA_IN_USE"

    goto :goto_1d

    .line 176
    :sswitch_12
    nop

    .line 177
    const-string p0, "CAMERA_ERROR"

    goto :goto_1d

    .line 170
    :sswitch_16
    nop

    .line 171
    const-string p0, "CAMERA_DISCONNECTED"

    goto :goto_1d

    .line 173
    :sswitch_1a
    nop

    .line 174
    const-string p0, "CAMERA_DISABLED"

    .line 184
    :goto_1d
    return-object p0

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_16
        0x3 -> :sswitch_12
        0x4 -> :sswitch_e
        0x5 -> :sswitch_a
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final whitelist getReason()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
