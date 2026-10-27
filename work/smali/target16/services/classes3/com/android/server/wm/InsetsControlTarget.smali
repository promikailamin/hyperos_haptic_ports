.class public interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "InsetsControlTarget.java"

# interfaces
.implements Lcom/android/server/wm/InsetsTarget;


# direct methods
.method public static asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;
    .registers 1

    if-eqz p0, :cond_7

    .line 117
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimatingTypes()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getRequestedVisibleTypes()I
    .registers 1

    .line 61
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p0

    return p0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRequestedVisible(I)Z
    .registers 2

    .line 55
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public abstract notifyInsetsControlChanged(I)V
.end method

.method public setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 0
    return-void
.end method

.method public setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 0
    return-void
.end method

.method public showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 0
    return-void
.end method
