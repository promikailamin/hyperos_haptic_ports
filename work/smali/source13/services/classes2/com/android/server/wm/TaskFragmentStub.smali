.class public interface abstract Lcom/android/server/wm/TaskFragmentStub;
.super Ljava/lang/Object;
.source "TaskFragmentStub.java"


# direct methods
.method public static newStub(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentStub;
    .registers 2
    .param p0, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 13
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->getTaskFragmentStub(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getScale()F
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isAdjInSpecialVideo()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialVideo()Z
    .registers 2

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public prepareSurfaces()V
    .registers 1

    .line 30
    return-void
.end method

.method public setAdjInSpecialVideo(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 20
    return-void
.end method

.method public setMiuiEmbedded(Z)V
    .registers 2
    .param p1, "miuiEmbedded"    # Z

    .line 34
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 26
    return-void
.end method

.method public setSpecialVideo(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 16
    return-void
.end method

.method public updateDimBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 32
    return-void
.end method
