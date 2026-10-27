.class public Landroid/hovermode/MiuiHoverModeManager;
.super Ljava/lang/Object;
.source "MiuiHoverModeManager.java"


# static fields
.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hovermode/IMiuiHoverMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/hovermode/MiuiHoverModeManager$1;

    invoke-direct {v0}, Landroid/hovermode/MiuiHoverModeManager$1;-><init>()V

    sput-object v0, Landroid/hovermode/MiuiHoverModeManager;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static blacklist getDefault()Landroid/hovermode/IMiuiHoverMode;
    .registers 1

    .line 34
    sget-object v0, Landroid/hovermode/MiuiHoverModeManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hovermode/IMiuiHoverMode;

    return-object v0
.end method

.method public static blacklist getMiuiHoverModeApps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hovermode/HoverModeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-static {}, Landroid/hovermode/MiuiHoverModeManager;->getDefault()Landroid/hovermode/IMiuiHoverMode;

    move-result-object v0

    if-nez v0, :cond_8

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_8
    invoke-static {}, Landroid/hovermode/MiuiHoverModeManager;->getDefault()Landroid/hovermode/IMiuiHoverMode;

    move-result-object v0

    invoke-interface {v0}, Landroid/hovermode/IMiuiHoverMode;->getMiuiHoverModeApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist inMiuiHoverEnableList(Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "inMiuiHoverEnableList":Z
    invoke-static {}, Landroid/hovermode/MiuiHoverModeManager;->getDefault()Landroid/hovermode/IMiuiHoverMode;

    move-result-object v1

    if-nez v1, :cond_9

    .line 60
    const/4 v1, 0x0

    return v1

    .line 63
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/hovermode/MiuiHoverModeManager;->getDefault()Landroid/hovermode/IMiuiHoverMode;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/hovermode/IMiuiHoverMode;->inMiuiHoverEnableList(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_13

    move v0, v1

    .line 66
    goto :goto_17

    .line 64
    :catch_13
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return v0
.end method
