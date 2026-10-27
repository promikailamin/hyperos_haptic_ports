.class public interface abstract Lcom/android/internal/widget/LockPatternView$OnPatternListener;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPatternListener"
.end annotation


# virtual methods
.method public blacklist onPatternCellAdded(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    return-void
.end method

.method public blacklist onPatternCellAdded(Ljava/util/List;Lcom/android/internal/widget/LockPatternView$InputMode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternView$InputMode;",
            ")V"
        }
    .end annotation

    .line 364
    invoke-interface {p0, p1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 365
    return-void
.end method

.method public blacklist onPatternCleared()V
    .registers 1

    .line 347
    return-void
.end method

.method public blacklist onPatternDetected(Ljava/util/List;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;B)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    return-void
.end method

.method public blacklist onPatternDetected(Ljava/util/List;Lcom/android/internal/widget/LockPatternView$InputMode;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternView$InputMode;",
            "B)V"
        }
    .end annotation

    .line 386
    invoke-interface {p0, p1, p3}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;B)V

    .line 387
    return-void
.end method

.method public blacklist onPatternStart()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    return-void
.end method

.method public blacklist onPatternStart(Lcom/android/internal/widget/LockPatternView$InputMode;)V
    .registers 2

    .line 341
    invoke-interface {p0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 342
    return-void
.end method
