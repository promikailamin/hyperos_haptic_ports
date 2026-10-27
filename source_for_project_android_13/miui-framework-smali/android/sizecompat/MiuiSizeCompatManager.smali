.class public Landroid/sizecompat/MiuiSizeCompatManager;
.super Ljava/lang/Object;
.source "MiuiSizeCompatManager.java"


# static fields
.field private static final blacklist GDEFAULT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/sizecompat/IMiuiSizeCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/sizecompat/MiuiSizeCompatManager$1;

    invoke-direct {v0}, Landroid/sizecompat/MiuiSizeCompatManager$1;-><init>()V

    sput-object v0, Landroid/sizecompat/MiuiSizeCompatManager;->GDEFAULT:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefault()Landroid/sizecompat/IMiuiSizeCompat;
    .registers 1

    .line 26
    sget-object v0, Landroid/sizecompat/MiuiSizeCompatManager;->GDEFAULT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sizecompat/IMiuiSizeCompat;

    return-object v0
.end method

.method public static blacklist getMiuiGameSizeCompatEnabledApps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/sizecompat/AspectRatioInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0}, Landroid/sizecompat/IMiuiSizeCompat;->getMiuiGameSizeCompatEnabledApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMiuiSizeCompatAppRatio(Ljava/lang/String;)F
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_9

    .line 147
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 149
    :cond_9
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/sizecompat/IMiuiSizeCompat;->getMiuiSizeCompatAppRatio(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static blacklist getMiuiSizeCompatEnabledApps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/sizecompat/AspectRatioInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0}, Landroid/sizecompat/IMiuiSizeCompat;->getMiuiSizeCompatEnabledApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMiuiSizeCompatInstalledApps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/sizecompat/AspectRatioInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0}, Landroid/sizecompat/IMiuiSizeCompat;->getMiuiSizeCompatInstalledApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setMiuiGameSizeCompatList(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "override"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/sizecompat/IMiuiSizeCompat;->setMiuiGameSizeCompatList(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist setMiuiSizeCompatEnabled(Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;)Z
    .registers 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/sizecompat/AspectRatioInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/sizecompat/IMiuiSizeCompat;->setMiuiSizeCompatEnabled(Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;)Z

    move-result v0

    return v0
.end method

.method public static blacklist setMiuiSizeCompatRatio(Ljava/lang/String;F)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1, v1}, Landroid/sizecompat/IMiuiSizeCompat;->setMiuiSizeCompatRatio(Ljava/lang/String;FZZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist setMiuiSizeCompatRatio(Ljava/lang/String;FZZ)Z
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "ratio"    # F
    .param p2, "write"    # Z
    .param p3, "kill"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/sizecompat/IMiuiSizeCompat;->setMiuiSizeCompatRatio(Ljava/lang/String;FZZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist switchToFullscreen(Landroid/window/WindowContainerToken;)Z
    .registers 2
    .param p0, "token"    # Landroid/window/WindowContainerToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    if-nez v0, :cond_8

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_8
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/sizecompat/IMiuiSizeCompat;->switchToFullscreen(Landroid/window/WindowContainerToken;)Z

    move-result v0

    return v0
.end method
