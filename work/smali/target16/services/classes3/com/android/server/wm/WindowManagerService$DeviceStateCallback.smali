.class public Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public isInRearDisplayOuterDefaultState()Z
    .registers 2

    .line 1109
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    if-eqz p0, :cond_12

    const/16 v0, 0x3e9

    filled-new-array {v0}, [I

    move-result-object v0

    .line 1110
    invoke-virtual {p0, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 2

    .line 1105
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method
