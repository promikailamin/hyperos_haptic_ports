.class public Lcom/android/internal/widget/MaskLayout;
.super Landroid/widget/FrameLayout;
.source "MaskLayout.java"


# instance fields
.field private blacklist mDrawTouchMask:Z

.field private blacklist mMaskColor:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 31
    return-void
.end method


# virtual methods
.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 48
    iget-boolean v0, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    if-eqz v0, :cond_2e

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 51
    .local v0, "result":Z
    iget v1, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return v0

    .line 55
    .end local v0    # "result":Z
    :cond_2e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected whitelist drawableStateChanged()V
    .registers 4

    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/widget/MaskLayout;->getDrawableState()[I

    move-result-object v0

    .line 38
    .local v0, "stateSet":[I
    sget-object v1, Lcom/android/internal/widget/MaskLayout;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/android/internal/widget/MaskLayout;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 39
    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    .line 40
    .local v1, "drawMask":Z
    :goto_1b
    iget-boolean v2, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    if-eq v2, v1, :cond_24

    .line 41
    iput-boolean v1, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/MaskLayout;->invalidate()V

    .line 44
    :cond_24
    return-void
.end method

.method public blacklist setMaskColor(I)V
    .registers 2
    .param p1, "maskColor"    # I

    .line 59
    iput p1, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 60
    return-void
.end method
