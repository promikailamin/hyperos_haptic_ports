.class final Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveModeModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/PowerSaveModeModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerSaveModeTracker"
.end annotation


# instance fields
.field private mIsSetup:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mPowerSaveModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/tare/PowerSaveModeModifier;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPowerSaveModeEnabled(Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    return p0
.end method

.method private constructor <init>(Lcom/android/server/tare/PowerSaveModeModifier;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->this$0:Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    .line 81
    invoke-static {p1}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/PowerSaveModeModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tare/PowerSaveModeModifier;Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;-><init>(Lcom/android/server/tare/PowerSaveModeModifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 112
    iget-object v1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    .line 113
    .local v1, "enabled":Z
    invoke-static {}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 114
    invoke-static {}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power save mode changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fired @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_40
    iget-boolean v2, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    if-eq v2, v1, :cond_4f

    .line 118
    iput-boolean v1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    .line 119
    iget-object v2, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->this$0:Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-static {v2}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/PowerSaveModeModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    .line 122
    .end local v1    # "enabled":Z
    :cond_4f
    return-void
.end method

.method public startTracking(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    if-eqz v0, :cond_5

    .line 86
    return-void

    .line 89
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    .line 97
    return-void
.end method

.method public stopTracking(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    if-nez v0, :cond_5

    .line 101
    return-void

    .line 104
    :cond_5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    .line 106
    return-void
.end method
