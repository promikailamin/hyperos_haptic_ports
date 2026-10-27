.class public Lcom/android/internal/app/IMiuiSysUser$Default;
.super Ljava/lang/Object;
.source "IMiuiSysUser.java"

# interfaces
.implements Lcom/android/internal/app/IMiuiSysUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMiuiSysUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "identify"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist notifyAMDestroyActivity(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "identify"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist notifyAMPauseActivity(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "identify"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist notifyAMProcDied(ILjava/lang/String;)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p1, "startUsedTime"    # J
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "name"    # Landroid/content/ComponentName;
    .param p7, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "identify"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "identify"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "eventTag"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
