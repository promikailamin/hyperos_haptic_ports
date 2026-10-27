.class public Lcom/android/server/pm/dex/InstallScenarioHelper;
.super Ljava/lang/Object;
.source "InstallScenarioHelper.java"


# instance fields
.field public mBatteryManager:Landroid/os/BatteryManager;

.field public final mContext:Landroid/content/Context;

.field public final mCriticalBatteryLevel:I

.field public mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mBatteryManager:Landroid/os/BatteryManager;

    .line 36
    iput-object v0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    iput-object p1, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mContext:Landroid/content/Context;

    .line 45
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_1d

    .line 48
    const-string v0, "InstallScenarioHelper"

    const-string v1, "Power Manager is unavailable at time of Dex Manager start"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mCriticalBatteryLevel:I

    return-void
.end method


# virtual methods
.method public final areBatteryThermalOrMemoryCritical()Z
    .registers 4

    .line 104
    invoke-virtual {p0}, Lcom/android/server/pm/dex/InstallScenarioHelper;->getBatteryManager()Landroid/os/BatteryManager;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_17

    const/4 v2, 0x6

    .line 106
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    if-ne v2, v1, :cond_17

    const/4 v2, 0x4

    .line 108
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mCriticalBatteryLevel:I

    if-le v0, v2, :cond_21

    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_23

    .line 111
    invoke-virtual {p0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result p0

    if-lt p0, v1, :cond_23

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final getBatteryManager()Landroid/os/BatteryManager;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_10

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mBatteryManager:Landroid/os/BatteryManager;

    .line 96
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/dex/InstallScenarioHelper;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method public getCompilationReasonForInstallScenario(I)Ljava/lang/String;
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/android/server/pm/dex/InstallScenarioHelper;->areBatteryThermalOrMemoryCritical()Z

    move-result p0

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    if-eqz p0, :cond_14

    .line 77
    const-string p0, "install-bulk-secondary-downgraded"

    return-object p0

    .line 79
    :cond_14
    const-string p0, "install-bulk-secondary"

    return-object p0

    .line 83
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid installation scenario"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    if-eqz p0, :cond_24

    .line 70
    const-string p0, "install-bulk-downgraded"

    return-object p0

    .line 72
    :cond_24
    const-string p0, "install-bulk"

    return-object p0

    .line 66
    :cond_27
    const-string p0, "install-fast"

    return-object p0

    .line 63
    :cond_2a
    const-string p0, "install"

    return-object p0
.end method
