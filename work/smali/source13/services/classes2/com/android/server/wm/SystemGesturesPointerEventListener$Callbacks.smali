.class interface abstract Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onDebug()V
.end method

.method public abstract onDown()V
.end method

.method public abstract onFling(I)V
.end method

.method public abstract onHorizontalFling(I)V
.end method

.method public abstract onMouseHoverAtBottom()V
.end method

.method public abstract onMouseHoverAtTop()V
.end method

.method public abstract onMouseLeaveFromEdge()V
.end method

.method public abstract onScroll(Z)V
.end method

.method public abstract onSwipeFromBottom()V
.end method

.method public abstract onSwipeFromLeft()V
.end method

.method public abstract onSwipeFromRight()V
.end method

.method public abstract onSwipeFromTop()V
.end method

.method public onSwipeFromTop(FF)V
    .registers 3
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .line 422
    return-void
.end method

.method public abstract onUpOrCancel()V
.end method

.method public abstract onVerticalFling(I)V
.end method
