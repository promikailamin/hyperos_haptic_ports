.class public abstract Landroid/app/MiuiCustSplitActivity;
.super Ljava/lang/Object;
.source "MiuiCustSplitActivity.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist handleBackPressed()V
    .registers 1

    .line 9
    return-void
.end method

.method protected blacklist handleStartSplitActivity(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist initSplitMode(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 13
    return-void
.end method

.method protected blacklist isRequestSplit(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 18
    return-void
.end method

.method protected blacklist onSplitActivityDestroy()V
    .registers 1

    .line 19
    return-void
.end method

.method protected blacklist onSplitActivityNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 20
    return-void
.end method

.method protected blacklist onSplitActivityPaused()V
    .registers 1

    .line 21
    return-void
.end method

.method protected blacklist onSplitActivityRestart()V
    .registers 1

    .line 22
    return-void
.end method

.method protected blacklist onSplitActivityResume()V
    .registers 1

    .line 23
    return-void
.end method

.method protected blacklist onSplitActivityStop()V
    .registers 1

    .line 24
    return-void
.end method

.method protected blacklist setLastReportedMultiWindowMode(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 25
    return-void
.end method

.method protected blacklist setSplitActivityOrientation(I)V
    .registers 2
    .param p1, "requestedOrientation"    # I

    .line 26
    return-void
.end method

.method protected blacklist splitActivityFinish()V
    .registers 1

    .line 27
    return-void
.end method
