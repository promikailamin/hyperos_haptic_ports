.class public Lcom/android/server/wm/AppCompatDisplayInsets;
.super Ljava/lang/Object;
.source "AppCompatDisplayInsets.java"


# instance fields
.field public final mAspectRatio:F

.field public final mHeight:I

.field public final mInDesktopMode:Z

.field public final mIsFloating:Z

.field public final mIsInFixedOrientationOrAspectRatioLetterbox:Z

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mOriginalRequestedOrientation:I

.field public final mOriginalRotation:I

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V
    .registers 16

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 61
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 67
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRotation:I

    .line 78
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    .line 79
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    .line 80
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 80
    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isInDesktopMode(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mInDesktopMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    .line 83
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 88
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    move p3, v2

    :goto_51
    if-ge p3, v0, :cond_5e

    .line 90
    iget-object p4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object p2, p4, p3

    .line 91
    iget-object p4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object p2, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_51

    .line 93
    :cond_5e
    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    .line 94
    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mAspectRatio:F

    return-void

    .line 98
    :cond_67
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p3, :cond_70

    move v4, v3

    goto :goto_71

    :cond_70
    move v4, v2

    .line 100
    :goto_71
    iput-boolean v4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-eqz v4, :cond_76

    goto :goto_81

    :cond_76
    if-eqz v1, :cond_7d

    .line 110
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_81

    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 111
    :goto_81
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    if-eqz v1, :cond_92

    if-eqz v4, :cond_92

    .line 114
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    goto :goto_9c

    .line 115
    :cond_92
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    .line 116
    :goto_9c
    invoke-static {p3, p2}, Lcom/android/server/wm/AppCompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v1

    .line 118
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 119
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 123
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    const/4 v1, 0x0

    goto :goto_b9

    :cond_b4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 124
    :goto_b9
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    move v5, v2

    :goto_be
    if-ge v5, v0, :cond_12e

    .line 126
    iget-object v6, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    .line 127
    iget-object v6, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    if-eq v5, v3, :cond_da

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d8

    goto :goto_da

    :cond_d8
    move v6, v2

    goto :goto_db

    :cond_da
    :goto_da
    move v6, v3

    :goto_db
    if-eqz v6, :cond_e0

    .line 129
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_e2

    :cond_e0
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_e2
    if-eqz v6, :cond_e7

    .line 130
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_e9

    :cond_e7
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 132
    :goto_e9
    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v8

    if-eqz p4, :cond_102

    .line 134
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_114

    .line 137
    :cond_102
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 138
    iget-object v9, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_114
    if-nez v1, :cond_117

    goto :goto_12b

    .line 147
    :cond_117
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 148
    invoke-virtual {p1, p2, v5, v1}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 152
    iget-object v8, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v1, v7, v6, v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 153
    iget-object v8, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v1, v7, v6, v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_12b
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 156
    :cond_12e
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 157
    iget-object p3, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 158
    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mAspectRatio:F

    return-void
.end method

.method public static getCenterOffset(II)I
    .registers 2

    .line 0
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 170
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v0, :cond_18

    .line 172
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 7

    .line 181
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 182
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 183
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 184
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBoundsByRotation(Landroid/graphics/Rect;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v1, v0

    :cond_9
    :goto_9
    if-eqz v1, :cond_e

    .line 189
    iget p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    goto :goto_10

    :cond_e
    iget p2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    :goto_10
    if-eqz v1, :cond_15

    .line 190
    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    goto :goto_17

    :cond_15
    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 191
    :goto_17
    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 13

    .line 207
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/AppCompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 208
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_b

    .line 209
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 213
    :cond_b
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppCompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 217
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_24

    move v2, v4

    goto :goto_25

    :cond_24
    move v2, v5

    :goto_25
    if-le v0, v1, :cond_29

    move v3, v4

    goto :goto_2a

    :cond_29
    move v3, v5

    :goto_2a
    if-eq v2, v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v4, v5

    :goto_2e
    if-eqz v4, :cond_57

    if-eqz p6, :cond_57

    if-eqz p5, :cond_57

    const/4 p5, 0x2

    if-ne p4, p5, :cond_41

    int-to-float p4, v0

    mul-float/2addr p4, p4

    int-to-float p5, v1

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 223
    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 224
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_4a

    .line 226
    :cond_41
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, v1

    mul-float/2addr p4, p4

    int-to-float p5, v0

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 227
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 229
    :goto_4a
    iget p4, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-static {p4, p5}, Lcom/android/server/wm/AppCompatDisplayInsets;->getCenterOffset(II)I

    move-result p4

    invoke-virtual {p2, p4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 231
    :cond_57
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v4, :cond_6f

    .line 237
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    .line 238
    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 239
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_6f
    const/4 p4, -0x1

    if-eq p3, p4, :cond_79

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    invoke-static {p1, p2, p0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_79
    return-void
.end method

.method public getFrameByOrientation(Landroid/graphics/Rect;I)V
    .registers 6

    .line 196
    iget v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 197
    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    move p2, v2

    :goto_17
    if-eqz p2, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    move v1, p0

    :goto_1c
    if-eqz p2, :cond_1f

    move v0, p0

    .line 199
    :cond_1f
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
