.class public Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# instance fields
.field public mParentAppBoundsOverride:Landroid/graphics/Rect;

.field public mParentBoundsOverride:Landroid/graphics/Rect;

.field public mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mTmpOverrideConfigOrientation:I

.field public mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mUseOverrideInsetsForConfig:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetTmpOverrides()V
    .registers 2

    const/4 v0, 0x0

    .line 2495
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 2496
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    const/4 v0, 0x0

    .line 2497
    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    return-void
.end method

.method public resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Z)V
    .registers 9

    if-eqz p4, :cond_4

    move-object v0, p4

    goto :goto_f

    .line 2462
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2463
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_f
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    if-eqz p4, :cond_15

    move-object v0, p4

    goto :goto_20

    .line 2464
    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2465
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_20
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 2466
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2467
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_3e

    .line 2471
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-lt p1, p2, :cond_3b

    move v1, v2

    .line 2472
    :cond_3b
    iput v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto :goto_8a

    :cond_3e
    if-eqz p5, :cond_8a

    .line 2473
    iget-boolean p4, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz p4, :cond_8a

    if-eqz p1, :cond_8a

    .line 2477
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_55

    if-nez p3, :cond_55

    .line 2479
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p2

    :cond_55
    if-eq p2, v2, :cond_5d

    const/4 p3, 0x3

    if-ne p2, p3, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p3, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    move p3, v2

    :goto_5e
    if-eqz p3, :cond_63

    .line 2482
    iget p4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_65

    :cond_63
    iget p4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_65
    if-eqz p3, :cond_6a

    .line 2483
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_6c

    :cond_6a
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2484
    :goto_6c
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    .line 2485
    invoke-virtual {p1, p2, p4, p3}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p1

    .line 2486
    iget-object p2, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 2487
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p3, p2, :cond_81

    goto :goto_82

    :cond_81
    move v1, v2

    .line 2488
    :goto_82
    iput v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2489
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    .line 2491
    :cond_8a
    :goto_8a
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method
