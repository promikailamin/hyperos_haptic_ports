.class public Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;
.super Ljava/lang/Object;
.source "LockoutHalImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field private mCurrentUserLockoutMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockoutModeForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 31
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return v0
.end method

.method public setCurrentUserLockoutMode(I)V
    .registers 2
    .param p1, "lockoutMode"    # I

    .line 35
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    .line 36
    return-void
.end method
