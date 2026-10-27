.class public interface abstract Lcom/android/server/biometrics/sensors/LockoutTracker;
.super Ljava/lang/Object;
.source "LockoutTracker.java"


# virtual methods
.method public addFailedAttemptForUser(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract getLockoutModeForUser(I)I
.end method

.method public resetFailedAttemptsForUser(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract setLockoutModeForUser(II)V
.end method
