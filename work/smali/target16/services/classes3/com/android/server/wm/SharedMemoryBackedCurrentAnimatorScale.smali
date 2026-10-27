.class public final Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;
.super Ljava/lang/Object;
.source "SharedMemoryBackedCurrentAnimatorScale.java"


# instance fields
.field public mAnimationsDisabled:Z

.field public mCurrentAnimatorScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mAnimationsDisabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mCurrentAnimatorScale:F

    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->updateSharedMemoryValue()V

    return-void
.end method


# virtual methods
.method public getCurrentScale()F
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mAnimationsDisabled:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mCurrentAnimatorScale:F

    return p0
.end method

.method public isAnimationsDisabled()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mAnimationsDisabled:Z

    return p0
.end method

.method public setAnimationsDisabled(Z)V
    .registers 3

    .line 38
    iget-boolean v0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mAnimationsDisabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 42
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mAnimationsDisabled:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->updateSharedMemoryValue()V

    return-void
.end method

.method public setCurrentScale(F)V
    .registers 3

    .line 47
    iget v0, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mCurrentAnimatorScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 51
    :cond_7
    iput p1, p0, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->mCurrentAnimatorScale:F

    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/SharedMemoryBackedCurrentAnimatorScale;->updateSharedMemoryValue()V

    return-void
.end method

.method public final updateSharedMemoryValue()V
    .registers 1

    .line 0
    return-void
.end method
