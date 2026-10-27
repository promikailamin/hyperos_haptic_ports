.class public Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;
.super Lcom/android/server/location/injector/SystemUserInfoHelper;
.source "LocationManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemUserInfoHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCurrentUserChanged(II)V
    .registers 3

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnCurrentUserChanged(II)V

    return-void
.end method

.method public onUserStarted(I)V
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnUserStarted(I)V

    return-void
.end method

.method public onUserStopped(I)V
    .registers 2

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnUserStopped(I)V

    return-void
.end method
