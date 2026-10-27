.class public interface abstract Lvendor/aospa/biometrics/face/ISenseServiceReceiver;
.super Ljava/lang/Object;
.source "ISenseServiceReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onAcquired(III)V
.end method

.method public abstract onAuthenticated(II[B)V
.end method

.method public abstract onEnrollResult(III)V
.end method

.method public abstract onEnumerate([II)V
.end method

.method public abstract onError(II)V
.end method

.method public abstract onLockoutChanged(J)V
.end method

.method public abstract onRemoved([II)V
.end method
