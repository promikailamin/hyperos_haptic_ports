.class public Landroid/app/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# instance fields
.field private final blacklist mService:Landroid/content/theming/IThemeManager;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_3
    const-string/jumbo v0, "theme"

    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/content/theming/IThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/theming/IThemeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ThemeManager;->mService:Landroid/content/theming/IThemeManager;
    :try_end_10
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_3 .. :try_end_10} :catch_12

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_12
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist getThemeSettings()Landroid/content/theming/ThemeSettings;
    .registers 2

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/app/ThemeManager;->mService:Landroid/content/theming/IThemeManager;

    invoke-interface {v0}, Landroid/content/theming/IThemeManager;->getThemeSettings()Landroid/content/theming/ThemeSettings;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 141
    :catch_7
    move-exception v0

    .line 142
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getThemeSettingsOrDefault()Landroid/content/theming/ThemeSettings;
    .registers 2

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/app/ThemeManager;->mService:Landroid/content/theming/IThemeManager;

    invoke-interface {v0}, Landroid/content/theming/IThemeManager;->getThemeSettingsOrDefault()Landroid/content/theming/ThemeSettings;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 161
    :catch_7
    move-exception v0

    .line 162
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist registerThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z
    .registers 3

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/app/ThemeManager;->mService:Landroid/content/theming/IThemeManager;

    invoke-interface {v0, p1}, Landroid/content/theming/IThemeManager;->registerThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 78
    :catch_7
    move-exception p1

    .line 79
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z
    .registers 3

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/app/ThemeManager;->mService:Landroid/content/theming/IThemeManager;

    invoke-interface {v0, p1}, Landroid/content/theming/IThemeManager;->unregisterThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 96
    :catch_7
    move-exception p1

    .line 97
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist updateThemeSettings(Landroid/content/theming/ThemeSettings;)Z
    .registers 3

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/app/ThemeManager;->mService:Landroid/content/theming/IThemeManager;

    invoke-interface {v0, p1}, Landroid/content/theming/IThemeManager;->updateThemeSettings(Landroid/content/theming/ThemeSettings;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 123
    :catch_7
    move-exception p1

    .line 124
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
