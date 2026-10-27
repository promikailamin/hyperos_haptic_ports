.class public Landroid/app/servertransaction/BoundsCompat;
.super Landroid/app/servertransaction/BoundsCompatStub;
.source "BoundsCompat.java"


# static fields
.field private static final blacklist M_LOCK:Ljava/lang/Object;

.field public static final blacklist TAG:Ljava/lang/String; = "BoundsCompat"

.field private static volatile blacklist sSingleInstance:Landroid/app/servertransaction/BoundsCompat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Landroid/app/servertransaction/BoundsCompat;->sSingleInstance:Landroid/app/servertransaction/BoundsCompat;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/servertransaction/BoundsCompat;->M_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/servertransaction/BoundsCompatStub;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/app/servertransaction/BoundsCompat;
    .registers 2

    .line 32
    sget-object v0, Landroid/app/servertransaction/BoundsCompat;->sSingleInstance:Landroid/app/servertransaction/BoundsCompat;

    if-nez v0, :cond_17

    .line 33
    sget-object v0, Landroid/app/servertransaction/BoundsCompat;->M_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Landroid/app/servertransaction/BoundsCompat;->sSingleInstance:Landroid/app/servertransaction/BoundsCompat;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Landroid/app/servertransaction/BoundsCompat;

    invoke-direct {v1}, Landroid/app/servertransaction/BoundsCompat;-><init>()V

    sput-object v1, Landroid/app/servertransaction/BoundsCompat;->sSingleInstance:Landroid/app/servertransaction/BoundsCompat;

    .line 37
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 39
    :cond_17
    :goto_17
    sget-object v0, Landroid/app/servertransaction/BoundsCompat;->sSingleInstance:Landroid/app/servertransaction/BoundsCompat;

    return-object v0
.end method

.method private blacklist positionCompatBounds(Landroid/graphics/Point;Landroid/graphics/Point;IF)Landroid/graphics/Rect;
    .registers 13
    .param p1, "compactSize"    # Landroid/graphics/Point;
    .param p2, "displaySize"    # Landroid/graphics/Point;
    .param p3, "gravity"    # I
    .param p4, "scale"    # F

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 154
    .local v0, "compactBounds":Landroid/graphics/Rect;
    and-int/lit8 v1, p3, 0x7

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sparse-switch v1, :sswitch_data_78

    .line 167
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v6, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p4

    sub-float/2addr v1, v6

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 168
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_40

    .line 162
    :sswitch_23
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p4

    float-to-double v6, v6

    add-double/2addr v6, v4

    double-to-int v6, v6

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 163
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 164
    goto :goto_40

    .line 157
    :sswitch_34
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 158
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-double v6, v1

    add-double/2addr v6, v4

    double-to-int v1, v6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 159
    nop

    .line 171
    :goto_40
    and-int/lit8 v1, p3, 0x70

    sparse-switch v1, :sswitch_data_8a

    .line 182
    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 183
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_76

    .line 177
    :sswitch_59
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 178
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 179
    goto :goto_76

    .line 173
    :sswitch_6a
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 174
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 175
    nop

    .line 186
    :goto_76
    return-object v0

    nop

    :sswitch_data_78
    .sparse-switch
        0x3 -> :sswitch_34
        0x5 -> :sswitch_23
        0x800003 -> :sswitch_34
        0x800005 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_8a
    .sparse-switch
        0x30 -> :sswitch_6a
        0x50 -> :sswitch_59
    .end sparse-switch
.end method


# virtual methods
.method public blacklist adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 59
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/servertransaction/BoundsCompat;->adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 60
    return-void
.end method

.method public blacklist adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 64
    invoke-virtual {p0, p1, p2, p2}, Landroid/app/servertransaction/BoundsCompat;->adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 65
    return-void
.end method

.method public blacklist adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "appBounds"    # Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 71
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    .line 72
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    .line 74
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-gt v0, v1, :cond_20

    .line 75
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    const/4 v0, 0x1

    .line 76
    .local v0, "rotation":I
    :goto_21
    iput v0, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 77
    return-void
.end method

.method public blacklist computeCompatBounds(FLandroid/content/res/Configuration;IIF)Landroid/graphics/Rect;
    .registers 14
    .param p1, "aspectRatio"    # F
    .param p2, "parentConfiguration"    # Landroid/content/res/Configuration;
    .param p3, "requestOrientation"    # I
    .param p4, "gravity"    # I
    .param p5, "scale"    # F

    .line 81
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 82
    .local v0, "parentBounds":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 83
    .local v3, "displaySize":Landroid/graphics/Point;
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    move-object v1, p0

    move v2, p1

    move v4, p4

    move v6, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/servertransaction/BoundsCompat;->computeCompatBounds(FLandroid/graphics/Point;IIIF)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public blacklist computeCompatBounds(FLandroid/graphics/Point;IIIF)Landroid/graphics/Rect;
    .registers 24
    .param p1, "aspectRatio"    # F
    .param p2, "displaySize"    # Landroid/graphics/Point;
    .param p3, "gravity"    # I
    .param p4, "parentOrientation"    # I
    .param p5, "requestOrientation"    # I
    .param p6, "scale"    # F

    .line 89
    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-lez v4, :cond_96

    iget v4, v0, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_96

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-gtz v4, :cond_1b

    move-object/from16 v13, p0

    move/from16 v14, p3

    goto/16 :goto_9a

    .line 94
    :cond_1b
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 95
    .local v4, "width":I
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 99
    .local v5, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, p1, v6

    if-gez v7, :cond_28

    .line 100
    div-float v6, v6, p1

    .end local p1    # "aspectRatio":F
    .local v6, "aspectRatio":F
    goto :goto_2a

    .line 99
    .end local v6    # "aspectRatio":F
    .restart local p1    # "aspectRatio":F
    :cond_28
    move/from16 v6, p1

    .line 103
    .end local p1    # "aspectRatio":F
    .restart local v6    # "aspectRatio":F
    :goto_2a
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 104
    .local v7, "longSide":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 105
    .local v8, "shortSide":I
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    .line 107
    .local v9, "containerRatio":F
    const/high16 v10, 0x3f000000    # 0.5f

    if-eq v1, v2, :cond_44

    const/4 v11, 0x1

    if-ne v2, v11, :cond_44

    .line 108
    move v11, v8

    .line 109
    .local v11, "longCompat":I
    int-to-float v12, v11

    div-float/2addr v12, v6

    add-float/2addr v12, v10

    float-to-int v10, v12

    .line 110
    .local v10, "shortCompat":I
    move v12, v10

    .line 111
    .local v12, "compatWidth":I
    move v10, v11

    .line 112
    .end local v11    # "longCompat":I
    .local v10, "compatHeight":I
    goto :goto_7c

    .end local v10    # "compatHeight":I
    .end local v12    # "compatWidth":I
    :cond_44
    const/4 v11, 0x2

    if-eq v1, v2, :cond_51

    if-ne v2, v11, :cond_51

    .line 113
    move v11, v8

    .line 114
    .restart local v11    # "longCompat":I
    int-to-float v12, v11

    div-float/2addr v12, v6

    add-float/2addr v12, v10

    float-to-int v10, v12

    .line 115
    .local v10, "shortCompat":I
    move v12, v11

    .line 116
    .restart local v12    # "compatWidth":I
    nop

    .line 117
    .end local v11    # "longCompat":I
    .local v10, "compatHeight":I
    goto :goto_7c

    .end local v10    # "compatHeight":I
    .end local v12    # "compatWidth":I
    :cond_51
    if-ne v1, v11, :cond_5d

    if-nez v2, :cond_5d

    .line 119
    move v11, v8

    .line 120
    .restart local v11    # "longCompat":I
    int-to-float v12, v11

    div-float/2addr v12, v6

    add-float/2addr v12, v10

    float-to-int v10, v12

    .line 121
    .local v10, "shortCompat":I
    move v12, v10

    .line 122
    .restart local v12    # "compatWidth":I
    move v10, v11

    .line 123
    .end local v11    # "longCompat":I
    .local v10, "compatHeight":I
    goto :goto_7c

    .line 124
    .end local v10    # "compatHeight":I
    .end local v12    # "compatWidth":I
    :cond_5d
    cmpl-float v11, v6, v9

    if-lez v11, :cond_70

    .line 125
    int-to-float v11, v7

    div-float/2addr v11, v6

    add-float/2addr v11, v10

    float-to-int v10, v11

    .line 126
    .local v10, "shortCompat":I
    if-ge v4, v5, :cond_6c

    .line 127
    move v11, v10

    .line 128
    .local v11, "compatWidth":I
    move v12, v7

    move v10, v12

    move v12, v11

    .local v12, "compatHeight":I
    goto :goto_6f

    .line 130
    .end local v11    # "compatWidth":I
    .end local v12    # "compatHeight":I
    :cond_6c
    move v11, v7

    .line 131
    .restart local v11    # "compatWidth":I
    move v12, v10

    move v12, v11

    .line 133
    .end local v11    # "compatWidth":I
    .local v10, "compatHeight":I
    .local v12, "compatWidth":I
    :goto_6f
    goto :goto_7c

    .line 134
    .end local v10    # "compatHeight":I
    .end local v12    # "compatWidth":I
    :cond_70
    int-to-float v11, v8

    mul-float/2addr v11, v6

    add-float/2addr v11, v10

    float-to-int v10, v11

    .line 135
    .local v10, "longCompat":I
    if-ge v4, v5, :cond_79

    .line 136
    move v12, v8

    .line 137
    .restart local v12    # "compatWidth":I
    move v11, v10

    .local v11, "compatHeight":I
    goto :goto_7c

    .line 139
    .end local v11    # "compatHeight":I
    .end local v12    # "compatWidth":I
    :cond_79
    move v12, v10

    .line 140
    .restart local v12    # "compatWidth":I
    move v11, v8

    move v10, v11

    .line 145
    .local v10, "compatHeight":I
    :goto_7c
    int-to-float v11, v12

    div-float/2addr v11, v3

    float-to-double v13, v11

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-int v11, v13

    .line 146
    .end local v12    # "compatWidth":I
    .local v11, "compatWidth":I
    int-to-float v12, v10

    div-float/2addr v12, v3

    float-to-double v12, v12

    add-double/2addr v12, v15

    double-to-int v10, v12

    .line 148
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v13, p0

    move/from16 v14, p3

    invoke-direct {v13, v12, v0, v14, v3}, Landroid/app/servertransaction/BoundsCompat;->positionCompatBounds(Landroid/graphics/Point;Landroid/graphics/Point;IF)Landroid/graphics/Rect;

    move-result-object v12

    return-object v12

    .line 89
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "aspectRatio":F
    .end local v7    # "longSide":I
    .end local v8    # "shortSide":I
    .end local v9    # "containerRatio":F
    .end local v10    # "compatHeight":I
    .end local v11    # "compatWidth":I
    .restart local p1    # "aspectRatio":F
    :cond_96
    move-object/from16 v13, p0

    move/from16 v14, p3

    .line 91
    :goto_9a
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    return-object v4
.end method

.method public blacklist isBoundsCompatEnabled(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 44
    and-int/lit8 v0, p1, 0xf

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isFixedAspectRatioModeEnabled(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 49
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist needsCompatBounds(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/BoundsCompat;->isFixedAspectRatioModeEnabled(I)Z

    move-result v0

    return v0
.end method
