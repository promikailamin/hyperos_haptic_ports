.class Lcom/android/server/wm/InsetsPolicy$1;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged()V
    .registers 10

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "hasLeash":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmStateController(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 100
    .local v1, "controls":[Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_e

    .line 101
    return-void

    .line 103
    :cond_e
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    .line 104
    .local v4, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    .line 105
    .local v5, "type":I
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmShowingTransientTypes(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_26

    .line 107
    goto :goto_44

    .line 109
    :cond_26
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 110
    .local v6, "leash":Landroid/view/SurfaceControl;
    if-eqz v6, :cond_44

    .line 111
    const/4 v0, 0x1

    .line 115
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v7}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    .line 116
    invoke-static {v5}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v8

    if-eqz v8, :cond_40

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_41

    :cond_40
    const/4 v8, 0x0

    .line 115
    :goto_41
    invoke-virtual {v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 103
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    .end local v5    # "type":I
    .end local v6    # "leash":Landroid/view/SurfaceControl;
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 119
    :cond_47
    if-eqz v0, :cond_52

    .line 120
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 122
    :cond_52
    return-void
.end method
