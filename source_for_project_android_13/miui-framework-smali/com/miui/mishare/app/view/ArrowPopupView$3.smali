.class Lcom/miui/mishare/app/view/ArrowPopupView$3;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/ArrowPopupView;->addShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/ArrowPopupView;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/ArrowPopupView;

    .line 190
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$3;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_12b

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_12b

    .line 196
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 197
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 198
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    .local v2, "rect":Landroid/graphics/Rect;
    if-le v0, v1, :cond_2d

    .line 200
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    .line 201
    .local v3, "paddingHorizontal":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 202
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 203
    .end local v3    # "paddingHorizontal":I
    goto :goto_3b

    .line 204
    :cond_2d
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    .line 205
    .local v3, "paddingVertical":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 206
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 208
    .end local v3    # "paddingVertical":I
    :goto_3b
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 209
    .local v3, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$3;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 211
    .local v4, "corner":F
    iget-object v5, p0, Lcom/miui/mishare/app/view/ArrowPopupView$3;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v5}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmArrowMode(Lcom/miui/mishare/app/view/ArrowPopupView;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v5, :pswitch_data_12c

    goto/16 :goto_116

    .line 222
    :pswitch_60
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v3, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 224
    .local v5, "middleX":F
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 225
    .local v8, "middleY":F
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v9, v7

    mul-float/2addr v9, v6

    .line 226
    .local v9, "ratio":F
    add-float v6, v5, v4

    mul-float v7, v4, v9

    sub-float v7, v8, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    add-float v6, v5, v4

    mul-float v7, v4, v9

    add-float/2addr v7, v8

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 228
    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    goto :goto_116

    .line 231
    .end local v5    # "middleX":F
    .end local v8    # "middleY":F
    .end local v9    # "ratio":F
    :pswitch_9d
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v3, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 232
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    .line 233
    .restart local v5    # "middleX":F
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 234
    .restart local v8    # "middleY":F
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v9, v7

    mul-float/2addr v9, v6

    .line 235
    .restart local v9    # "ratio":F
    sub-float v6, v5, v4

    mul-float v7, v4, v9

    sub-float v7, v8, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    sub-float v6, v5, v4

    mul-float v7, v4, v9

    add-float/2addr v7, v8

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 237
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_116

    .line 213
    .end local v5    # "middleX":F
    .end local v8    # "middleY":F
    .end local v9    # "ratio":F
    :pswitch_da
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 214
    .restart local v5    # "middleX":F
    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    .line 215
    .local v6, "middleY":F
    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v8, v7

    .line 216
    .local v8, "ratio":F
    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    mul-float v7, v4, v8

    sub-float v7, v5, v7

    add-float v9, v6, v4

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    mul-float v7, v4, v8

    add-float/2addr v7, v5

    add-float v9, v6, v4

    invoke-virtual {v3, v5, v6, v7, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 219
    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    nop

    .line 240
    .end local v5    # "middleX":F
    .end local v6    # "middleY":F
    .end local v8    # "ratio":F
    :goto_116
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 241
    invoke-virtual {p2, v3}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_12a

    .line 243
    :cond_120
    const-string v5, "ArrowPopupView"

    const-string v6, "outline path is not convex"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 247
    :goto_12a
    return-void

    .line 194
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "corner":F
    :cond_12b
    :goto_12b
    return-void

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_da
        :pswitch_9d
        :pswitch_60
    .end packed-switch
.end method
