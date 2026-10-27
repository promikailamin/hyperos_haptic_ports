.class public final Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;
.super Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field public final mDevicePosture:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V

    .line 598
    iput p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;->mDevicePosture:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateDevicePosture[mDevicePosture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;->mDevicePosture:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
