.class Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;
.super Lcom/android/server/location/injector/SystemUserInfoHelper;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleUserInfoHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemUserInfoHelper;-><init>(Landroid/content/Context;)V

    .line 224
    return-void
.end method


# virtual methods
.method onCurrentUserChanged(II)V
    .registers 3
    .param p1, "fromUserId"    # I
    .param p2, "toUserId"    # I

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->dispatchOnCurrentUserChanged(II)V

    .line 236
    return-void
.end method

.method onUserStarted(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->dispatchOnUserStarted(I)V

    .line 228
    return-void
.end method

.method onUserStopped(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->dispatchOnUserStopped(I)V

    .line 232
    return-void
.end method
