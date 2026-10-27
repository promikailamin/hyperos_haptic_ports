.class public interface abstract Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
.super Ljava/lang/Object;
.source "WindowMagnificationGestureHandler.java"


# direct methods
.method public static nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 304
    invoke-interface {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string/jumbo p0, "null"

    return-object p0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 1

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onEnter()V
    .registers 1

    .line 0
    return-void
.end method

.method public onExit()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method
