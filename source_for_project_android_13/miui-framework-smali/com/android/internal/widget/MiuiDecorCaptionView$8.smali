.class Lcom/android/internal/widget/MiuiDecorCaptionView$8;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->showGuideTipView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/MiuiDecorCaptionView;

    .line 817
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0

    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 821
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 822
    .local v1, "guideTipX":I
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmBottomCaptionRect(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    .line 823
    .local v2, "guideTipY":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v3

    iget-object v3, v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v4}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v4

    iget-object v4, v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 824
    .end local v1    # "guideTipX":I
    .local v3, "guideTipX":I
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$8;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v4}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v4

    iget-object v4, v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v1, v4

    .line 826
    .end local v2    # "guideTipY":I
    .local v1, "guideTipY":I
    const/4 v2, 0x7

    const/16 v4, 0x10

    invoke-static {v2, v3, v1, v4}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 828
    const-string v2, "MiuiDecorCaptionView"

    const-string v4, "showGuideTipViewshow guidetipview if current mode of this stack is freeform"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method
