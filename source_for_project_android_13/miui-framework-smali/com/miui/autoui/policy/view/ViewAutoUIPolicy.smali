.class public Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;
.source "ViewAutoUIPolicy.java"


# static fields
.field public static final blacklist SCREEN_WIDTH_RATIO_LOWER:F = 0.8f

.field public static final blacklist SCREEN_WIDTH_RATIO_LOWER2:F = 0.9f

.field public static final blacklist SCREEN_WIDTH_RATIO_UPPER:F = 1.1f

.field private static final blacklist TAG:Ljava/lang/String; = "ViewAutoUIPolicy"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 30
    new-instance v0, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;

    invoke-direct {v0}, Lcom/miui/autoui/policy/view/ViewAutoUIMeasure;-><init>()V

    new-instance v1, Lcom/miui/autoui/policy/view/ViewAutoUILayout;

    invoke-direct {v1}, Lcom/miui/autoui/policy/view/ViewAutoUILayout;-><init>()V

    new-instance v2, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;

    invoke-direct {v2}, Lcom/miui/autoui/policy/view/ViewAutoUIDraw;-><init>()V

    new-instance v3, Lcom/miui/autoui/policy/view/ViewAutoUIEvent;

    invoke-direct {v3}, Lcom/miui/autoui/policy/view/ViewAutoUIEvent;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V

    .line 32
    return-void
.end method

.method private blacklist getOnlyValidView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 219
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 220
    return-object v0

    .line 222
    :cond_4
    const/4 v1, 0x0

    .line 223
    .local v1, "first":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 224
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    .local v3, "temp":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isValidView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 226
    if-eqz v1, :cond_2d

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_2c

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_2d

    .line 228
    :cond_2c
    return-object v0

    .line 230
    :cond_2d
    if-nez v1, :cond_30

    .line 231
    move-object v1, v3

    .line 223
    .end local v3    # "temp":Landroid/view/View;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 236
    .end local v2    # "i":I
    :cond_33
    return-object v1
.end method

.method private static blacklist hasContentOverlay(Landroid/view/View;)Z
    .registers 18
    .param p0, "view"    # Landroid/view/View;

    .line 131
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 132
    .local v1, "z":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 133
    return v3

    .line 135
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 136
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 137
    .local v4, "broCnt":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    .line 138
    .local v5, "viewSquare":I
    const/4 v6, 0x0

    .line 139
    .local v6, "i":I
    :goto_21
    if-ge v6, v4, :cond_f1

    .line 140
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 141
    .local v7, "bro":Landroid/view/View;
    invoke-static {v7}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v8

    .line 142
    .local v8, "broInfo":Lcom/miui/autoui/ViewExtras;
    if-eq v7, v0, :cond_eb

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    if-eqz v9, :cond_eb

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    if-eqz v9, :cond_eb

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_eb

    .line 143
    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    .local v9, "preBroRight":I
    goto :goto_5b

    .line 146
    .end local v9    # "preBroRight":I
    :cond_57
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    .line 148
    .restart local v9    # "preBroRight":I
    :goto_5b
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v10, v11, :cond_eb

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-le v9, v10, :cond_eb

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v10, v11, :cond_eb

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v10, v11, :cond_eb

    .line 149
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    .line 150
    .local v10, "broSquare":I
    instance-of v11, v0, Landroid/widget/ImageView;

    const/4 v12, 0x1

    if-eqz v11, :cond_a0

    instance-of v11, v7, Landroid/widget/ImageView;

    if-eqz v11, :cond_a0

    if-ne v10, v5, :cond_a0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ne v11, v13, :cond_a0

    .line 151
    return v12

    .line 153
    :cond_a0
    invoke-virtual {v8}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v11

    if-eqz v11, :cond_a9

    if-lt v10, v5, :cond_a9

    .line 154
    return v1

    .line 156
    :cond_a9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 157
    .local v11, "broLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 158
    .local v13, "broTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 159
    .local v14, "broRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 160
    .local v3, "broBottom":I
    sub-int v15, v14, v11

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    sub-int v12, v3, v13

    int-to-float v12, v12

    mul-float/2addr v15, v12

    int-to-float v12, v5

    div-float/2addr v15, v12

    const v12, 0x3d8f5c29    # 0.07f

    cmpl-float v12, v15, v12

    if-lez v12, :cond_eb

    .line 161
    const/4 v12, 0x1

    return v12

    .line 165
    .end local v3    # "broBottom":I
    .end local v9    # "preBroRight":I
    .end local v10    # "broSquare":I
    .end local v11    # "broLeft":I
    .end local v13    # "broTop":I
    .end local v14    # "broRight":I
    :cond_eb
    add-int/lit8 v6, v6, 0x1

    .line 166
    const/4 v1, 0x0

    .line 167
    .end local v7    # "bro":Landroid/view/View;
    .end local v8    # "broInfo":Lcom/miui/autoui/ViewExtras;
    const/4 v3, 0x0

    goto/16 :goto_21

    .line 168
    :cond_f1
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist isAtomicGroup(Landroid/view/View;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 206
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 207
    return v0

    .line 209
    :cond_4
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 210
    return v2

    .line 212
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 213
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 214
    .local v3, "count":I
    if-ne v3, v2, :cond_1d

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isAtomicGroup(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_29

    :cond_1d
    if-le v3, v2, :cond_2b

    .line 215
    invoke-direct {p0, v1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->getOnlyValidView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isAtomicGroup(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2b

    :cond_29
    move v0, v2

    goto :goto_2c

    :cond_2b
    nop

    .line 214
    :goto_2c
    return v0
.end method

.method private blacklist isBackGroundImage(Landroid/view/View;Z)Z
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isRecursionRequired"    # Z

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v2

    .line 67
    .local v2, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 68
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    if-ltz v4, :cond_35

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lt v4, v6, :cond_35

    if-eqz v3, :cond_35

    .line 70
    return v5

    .line 72
    :cond_35
    invoke-virtual {v2}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_44

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_44

    move v4, v5

    goto :goto_45

    :cond_44
    move v4, v6

    .line 73
    .local v4, "hasBackgroundImage":Z
    :goto_45
    if-nez p2, :cond_b4

    if-eqz v4, :cond_b4

    .line 74
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v7

    .line 75
    .local v7, "compScreenWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-lt v8, v7, :cond_b3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_60

    goto :goto_b3

    .line 78
    :cond_60
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 79
    .local v8, "locations":[I
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 80
    aget v9, v8, v5

    int-to-float v9, v9

    .line 81
    .local v9, "locationY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const v11, 0x1020030

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 82
    .local v10, "navigationBar":Landroid/view/View;
    if-nez v10, :cond_78

    move v11, v6

    goto :goto_7c

    :cond_78
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 83
    .local v11, "navigationHeight":I
    :goto_7c
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3dcccccd    # 0.1f

    mul-float/2addr v12, v13

    .line 84
    .local v12, "maxTabHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v11

    .line 85
    .local v13, "distanceToBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lt v14, v7, :cond_a8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    cmpg-float v14, v14, v12

    if-gez v14, :cond_a8

    move v14, v5

    goto :goto_a9

    :cond_a8
    move v14, v6

    .line 86
    .local v14, "isTabSize":Z
    :goto_a9
    if-eqz v14, :cond_b4

    int-to-float v15, v13

    cmpl-float v15, v9, v15

    if-nez v15, :cond_b4

    if-eqz v3, :cond_b4

    .line 87
    return v5

    .line 76
    .end local v8    # "locations":[I
    .end local v9    # "locationY":F
    .end local v10    # "navigationBar":Landroid/view/View;
    .end local v11    # "navigationHeight":I
    .end local v12    # "maxTabHeight":F
    .end local v13    # "distanceToBottom":I
    .end local v14    # "isTabSize":Z
    :cond_b3
    :goto_b3
    return v5

    .line 90
    .end local v7    # "compScreenWidth":I
    :cond_b4
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_bd

    if-nez v3, :cond_bd

    .line 91
    return v6

    .line 93
    :cond_bd
    if-nez p2, :cond_c8

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->preCheckBackGroundImage(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z

    move-result v7

    if-eqz v7, :cond_c6

    goto :goto_c8

    :cond_c6
    move v7, v6

    goto :goto_c9

    :cond_c8
    :goto_c8
    move v7, v5

    .line 94
    .local v7, "isRequired":Z
    :goto_c9
    if-eqz v7, :cond_f8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-nez v8, :cond_d4

    goto :goto_f8

    .line 97
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 98
    .local v8, "parent":Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_f7

    invoke-static {v8}, Lcom/miui/autoui/utils/ViewProcessor;->isViewPager(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_e7

    goto :goto_f7

    .line 101
    :cond_e7
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 102
    .local v6, "broCnt":I
    if-ne v6, v5, :cond_f2

    .line 103
    invoke-direct {v0, v8, v7}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isBackGroundImage(Landroid/view/View;Z)Z

    move-result v5

    return v5

    .line 105
    :cond_f2
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->hasContentOverlay(Landroid/view/View;)Z

    move-result v5

    return v5

    .line 99
    .end local v6    # "broCnt":I
    :cond_f7
    :goto_f7
    return v6

    .line 95
    .end local v8    # "parent":Landroid/view/ViewGroup;
    :cond_f8
    :goto_f8
    return v6
.end method

.method private static blacklist isNearlyFullCompScreen(Landroid/view/View;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 279
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 280
    return v0

    .line 282
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 283
    .local v1, "width":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    .line 284
    .local v2, "compScreen":I
    int-to-float v3, v1

    int-to-float v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1d

    if-gt v1, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method private static blacklist isNearlyFullScreen(Landroid/view/View;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 275
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private blacklist isOnlyFullScreenWidthChild(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 255
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 256
    return v1

    .line 258
    :cond_8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 259
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 260
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 261
    .local v3, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v2, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    .local v4, "targetStretchArea":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v0, :cond_50

    .line 263
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 264
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4d

    .line 265
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    .local v8, "brotherArea":Landroid/graphics/Rect;
    invoke-static {v4, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 267
    return v6

    .line 262
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "brotherArea":Landroid/graphics/Rect;
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 271
    .end local v5    # "i":I
    :cond_50
    return v1
.end method

.method private blacklist isParentBackground(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 250
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    if-eqz p2, :cond_1a

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 250
    :goto_1b
    return v0
.end method

.method private blacklist isSidedView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/view/ViewGroup;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 246
    .local v0, "centerDiff":I
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v1

    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    if-eq v1, v2, :cond_26

    const/4 v1, 0x5

    if-le v0, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private blacklist isValidView(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 240
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 240
    :goto_17
    return v0
.end method

.method private blacklist preCheckBackGroundImage(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_92

    if-nez p2, :cond_d

    goto/16 :goto_92

    .line 112
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v2

    .line 114
    .local v2, "compScreenWidth":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    .line 115
    .local v3, "maxHeight":F
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-lt v4, v2, :cond_38

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_38

    .line 116
    return v1

    .line 118
    :cond_38
    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 119
    .local v4, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p2}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_48
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 120
    :cond_4e
    return v1

    .line 122
    :cond_4f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 123
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 124
    .local v6, "parentWidthSpace":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 125
    .local v7, "parentHeightSpace":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v6, :cond_7e

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lt v8, v7, :cond_7e

    move v8, v9

    goto :goto_7f

    :cond_7e
    move v8, v1

    .line 126
    .local v8, "isFilledUp":Z
    :goto_7f
    if-nez v8, :cond_90

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8a

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v11, :cond_90

    :cond_8a
    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isBackgroundImageGroup()Z

    move-result v10

    if-eqz v10, :cond_91

    :cond_90
    move v1, v9

    :cond_91
    return v1

    .line 110
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "compScreenWidth":I
    .end local v3    # "maxHeight":F
    .end local v4    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "parentWidthSpace":I
    .end local v7    # "parentHeightSpace":I
    .end local v8    # "isFilledUp":Z
    :cond_92
    :goto_92
    return v1
.end method

.method private blacklist preProcessViews(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 58
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 59
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_17

    :cond_16
    :goto_16
    move v1, v3

    :goto_17
    invoke-virtual {v0, v1}, Lcom/miui/autoui/ViewExtras;->setAtomic(Z)V

    .line 60
    invoke-direct {p0, p1, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isBackGroundImage(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 61
    invoke-virtual {v0, v3}, Lcom/miui/autoui/ViewExtras;->setBackgroundImage(Z)V

    .line 63
    :cond_23
    return-void
.end method

.method private blacklist processCompressedView(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 177
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 178
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_81

    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_81

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_81

    .line 181
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    if-nez v1, :cond_81

    .line 182
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    if-nez v1, :cond_81

    .line 183
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_81

    .line 186
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 187
    .local v1, "viewParent":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_80

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/miui/autoui/utils/ViewProcessor;->isRecyclerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_80

    .line 190
    :cond_35
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 191
    .local v2, "parent":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 192
    .local v3, "isSideFullScreenView":Z
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4a

    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isAtomicGroup(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_4a

    :cond_48
    move v4, v5

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v4, v6

    .line 193
    .local v4, "isAtomic":Z
    :goto_4b
    invoke-static {v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isNearlyFullScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-static {p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isNearlyFullCompScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_58

    move v5, v6

    .line 194
    .local v5, "isNearlyFullScreen":Z
    :cond_58
    invoke-direct {p0, p1, v0, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isSidedView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-direct {p0, p1, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isParentBackground(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v7

    if-nez v7, :cond_6a

    invoke-direct {p0, p1, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->isOnlyFullScreenWidthChild(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 195
    :cond_6a
    const/4 v3, 0x1

    .line 197
    :cond_6b
    if-eqz v4, :cond_7f

    if-eqz v5, :cond_7f

    if-eqz v3, :cond_7f

    .line 198
    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-eqz v6, :cond_7f

    .line 200
    sget-object v6, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v6}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 203
    :cond_7f
    return-void

    .line 188
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "isSideFullScreenView":Z
    .end local v4    # "isAtomic":Z
    .end local v5    # "isNearlyFullScreen":Z
    :cond_80
    :goto_80
    return-void

    .line 184
    .end local v1    # "viewParent":Ljava/lang/Object;
    :cond_81
    :goto_81
    return-void
.end method

.method private blacklist processTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 292
    if-eqz p2, :cond_df

    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isTextView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_df

    .line 295
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 296
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getTextLayout(Landroid/view/View;)Landroid/text/Layout;

    move-result-object v1

    .line 297
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_de

    .line 298
    const/4 v2, 0x1

    .line 299
    .local v2, "isEqual2":Z
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;

    move-result-object v4

    .line 301
    .local v4, "parentInfo":Lcom/miui/autoui/ViewExtras;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v5

    if-nez v5, :cond_31

    .line 302
    const/4 v5, 0x1

    .local v5, "isStretchUndeformParent":Z
    goto :goto_32

    .line 304
    .end local v5    # "isStretchUndeformParent":Z
    :cond_31
    const/4 v5, 0x0

    .line 306
    .restart local v5    # "isStretchUndeformParent":Z
    :goto_32
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 307
    .local v6, "isLayoutEmpty":Z
    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v7, :cond_45

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_45

    .line 308
    const/4 v7, 0x1

    .local v7, "isHeightAvailable":Z
    goto :goto_46

    .line 310
    .end local v7    # "isHeightAvailable":Z
    :cond_45
    const/4 v7, 0x0

    .line 312
    .restart local v7    # "isHeightAvailable":Z
    :goto_46
    const/4 v8, 0x0

    if-eqz v5, :cond_52

    if-eqz v6, :cond_52

    if-eqz v7, :cond_52

    .line 313
    invoke-virtual {p2, v8}, Lcom/miui/autoui/ViewExtras;->setOriginalSize(Z)V

    goto/16 :goto_de

    .line 314
    :cond_52
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, -0x2

    if-eqz v9, :cond_63

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v9, v10, :cond_63

    goto/16 :goto_de

    .line 316
    :cond_63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_81

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 318
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v11

    const v12, 0x800007

    and-int/2addr v11, v12

    .line 319
    .local v11, "horizontalGravity":I
    if-ne v11, v3, :cond_81

    .line 320
    sget-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v3}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 321
    return-void

    .line 324
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v11    # "horizontalGravity":I
    :cond_81
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    if-ne v9, v3, :cond_de

    .line 325
    invoke-virtual {v1, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_9d

    .line 326
    const/4 v3, 0x1

    .local v3, "isTextWidthEqualsView":Z
    goto :goto_9e

    .line 328
    .end local v3    # "isTextWidthEqualsView":Z
    :cond_9d
    const/4 v3, 0x0

    .line 330
    .restart local v3    # "isTextWidthEqualsView":Z
    :goto_9e
    instance-of v8, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_b4

    .line 331
    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_b0

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v8, v10, :cond_b1

    .line 332
    :cond_b0
    const/4 v2, 0x0

    .line 334
    :cond_b1
    or-int v8, v2, v3

    .local v8, "isEqual":Z
    goto :goto_bb

    .line 336
    .end local v8    # "isEqual":Z
    :cond_b4
    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v8, v10, :cond_b9

    .line 337
    const/4 v2, 0x0

    .line 339
    :cond_b9
    or-int v8, v2, v3

    .line 341
    .restart local v8    # "isEqual":Z
    :goto_bb
    if-eqz v8, :cond_db

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_da

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 344
    .local v9, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    if-eq v10, v11, :cond_d9

    .line 345
    invoke-direct {p0, v9, p1, p2, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->setAlignmentByLocation(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    return-void

    .line 348
    :cond_d9
    return-void

    .line 350
    .end local v9    # "parent":Landroid/view/ViewGroup;
    :cond_da
    return-void

    .line 352
    :cond_db
    invoke-direct {p0, v1, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->setAlignmentByLayout(Landroid/text/Layout;Lcom/miui/autoui/ViewExtras;)V

    .line 356
    .end local v2    # "isEqual2":Z
    .end local v3    # "isTextWidthEqualsView":Z
    .end local v4    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    .end local v5    # "isStretchUndeformParent":Z
    .end local v6    # "isLayoutEmpty":Z
    .end local v7    # "isHeightAvailable":Z
    .end local v8    # "isEqual":Z
    :cond_de
    :goto_de
    return-void

    .line 293
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_df
    :goto_df
    return-void
.end method

.method private blacklist processView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 172
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->processCompressedView(Landroid/view/View;)V

    .line 173
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->processTextView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V

    .line 174
    return-void
.end method

.method private blacklist processViews(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 44
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_28

    .line 47
    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->preProcessViews(Landroid/view/View;)V

    .line 48
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->processViews(Landroid/view/View;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 54
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_24
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->processView(Landroid/view/View;)V

    .line 55
    return-void

    .line 45
    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist setAlignmentByLayout(Landroid/text/Layout;Lcom/miui/autoui/ViewExtras;)V
    .registers 8
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 408
    if-eqz p1, :cond_4f

    if-nez p2, :cond_5

    goto :goto_4f

    .line 411
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 413
    .local v1, "layoutAlignment":Landroid/text/Layout$Alignment;
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    if-nez v2, :cond_16

    .line 414
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_4e

    .line 416
    :cond_16
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 418
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v3, :cond_26

    .line 419
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    .local v0, "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    goto :goto_28

    .line 421
    .end local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    :cond_26
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 423
    .restart local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    :goto_28
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 425
    .end local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    goto :goto_4e

    :cond_2c
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_40

    .line 427
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4e

    .line 428
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_4e

    .line 432
    :cond_40
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v3, :cond_49

    .line 433
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    .restart local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    goto :goto_4b

    .line 435
    .end local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    :cond_49
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 437
    .restart local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    :goto_4b
    invoke-virtual {p2, v0}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 439
    .end local v0    # "alignment":Lcom/miui/autoui/ViewExtras$Alignment;
    :cond_4e
    :goto_4e
    return-void

    .line 409
    .end local v1    # "layoutAlignment":Landroid/text/Layout$Alignment;
    :cond_4f
    :goto_4f
    return-void
.end method

.method private blacklist setAlignmentByLocation(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 14
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p4, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 359
    if-eqz p1, :cond_cf

    if-eqz p2, :cond_cf

    if-eqz p3, :cond_cf

    if-nez p4, :cond_a

    goto/16 :goto_cf

    .line 362
    :cond_a
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isConstraintLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 363
    invoke-direct {p0, p2}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->setAlignmentInConstraintLayout(Landroid/view/View;)V

    .line 364
    return-void

    .line 366
    :cond_14
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 367
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ltz v1, :cond_73

    .line 368
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 369
    .local v1, "broView":Landroid/view/View;
    invoke-static {v1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v3

    .line 370
    .local v3, "broInfo":Lcom/miui/autoui/ViewExtras;
    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_73

    invoke-virtual {v3}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 371
    const/4 v4, 0x0

    .line 372
    .local v4, "z":Z
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-gt v5, v6, :cond_48

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v5, v6, :cond_48

    move v5, v2

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    .line 373
    .local v5, "isViewCoverBro":Z
    :goto_49
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_5e

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    if-gt v6, v7, :cond_5e

    .line 374
    const/4 v4, 0x1

    .line 376
    :cond_5e
    move v6, v4

    .line 377
    .local v6, "isBroCoverView":Z
    if-nez v5, :cond_63

    if-eqz v6, :cond_73

    :cond_63
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v7, v8, :cond_73

    .line 378
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 379
    return-void

    .line 383
    .end local v1    # "broView":Landroid/view/View;
    .end local v3    # "broInfo":Lcom/miui/autoui/ViewExtras;
    .end local v4    # "z":Z
    .end local v5    # "isViewCoverBro":Z
    .end local v6    # "isBroCoverView":Z
    :cond_73
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_8d

    .line 384
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v1}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    goto :goto_ce

    .line 385
    :cond_8d
    instance-of v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_ce

    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_ce

    .line 386
    move-object v1, p4

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 387
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ltz v2, :cond_ce

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_ce

    .line 388
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_ce

    .line 389
    sget-object v2, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {p3, v2}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 392
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_ce
    :goto_ce
    return-void

    .line 360
    .end local v0    # "index":I
    :cond_cf
    :goto_cf
    return-void
.end method

.method private blacklist setAlignmentInConstraintLayout(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 396
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const-string v1, "startToStart"

    invoke-static {v0, v1}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, "startToStart":I
    const-string v2, "endToEnd"

    invoke-static {v0, v2}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, "endToEnd":I
    const-string v3, "leftToLeft"

    invoke-static {v0, v3}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, "leftToLeft":I
    const-string v4, "rightToRight"

    invoke-static {v0, v4}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    .line 400
    .local v4, "rightToRight":I
    and-int v5, v1, v3

    .line 401
    .local v5, "start":I
    and-int v6, v2, v4

    .line 402
    .local v6, "end":I
    if-ne v5, v6, :cond_2d

    if-eqz v5, :cond_2d

    .line 403
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v7

    sget-object v8, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v7, v8}, Lcom/miui/autoui/ViewExtras;->setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V

    .line 405
    :cond_2d
    return-void
.end method


# virtual methods
.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 36
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 37
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_17

    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_17

    .line 40
    :cond_13
    invoke-direct {p0, p1}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;->processViews(Landroid/view/View;)V

    .line 41
    return-void

    .line 38
    :cond_17
    :goto_17
    return-void
.end method
