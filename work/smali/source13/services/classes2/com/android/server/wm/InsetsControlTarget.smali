.class interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "InsetsControlTarget.java"


# direct methods
.method public static asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 76
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedVisibility(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 46
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    return v0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideInsets(IZ)V
    .registers 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 65
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .registers 1

    .line 33
    return-void
.end method

.method public showInsets(IZ)V
    .registers 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 56
    return-void
.end method
