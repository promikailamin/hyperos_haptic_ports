.class public Landroid/hovermode/MiuiHoverModeImpl;
.super Ljava/lang/Object;
.source "MiuiHoverModeImpl.java"

# interfaces
.implements Landroid/hovermode/MiuiHoverModeStub;


# static fields
.field private static blacklist ENABLED:Z = false

.field private static final blacklist HOVERMODE_SENSOR_EVENT_DISPATCH_WHITELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIUI_HOVER_MODE_ENABLE:Ljava/lang/String; = "ro.config.miui_hover_enable"

.field private static final blacklist M_LOCK:Ljava/lang/Object;

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiHoverModeImpl"

.field private static volatile blacklist sSingleInstance:Landroid/hovermode/MiuiHoverModeImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/hovermode/MiuiHoverModeImpl;->sSingleInstance:Landroid/hovermode/MiuiHoverModeImpl;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hovermode/MiuiHoverModeImpl;->M_LOCK:Ljava/lang/Object;

    .line 34
    const-string v0, "ro.config.miui_hover_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hovermode/MiuiHoverModeImpl;->ENABLED:Z

    .line 36
    const-string v0, "com.tencent.wemeet.app"

    const-string v1, "com.tencent.wework"

    const-string v2, "com.baidu.BaiduMap"

    const-string v3, "com.autonavi.minimap"

    const-string v4, "com.tencent.map"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/hovermode/MiuiHoverModeImpl;->HOVERMODE_SENSOR_EVENT_DISPATCH_WHITELIST:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/hovermode/MiuiHoverModeImpl;
    .registers 2

    .line 45
    sget-object v0, Landroid/hovermode/MiuiHoverModeImpl;->sSingleInstance:Landroid/hovermode/MiuiHoverModeImpl;

    if-nez v0, :cond_17

    .line 46
    sget-object v0, Landroid/hovermode/MiuiHoverModeImpl;->M_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_7
    sget-object v1, Landroid/hovermode/MiuiHoverModeImpl;->sSingleInstance:Landroid/hovermode/MiuiHoverModeImpl;

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Landroid/hovermode/MiuiHoverModeImpl;

    invoke-direct {v1}, Landroid/hovermode/MiuiHoverModeImpl;-><init>()V

    sput-object v1, Landroid/hovermode/MiuiHoverModeImpl;->sSingleInstance:Landroid/hovermode/MiuiHoverModeImpl;

    .line 50
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 52
    :cond_17
    :goto_17
    sget-object v0, Landroid/hovermode/MiuiHoverModeImpl;->sSingleInstance:Landroid/hovermode/MiuiHoverModeImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .registers 2

    .line 56
    sget-boolean v0, Landroid/hovermode/MiuiHoverModeImpl;->ENABLED:Z

    return v0
.end method

.method public blacklist needInterceptDispatchSensorEvent(Landroid/hardware/Sensor;)Z
    .registers 9
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 60
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 61
    .local v0, "thread":Landroid/app/ActivityThread;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 62
    return v1

    .line 65
    :cond_8
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 66
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_71

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_71

    .line 70
    :cond_17
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    .line 71
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v5, 0x9

    if-eq v3, v5, :cond_2f

    .line 72
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v5, 0x1b

    if-eq v3, v5, :cond_2f

    .line 73
    return v1

    .line 76
    :cond_2f
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->inMiuiHoverWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 77
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 78
    .local v3, "application":Landroid/app/Application;
    if-eqz v3, :cond_70

    sget-object v5, Landroid/hovermode/MiuiHoverModeImpl;->HOVERMODE_SENSOR_EVENT_DISPATCH_WHITELIST:Ljava/util/List;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in hover window mode, then return for pkg: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", sensor = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MiuiHoverModeImpl"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v4

    .line 84
    .end local v3    # "application":Landroid/app/Application;
    :cond_70
    return v1

    .line 67
    :cond_71
    :goto_71
    return v1
.end method
