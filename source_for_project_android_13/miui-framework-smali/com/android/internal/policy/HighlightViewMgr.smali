.class Lcom/android/internal/policy/HighlightViewMgr;
.super Ljava/lang/Object;
.source "HighlightViewMgr.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HighlightViewMgr"


# instance fields
.field private final blacklist mDecorView:Lcom/android/internal/policy/DecorView;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/internal/policy/HighlightViewMgr;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 20
    return-void
.end method

.method private blacklist findDragBarView()Landroid/view/View;
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/android/internal/policy/HighlightViewMgr;->getWindowMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/HighlightViewMgr;->mDecorView:Lcom/android/internal/policy/DecorView;

    const v1, 0x110a008f

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_12

    .line 38
    .end local v0    # "view":Landroid/view/View;
    :cond_11
    const/4 v0, 0x0

    .line 40
    .restart local v0    # "view":Landroid/view/View;
    :goto_12
    return-object v0
.end method

.method static blacklist getInstance(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/HighlightViewMgr;
    .registers 2
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;

    .line 44
    new-instance v0, Lcom/android/internal/policy/HighlightViewMgr;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/HighlightViewMgr;-><init>(Lcom/android/internal/policy/DecorView;)V

    return-object v0
.end method

.method private blacklist getWindowMode()I
    .registers 5

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "windowMode":I
    iget-object v1, p0, Lcom/android/internal/policy/HighlightViewMgr;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_17

    .line 25
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getWindowMode"

    invoke-static {v1, v3, v2}, Landroid/util/MiuiMultiWinClientUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_17

    .line 27
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    .end local v1    # "result":Ljava/lang/Object;
    :cond_17
    return v0
.end method

.method static blacklist isApplication(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 48
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_11

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_11
    return v1
.end method

.method public static blacklist isGestureNavigation(Landroid/content/ContentResolver;)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 55
    const-string v0, "force_fsg_nav_bar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 56
    return v2

    .line 58
    :cond_b
    return v1
.end method

.method private blacklist updateDragBarView(Z)V
    .registers 7
    .param p1, "isHasFocus"    # Z

    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/HighlightViewMgr;->findDragBarView()Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5f

    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/HighlightViewMgr;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/util/MiuiMultiWinClientUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 66
    if-eqz p1, :cond_28

    .line 67
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110801f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5f

    .line 70
    :cond_28
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110801f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5f

    .line 74
    :cond_3a
    if-eqz p1, :cond_4e

    .line 75
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110801f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5f

    .line 78
    :cond_4e
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110801f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v1    # "context":Landroid/content/Context;
    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method blacklist loseWindowFocus()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/HighlightViewMgr;->updateDragBarView(Z)V

    .line 87
    return-void
.end method

.method blacklist obtainWindowFocus()V
    .registers 2

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/HighlightViewMgr;->updateDragBarView(Z)V

    .line 91
    return-void
.end method
