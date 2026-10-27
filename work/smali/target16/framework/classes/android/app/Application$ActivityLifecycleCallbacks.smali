.class public interface abstract Landroid/app/Application$ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityLifecycleCallbacks"
.end annotation


# virtual methods
.method public blacklist onActivityConfigurationChanged(Landroid/app/Activity;)V
    .registers 2

    .line 218
    return-void
.end method

.method public abstract whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onActivityDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivityPaused(Landroid/app/Activity;)V
.end method

.method public whitelist onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 94
    return-void
.end method

.method public whitelist onActivityPostDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 211
    return-void
.end method

.method public whitelist onActivityPostPaused(Landroid/app/Activity;)V
    .registers 2

    .line 151
    return-void
.end method

.method public whitelist onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2

    .line 132
    return-void
.end method

.method public whitelist onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 192
    return-void
.end method

.method public whitelist onActivityPostStarted(Landroid/app/Activity;)V
    .registers 2

    .line 113
    return-void
.end method

.method public whitelist onActivityPostStopped(Landroid/app/Activity;)V
    .registers 2

    .line 170
    return-void
.end method

.method public whitelist onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 81
    return-void
.end method

.method public whitelist onActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 199
    return-void
.end method

.method public whitelist onActivityPrePaused(Landroid/app/Activity;)V
    .registers 2

    .line 139
    return-void
.end method

.method public whitelist onActivityPreResumed(Landroid/app/Activity;)V
    .registers 2

    .line 120
    return-void
.end method

.method public whitelist onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 178
    return-void
.end method

.method public whitelist onActivityPreStarted(Landroid/app/Activity;)V
    .registers 2

    .line 101
    return-void
.end method

.method public whitelist onActivityPreStopped(Landroid/app/Activity;)V
    .registers 2

    .line 158
    return-void
.end method

.method public blacklist onActivityRestarted(Landroid/app/Activity;)V
    .registers 2

    .line 225
    return-void
.end method

.method public abstract whitelist onActivityResumed(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onActivityStarted(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivityStopped(Landroid/app/Activity;)V
.end method
