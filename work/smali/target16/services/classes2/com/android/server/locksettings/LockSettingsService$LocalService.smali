.class public final Lcom/android/server/locksettings/LockSettingsService$LocalService;
.super Lcom/android/server/locksettings/LockSettingsInternal;
.source "LockSettingsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 3863
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J
    .registers 5

    .line 3901
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$maddEscrowToken(Lcom/android/server/locksettings/LockSettingsService;[BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public armRebootEscrow()I
    .registers 1

    .line 3984
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->armRebootEscrowIfNeeded()I

    move-result p0

    return p0
.end method

.method public clearRebootEscrow()Z
    .registers 3

    .line 3974
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 3977
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->noLongerRequireStrongAuth(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public createNewUser(II)V
    .registers 3

    .line 3890
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mcreateNewUser(Lcom/android/server/locksettings/LockSettingsService;II)V

    return-void
.end method

.method public disableSecureLockDevice(IZ)V
    .registers 4

    .line 3866
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->disableSecureLockDevice(IZ)V

    if-eqz p2, :cond_26

    .line 3871
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$munlockUser(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 3872
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3873
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetSeparateProfileChallengeEnabledInternal(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 3874
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetDeviceUnlockedForUser(Lcom/android/server/locksettings/LockSettingsService;I)V

    :cond_25
    return-void

    .line 3879
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;->lockUser(I)V

    return-void
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 7

    .line 3942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3944
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misProfileWithTiedLock(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3949
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Querying password metrics for unified challenge profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_2f

    .line 3952
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_23

    .line 3954
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3955
    throw p0
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 4

    .line 3912
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEscrowTokenActive(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p0

    return p0
.end method

.method public lockUser(I)V
    .registers 2

    .line 3937
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mlockUser(Lcom/android/server/locksettings/LockSettingsService;I)V

    return-void
.end method

.method public onThirdPartyAppsStarted()V
    .registers 1

    .line 3885
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monThirdPartyAppsStarted(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method

.method public prepareRebootEscrow()Z
    .registers 3

    .line 3960
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->prepareRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 3963
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public refreshStrongAuthTimeout(I)V
    .registers 2

    .line 3989
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->refreshStrongAuthTimeout(I)V

    return-void
.end method

.method public registerLockSettingsStateListener(Lcom/android/server/locksettings/LockSettingsStateListener;)V
    .registers 3

    .line 3994
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3995
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmLockSettingsStateListeners(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 4

    .line 3907
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mremoveEscrowToken(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p0

    return p0
.end method

.method public removeUser(I)V
    .registers 2

    .line 3895
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mremoveUser(Lcom/android/server/locksettings/LockSettingsService;I)V

    return-void
.end method

.method public setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 12

    .line 3918
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-boolean v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 3919
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires the lock screen feature."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3922
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p0, 0x0

    return p0

    .line 3926
    :cond_24
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monPostPasswordChanged(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setRebootEscrowListener(Lcom/android/server/locksettings/RebootEscrowListener;)V
    .registers 2

    .line 3969
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowListener(Lcom/android/server/locksettings/RebootEscrowListener;)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)Z
    .registers 5

    .line 3932
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$munlockUserWithToken(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z

    move-result p0

    return p0
.end method
