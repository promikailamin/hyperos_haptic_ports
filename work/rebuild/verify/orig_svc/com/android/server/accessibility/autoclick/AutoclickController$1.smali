.class public Lcom/android/server/accessibility/autoclick/AutoclickController$1;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAutoclickTypeChange(I)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_11

    .line 182
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    :cond_11
    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    .line 185
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 186
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$mclearDraggingState(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V

    :cond_23
    return-void
.end method

.method public onHoverChange(Z)V
    .registers 2

    if-nez p1, :cond_f

    .line 207
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misPaused(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 208
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mcancelPendingClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    :cond_f
    return-void
.end method

.method public toggleAutoclickPause(Z)V
    .registers 3

    if-eqz p1, :cond_1e

    .line 193
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mcancelPendingClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    .line 194
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 195
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p1, p1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz p1, :cond_19

    .line 196
    invoke-virtual {p1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 198
    :cond_19
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mstopContinuousScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    :cond_1e
    return-void
.end method
