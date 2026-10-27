.class public Lcom/android/server/wm/PresentationController$2;
.super Ljava/lang/Object;
.source "PresentationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PresentationController;

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iput-object p2, p0, Lcom/android/server/wm/PresentationController$2;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    invoke-static {v0}, Lcom/android/server/wm/PresentationController;->-$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    if-eqz v0, :cond_38

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iget-object v0, v0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/PresentationController;->canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host task moved to display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onRemoved()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iget-object p0, p0, Lcom/android/server/wm/PresentationController$2;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    const-string v1, "host task removed"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    return-void
.end method
