.class public Landroid/app/CameraCompatTaskInfo;
.super Ljava/lang/Object;
.source "CameraCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CameraCompatTaskInfo$CameraCompatMode;
    }
.end annotation


# static fields
.field public static final blacklist CAMERA_COMPAT_LANDSCAPE_DEVICE_IN_LANDSCAPE:I = 0x3

.field public static final blacklist CAMERA_COMPAT_LANDSCAPE_DEVICE_IN_PORTRAIT:I = 0x5

.field public static final blacklist CAMERA_COMPAT_NONE:I = 0x1

.field public static final blacklist CAMERA_COMPAT_PORTRAIT_DEVICE_IN_LANDSCAPE:I = 0x2

.field public static final blacklist CAMERA_COMPAT_PORTRAIT_DEVICE_IN_PORTRAIT:I = 0x4

.field public static final blacklist CAMERA_COMPAT_UNSPECIFIED:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/CameraCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist cameraCompatMode:I

.field public blacklist displayRotation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/app/CameraCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    .line 109
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/CameraCompatTaskInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/CameraCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist cameraCompatModeToString(I)Ljava/lang/String;
    .registers 4

    .line 210
    packed-switch p0, :pswitch_data_30

    .line 221
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected camera compat mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 220
    :pswitch_1c
    const-string p0, "app-landscape-device-portrait"

    goto :goto_2e

    .line 218
    :pswitch_1f
    const-string p0, "app-portrait-device-portrait"

    goto :goto_2e

    .line 216
    :pswitch_22
    const-string p0, "app-landscape-device-landscape"

    goto :goto_2e

    .line 214
    :pswitch_25
    const-string p0, "app-portrait-device-landscape"

    goto :goto_2e

    .line 212
    :pswitch_28
    const-string p0, "inactive"

    goto :goto_2e

    .line 211
    :pswitch_2b
    const-string/jumbo p0, "undefined"

    .line 210
    :goto_2e
    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method static blacklist create()Landroid/app/CameraCompatTaskInfo;
    .registers 1

    .line 113
    new-instance v0, Landroid/app/CameraCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method public static blacklist displayRotationToString(I)Ljava/lang/String;
    .registers 4

    .line 229
    packed-switch p0, :pswitch_data_2c

    .line 235
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected display rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 234
    :pswitch_1c
    const-string p0, "270"

    goto :goto_2b

    .line 233
    :pswitch_1f
    const-string p0, "180"

    goto :goto_2b

    .line 232
    :pswitch_22
    const-string p0, "90"

    goto :goto_2b

    .line 231
    :pswitch_25
    const-string p0, "0"

    goto :goto_2b

    .line 230
    :pswitch_28
    const-string/jumbo p0, "undefined"

    .line 229
    :goto_2b
    return-object p0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist getDisplayRotationFromCameraCompatMode(I)I
    .registers 1

    .line 198
    packed-switch p0, :pswitch_data_a

    .line 203
    const/4 p0, -0x1

    goto :goto_8

    .line 202
    :pswitch_5
    const/4 p0, 0x1

    goto :goto_8

    .line 200
    :pswitch_7
    const/4 p0, 0x0

    .line 198
    :goto_8
    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z
    .registers 5

    .line 171
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 172
    return v0

    .line 174
    :cond_4
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    if-ne v1, v2, :cond_11

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    iget p1, p1, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    if-ne v1, p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z
    .registers 5

    .line 160
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 161
    return v0

    .line 163
    :cond_4
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    if-ne v1, v2, :cond_11

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    iget p1, p1, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    if-ne v1, p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    .line 144
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCompatTaskInfo { cameraCompatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    .line 181
    invoke-static {v1}, Landroid/app/CameraCompatTaskInfo;->cameraCompatModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    .line 182
    invoke-static {v1}, Landroid/app/CameraCompatTaskInfo;->displayRotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 151
    iget p2, p0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget p2, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
