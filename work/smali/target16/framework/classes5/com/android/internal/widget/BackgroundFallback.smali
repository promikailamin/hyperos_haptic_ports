.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private blacklist mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isOpaque(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 164
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private blacklist viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gtz v0, :cond_18

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p1, v0, :cond_18

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p1

    if-lt p1, p3, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 178
    :goto_19
    return p1
.end method


# virtual methods
.method public blacklist draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 26

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v4

    if-nez v4, :cond_f

    .line 60
    return-void

    .line 64
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 76
    move v11, v4

    move v12, v5

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2c
    if-ge v10, v8, :cond_8c

    .line 77
    move-object/from16 v15, p2

    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 78
    move/from16 v16, v6

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 79
    move/from16 v17, v7

    move-object/from16 v7, p4

    if-ne v9, v7, :cond_50

    .line 82
    if-nez v6, :cond_5d

    instance-of v6, v9, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5d

    move-object v6, v9

    check-cast v6, Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_5d

    .line 84
    goto :goto_85

    .line 86
    :cond_50
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_85

    invoke-direct {v0, v6}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 90
    goto :goto_85

    .line 92
    :cond_5d
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int v6, v16, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 93
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v6, v17, v6

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 94
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v6

    add-int v6, v16, v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 95
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int v6, v17, v6

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 76
    :cond_85
    :goto_85
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_2c

    .line 100
    :cond_8c
    nop

    .line 101
    const/4 v6, 0x1

    move v8, v6

    const/4 v7, 0x0

    :goto_90
    const/4 v9, 0x2

    if-ge v7, v9, :cond_131

    .line 102
    if-nez v7, :cond_97

    move-object v9, v2

    goto :goto_98

    :cond_97
    move-object v9, v3

    .line 103
    :goto_98
    if-eqz v9, :cond_12b

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_12b

    .line 104
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v15

    if-nez v10, :cond_12b

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-nez v10, :cond_b6

    goto/16 :goto_12b

    .line 110
    :cond_b6
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_cf

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_cf

    .line 111
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_cf

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v11, :cond_cf

    .line 112
    const/4 v11, 0x0

    .line 115
    :cond_cf
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_e8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_e8

    .line 116
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gt v10, v13, :cond_e8

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_e8

    .line 117
    move v13, v4

    .line 120
    :cond_e8
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_101

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v12, :cond_101

    .line 121
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_101

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_101

    .line 122
    const/4 v12, 0x0

    .line 125
    :cond_101
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gt v10, v14, :cond_11a

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_11a

    .line 126
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_11a

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_11a

    .line 127
    move v14, v5

    .line 130
    :cond_11a
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_128

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    if-lt v9, v12, :cond_128

    move v9, v6

    goto :goto_129

    :cond_128
    const/4 v9, 0x0

    :goto_129
    and-int/2addr v8, v9

    goto :goto_12d

    .line 105
    :cond_12b
    :goto_12b
    nop

    .line 106
    const/4 v8, 0x0

    .line 101
    :goto_12d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_90

    .line 135
    :cond_131
    if-eqz v8, :cond_140

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_13f

    .line 136
    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 137
    :cond_13f
    const/4 v12, 0x0

    .line 140
    :cond_140
    if-ge v11, v13, :cond_179

    if-lt v12, v14, :cond_145

    goto :goto_179

    .line 145
    :cond_145
    if-lez v12, :cond_153

    .line 146
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_154

    .line 145
    :cond_153
    const/4 v3, 0x0

    .line 149
    :goto_154
    if-lez v11, :cond_160

    .line 150
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v12, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_160
    if-ge v13, v4, :cond_16c

    .line 154
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v13, v12, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    :cond_16c
    if-ge v14, v5, :cond_178

    .line 158
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11, v14, v13, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v0, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    :cond_178
    return-void

    .line 142
    :cond_179
    :goto_179
    return-void
.end method

.method public blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist hasFallback()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method
