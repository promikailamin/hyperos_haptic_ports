.class public Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;
.super Ljava/lang/Object;
.source "DefaultAutoUIEvent.java"

# interfaces
.implements Lcom/miui/autoui/policy/api/IAutoUIEvent;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist pointInView(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .line 17
    if-eqz p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 28
    return-void
.end method

.method public blacklist preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 13
    return-void
.end method

.method public blacklist processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 23
    return-void
.end method
