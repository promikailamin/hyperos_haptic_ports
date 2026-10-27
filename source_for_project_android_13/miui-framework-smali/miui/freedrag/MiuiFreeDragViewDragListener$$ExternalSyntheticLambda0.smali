.class public final synthetic Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

.field public final synthetic blacklist f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragViewDragListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;->f$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    iput-object p2, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;->f$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    check-cast p1, Landroid/view/DragEvent;

    invoke-virtual {v0, v1, p1}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->lambda$onDrag$0$miui-freedrag-MiuiFreeDragViewDragListener(Landroid/view/View;Landroid/view/DragEvent;)V

    return-void
.end method
