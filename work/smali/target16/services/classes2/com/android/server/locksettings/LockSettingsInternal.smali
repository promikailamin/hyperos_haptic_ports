.class public abstract Lcom/android/server/locksettings/LockSettingsInternal;
.super Ljava/lang/Object;
.source "LockSettingsInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEscrowToken([BILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J
.end method

.method public abstract armRebootEscrow()I
.end method

.method public abstract clearRebootEscrow()Z
.end method

.method public abstract createNewUser(II)V
.end method

.method public abstract disableSecureLockDevice(IZ)V
.end method

.method public abstract getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
.end method

.method public abstract isEscrowTokenActive(JI)Z
.end method

.method public abstract lockUser(I)V
.end method

.method public abstract onThirdPartyAppsStarted()V
.end method

.method public abstract prepareRebootEscrow()Z
.end method

.method public abstract refreshStrongAuthTimeout(I)V
.end method

.method public abstract registerLockSettingsStateListener(Lcom/android/server/locksettings/LockSettingsStateListener;)V
.end method

.method public abstract removeEscrowToken(JI)Z
.end method

.method public abstract removeUser(I)V
.end method

.method public abstract setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
.end method

.method public abstract setRebootEscrowListener(Lcom/android/server/locksettings/RebootEscrowListener;)V
.end method

.method public abstract unlockUserWithToken(J[BI)Z
.end method
