.class public Lmiui/content/res/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/content/res/Configuration;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;
    .registers 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 27
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiConfiguration;

    return-object v0
.end method

.method public static blacklist update(Landroid/content/res/Configuration;)V
    .registers 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 24
    return-void
.end method
