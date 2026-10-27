.class public Lcom/miui/autoui/policy/padtab/PadTabAutoUILayout;
.super Lcom/miui/autoui/policy/def/DefaultAutoUILayout;
.source "PadTabAutoUILayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist postViewLayout(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 15
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 16
    .local v0, "viewInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 17
    .local v1, "parentInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 18
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 20
    :cond_18
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_4e

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v2

    .line 22
    .local v2, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setLeft(I)Z

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setRight(I)Z

    .line 25
    .end local v2    # "renderNode":Landroid/graphics/RenderNode;
    :cond_4e
    return-void
.end method

.method public blacklist preViewLayout(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 29
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;->preViewLayout(Landroid/view/View;IIII)V

    .line 30
    return-void
.end method
