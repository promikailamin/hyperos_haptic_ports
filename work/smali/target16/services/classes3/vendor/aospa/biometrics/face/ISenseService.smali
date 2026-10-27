.class public interface abstract Lvendor/aospa/biometrics/face/ISenseService;
.super Ljava/lang/Object;
.source "ISenseService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract authenticate(J)V
.end method

.method public abstract cancel()V
.end method

.method public abstract enroll([BI[I)V
.end method

.method public abstract enumerate()I
.end method

.method public abstract generateChallenge(I)J
.end method

.method public abstract getAuthenticatorId()I
.end method

.method public abstract getFeature(II)Z
.end method

.method public abstract getFeatureCount()I
.end method

.method public abstract remove(I)V
.end method

.method public abstract resetLockout([B)V
.end method

.method public abstract revokeChallenge()I
.end method

.method public abstract setCallback(Lvendor/aospa/biometrics/face/ISenseServiceReceiver;)V
.end method

.method public abstract setFeature(IZ[BI)V
.end method
