.class public final Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;
.super Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field public final mAutoRotate:Z

.field public final mCaller:Ljava/lang/String;

.field public final mUserRotation:I


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 548
    invoke-direct {p0, v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V

    .line 549
    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mAutoRotate:Z

    .line 550
    iput p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mUserRotation:I

    .line 551
    iput-object p3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAccelerometerRotationSetting[mAutoRotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mAutoRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mUserRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
