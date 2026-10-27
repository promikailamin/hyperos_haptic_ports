.class Lcom/android/server/power/PowerManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceStateListener"
.end annotation


# instance fields
.field private mDeviceState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 6939
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6940
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 10
    .param p1, "deviceState"    # I

    .line 6944
    iget v0, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    if-eq v0, p1, :cond_18

    .line 6945
    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    .line 6948
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V

    .line 6952
    :cond_18
    return-void
.end method
