.class public Lcom/android/internal/compat/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "DialogButtonPanel.java"


# instance fields
.field private final blacklist HORIZONTAL_MARGIN:I

.field private final blacklist VERTICAL_MARGIN:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/compat/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "miuix_appcompat_dialog_btn_margin_vertical"

    const-string/jumbo v2, "miuix_appcompat_dialog_btn_margin_horizontal"

    const-string v3, "dimen"

    if-eqz v0, :cond_2b

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v4, "miuix.stub"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "horizontal":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "vertical":I
    goto :goto_43

    .line 33
    .end local v0    # "horizontal":I
    .end local v1    # "vertical":I
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    .restart local v0    # "horizontal":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 40
    .restart local v1    # "vertical":I
    :goto_43
    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/compat/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/compat/DialogButtonPanel;->VERTICAL_MARGIN:I

    .line 42
    return-void
.end method

.method private blacklist clearParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 77
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 79
    return-void
.end method

.method private blacklist handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 5
    .param p1, "lParams"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getChildCount()I

    move-result v0

    .line 46
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 47
    const/4 v1, -0x1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 48
    if-lez v0, :cond_1f

    .line 49
    iget v1, p0, Lcom/android/internal/compat/DialogButtonPanel;->VERTICAL_MARGIN:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1f

    .line 52
    :cond_15
    const/4 v1, 0x0

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 53
    if-lez v0, :cond_1f

    .line 54
    iget v1, p0, Lcom/android/internal/compat/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 57
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-object v0, p3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/internal/compat/DialogButtonPanel;->handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method public blacklist clearVisibleChildMargins()V
    .registers 5

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getChildCount()I

    move-result v0

    .line 61
    .local v0, "count":I
    const/4 v1, 0x0

    .line 62
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_17

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/DialogButtonPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    .line 65
    goto :goto_17

    .line 67
    :cond_13
    const/4 v1, 0x0

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 70
    .end local v2    # "i":I
    :cond_17
    :goto_17
    if-eqz v1, :cond_22

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/android/internal/compat/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 73
    :cond_22
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/internal/compat/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 84
    return-void
.end method
