.class public abstract Lmiui/security/SecurityManagerInternal;
.super Ljava/lang/Object;
.source "SecurityManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist checkGameBoosterPayPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
.end method

.method public abstract blacklist getThreshold(I)J
.end method

.method public abstract blacklist isApplicationLockActivity(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isForceLaunchNewTask(Ljava/lang/String;)Z
.end method

.method public abstract blacklist onDisplayDeviceEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;I)V
.end method

.method public abstract blacklist recordAppBehaviorAsync(ILjava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract blacklist recordAppChainAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist recordDurationInfo(ILandroid/os/IBinder;ILjava/lang/String;Z)V
.end method

.method public abstract blacklist removeCalleeRestrictChain(Ljava/lang/String;)V
.end method
