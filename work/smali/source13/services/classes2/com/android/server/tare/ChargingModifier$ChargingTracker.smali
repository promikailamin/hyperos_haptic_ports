.class final Lcom/android/server/tare/ChargingModifier$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "ChargingModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/ChargingModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChargingTracker"
.end annotation


# instance fields
.field private volatile mCharging:Z

.field private mIsSetup:Z

.field final synthetic this$0:Lcom/android/server/tare/ChargingModifier;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    return p0
.end method

.method private constructor <init>(Lcom/android/server/tare/ChargingModifier;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tare/ChargingModifier;Lcom/android/server/tare/ChargingModifier$ChargingTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;-><init>(Lcom/android/server/tare/ChargingModifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 117
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 118
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received charging intent, fired @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_30
    iget-boolean v1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    if-nez v1, :cond_68

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    .line 123
    iget-object v1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-static {v1}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    goto :goto_68

    .line 125
    :cond_41
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 126
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 127
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disconnected from power."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_58
    iget-boolean v1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    if-eqz v1, :cond_68

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    .line 131
    iget-object v1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-static {v1}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    .line 134
    :cond_68
    :goto_68
    return-void
.end method

.method public startTracking(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    if-eqz v0, :cond_5

    .line 89
    return-void

    .line 92
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    .line 99
    .local v1, "batteryManager":Landroid/os/BatteryManager;
    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    .line 102
    return-void
.end method

.method public stopTracking(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    if-nez v0, :cond_5

    .line 106
    return-void

    .line 109
    :cond_5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    .line 111
    return-void
.end method
