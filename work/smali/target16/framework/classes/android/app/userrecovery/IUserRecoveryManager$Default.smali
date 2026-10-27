.class public Landroid/app/userrecovery/IUserRecoveryManager$Default;
.super Ljava/lang/Object;
.source "IUserRecoveryManager.java"

# interfaces
.implements Landroid/app/userrecovery/IUserRecoveryManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/userrecovery/IUserRecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createRecoverySession(I)Landroid/app/userrecovery/IUserRecoverySession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist requestRart(I)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist startRecovery(I)Landroid/app/userrecovery/RecoveryChallenge;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 p1, 0x0

    return-object p1
.end method
