.class public Lmiui/smartpower/SmartPowerManager;
.super Ljava/lang/Object;
.source "SmartPowerManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "smartpower"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartPower"

.field private static blacklist sInstance:Lmiui/smartpower/SmartPowerManager;


# instance fields
.field private blacklist mService:Lmiui/smartpower/ISmartPowerManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "smartpower"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/smartpower/ISmartPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/smartpower/ISmartPowerManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/smartpower/SmartPowerManager;->mService:Lmiui/smartpower/ISmartPowerManager;

    .line 29
    return-void
.end method

.method public static blacklist getService()Lmiui/smartpower/SmartPowerManager;
    .registers 1

    .line 21
    sget-object v0, Lmiui/smartpower/SmartPowerManager;->sInstance:Lmiui/smartpower/SmartPowerManager;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lmiui/smartpower/SmartPowerManager;

    invoke-direct {v0}, Lmiui/smartpower/SmartPowerManager;-><init>()V

    sput-object v0, Lmiui/smartpower/SmartPowerManager;->sInstance:Lmiui/smartpower/SmartPowerManager;

    .line 24
    :cond_b
    sget-object v0, Lmiui/smartpower/SmartPowerManager;->sInstance:Lmiui/smartpower/SmartPowerManager;

    return-object v0
.end method


# virtual methods
.method public blacklist onMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .registers 3
    .param p1, "actionInfo"    # Lmiui/smartpower/MultiTaskActionManager$ActionInfo;

    .line 50
    iget-object v0, p0, Lmiui/smartpower/SmartPowerManager;->mService:Lmiui/smartpower/ISmartPowerManager;

    if-eqz v0, :cond_9

    .line 52
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/smartpower/ISmartPowerManager;->onMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 54
    goto :goto_9

    .line 53
    :catch_8
    move-exception v0

    .line 56
    :cond_9
    :goto_9
    return-void
.end method

.method public blacklist onMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .registers 3
    .param p1, "actionInfo"    # Lmiui/smartpower/MultiTaskActionManager$ActionInfo;

    .line 41
    iget-object v0, p0, Lmiui/smartpower/SmartPowerManager;->mService:Lmiui/smartpower/ISmartPowerManager;

    if-eqz v0, :cond_9

    .line 43
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/smartpower/ISmartPowerManager;->onMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 45
    goto :goto_9

    .line 44
    :catch_8
    move-exception v0

    .line 47
    :cond_9
    :goto_9
    return-void
.end method

.method public blacklist registThermalScenarioCallback(Lmiui/smartpower/IScenarioCallback;)V
    .registers 3
    .param p1, "callback"    # Lmiui/smartpower/IScenarioCallback;

    .line 32
    iget-object v0, p0, Lmiui/smartpower/SmartPowerManager;->mService:Lmiui/smartpower/ISmartPowerManager;

    if-eqz v0, :cond_9

    .line 34
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/smartpower/ISmartPowerManager;->registThermalScenarioCallback(Lmiui/smartpower/IScenarioCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 36
    goto :goto_9

    .line 35
    :catch_8
    move-exception v0

    .line 38
    :cond_9
    :goto_9
    return-void
.end method
