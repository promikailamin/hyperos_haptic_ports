.class public final Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field public final mAccelerometerSettingAfter:Z

.field public final mDevicePostureAfter:I

.field public final mDeviceStateAutoRotateSettingAfter:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

.field public final mEvent:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;

.field public final mPersistedAccelerometerSettingBefore:Z

.field public final mPersistedDeviceStateAutoRotateSettingBefore:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

.field public final mTimestamp:J

.field public final mWasPersistedSettingChanged:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;IZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;Z)V
    .registers 10

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mTimestamp:J

    .line 495
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mEvent:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;

    .line 496
    iput-boolean p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mPersistedAccelerometerSettingBefore:Z

    .line 497
    iput-object p3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mPersistedDeviceStateAutoRotateSettingBefore:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 499
    iput p4, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mDevicePostureAfter:I

    .line 500
    iput-boolean p5, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mAccelerometerSettingAfter:Z

    .line 501
    iput-object p6, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mDeviceStateAutoRotateSettingAfter:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 502
    iput-boolean p7, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mWasPersistedSettingChanged:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;IZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;ZLcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;IZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mTimestamp:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Received Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mEvent:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Persisted setting values before event: [ACCELEROMETER_ROTATION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mPersistedAccelerometerSettingBefore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DEVICE_STATE_ROTATION_LOCK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mPersistedDeviceStateAutoRotateSettingBefore:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    iget-boolean v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mWasPersistedSettingChanged:Z

    if-eqz v0, :cond_71

    const-string v0, "Wrote into persisted setting"

    goto :goto_73

    .line 517
    :cond_71
    const-string v0, "Did not write into persisted setting"

    .line 518
    :goto_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", in-memory state after event [mDevicePosture="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mDevicePostureAfter:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAccelerometerSetting="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mAccelerometerSettingAfter:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mDeviceStateAutoRotateSetting="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->mDeviceStateAutoRotateSettingAfter:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
