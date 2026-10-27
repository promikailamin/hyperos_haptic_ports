.class Lcom/android/server/sensors/SensorService$DeviceStateListener;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceStateListener"
.end annotation


# instance fields
.field private final REVERT_DEVICE_ACCELERATION:I

.field private final REVERT_DEVICE_DEVICE_ORIENT:I

.field private final REVERT_DEVICE_NO_SENSOR:I

.field private final mDeviceOrientSensorReversedFoldedDeviceStates:[I

.field private final mReversedFoldedDeviceStates:[I

.field final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/sensors/SensorService;
    .param p2, "context"    # Landroid/content/Context;

    .line 183
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->REVERT_DEVICE_NO_SENSOR:I

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->REVERT_DEVICE_DEVICE_ORIENT:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->REVERT_DEVICE_ACCELERATION:I

    .line 184
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->mDeviceOrientSensorReversedFoldedDeviceStates:[I

    .line 186
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->mReversedFoldedDeviceStates:[I

    .line 188
    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 5
    .param p1, "deviceState"    # I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "reversedFlag":I
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->mDeviceOrientSensorReversedFoldedDeviceStates:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 195
    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    or-int/2addr v0, v1

    .line 196
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->mReversedFoldedDeviceStates:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 197
    const/4 v2, 0x2

    goto :goto_19

    :cond_18
    nop

    :goto_19
    or-int/2addr v0, v2

    .line 199
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$DeviceStateListener;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$smsetReversedStateNative(JI)V

    .line 200
    return-void
.end method
