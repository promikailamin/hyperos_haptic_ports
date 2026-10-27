.class public Lcom/android/server/wm/InsetsStateController$1;
.super Ljava/lang/Object;
.source "InsetsStateController.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public static synthetic $r8$lambda$UjLlQbcGcYIO1UklJ0WxgRK60HM(I)V
    .registers 2

    .line 101
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->removeImeSurface(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged(I)V
    .registers 7

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 98
    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 99
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 100
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-static {v3}, Lcom/android/server/wm/InsetsStateController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/InsetsStateController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/wm/InsetsStateController$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2e
    :goto_2e
    return-void
.end method
