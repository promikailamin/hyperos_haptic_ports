.class Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "WindowContainerInsetsSourceProvider.java"


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 32
    return-void
.end method
