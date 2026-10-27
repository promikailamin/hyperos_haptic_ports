.class public Lcom/android/internal/app/IWakePathCallback$Default;
.super Ljava/lang/Object;
.source "IWakePathCallback.java"

# interfaces
.implements Lcom/android/internal/app/IWakePathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IWakePathCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "wakePathType"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public blacklist onAllowCallNew(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callerUserId"    # I
    .param p3, "callee"    # Ljava/lang/String;
    .param p4, "wakePathType"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onRejectCall(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "wakePathType"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public blacklist onRejectCallNew(ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "isRejectByWakePath"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerUserId"    # I
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakePathType"    # I
    .param p6, "userId"    # I
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onUpdateCall(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pkgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
