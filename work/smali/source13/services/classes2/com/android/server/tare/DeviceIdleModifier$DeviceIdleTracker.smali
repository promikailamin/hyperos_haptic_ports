.class final Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/DeviceIdleModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceIdleTracker"
.end annotation


# instance fields
.field private volatile mDeviceIdle:Z

.field private volatile mDeviceLightIdle:Z

.field private mIsSetup:Z

.field final synthetic this$0:Lcom/android/server/tare/DeviceIdleModifier;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceLightIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    return p0
.end method

.method constructor <init>(Lcom/android/server/tare/DeviceIdleModifier;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    .line 81
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 113
    iget-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    iget-object v2, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v2}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    .line 114
    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    .line 115
    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/DeviceIdleModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    goto :goto_5b

    .line 117
    :cond_30
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 118
    iget-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    iget-object v2, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v2}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    .line 119
    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    .line 120
    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/DeviceIdleModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    .line 123
    :cond_5b
    :goto_5b
    return-void
.end method

.method startTracking(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    iget-boolean v0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    if-eqz v0, :cond_5

    .line 85
    return-void

    .line 88
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    .line 95
    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {v1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    .line 98
    return-void
.end method

.method stopTracking(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    iget-boolean v0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    if-nez v0, :cond_5

    .line 102
    return-void

    .line 105
    :cond_5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    .line 107
    return-void
.end method
