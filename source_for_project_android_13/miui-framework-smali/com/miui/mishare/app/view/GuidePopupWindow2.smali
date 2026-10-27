.class public Lcom/miui/mishare/app/view/GuidePopupWindow2;
.super Lcom/miui/mishare/app/view/ArrowPopupWindow;
.source "GuidePopupWindow2.java"


# static fields
.field private static final blacklist DEFAULT_SHOW_DURATION:I = 0x1388


# instance fields
.field private final blacklist mDismissRunnable:Ljava/lang/Runnable;

.field private blacklist mGuideView:Landroid/widget/LinearLayout;

.field private blacklist mShowDuration:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v0, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;-><init>(Lcom/miui/mishare/app/view/GuidePopupWindow2;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mDismissRunnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    new-instance v0, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;-><init>(Lcom/miui/mishare/app/view/GuidePopupWindow2;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mDismissRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance v0, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;-><init>(Lcom/miui/mishare/app/view/GuidePopupWindow2;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mDismissRunnable:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 170
    new-instance v0, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2$1;-><init>(Lcom/miui/mishare/app/view/GuidePopupWindow2;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mDismissRunnable:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method private blacklist addGuideTextView(Ljava/lang/String;)V
    .registers 9
    .param p1, "guideText"    # Ljava/lang/String;

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    return-void

    .line 113
    :cond_7
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "lines":[Ljava/lang/String;
    if-eqz v0, :cond_33

    array-length v1, v0

    if-nez v1, :cond_13

    goto :goto_33

    .line 117
    :cond_13
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 118
    .local v1, "inflater":Landroid/view/LayoutInflater;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_32

    aget-object v4, v0, v3

    .line 119
    .local v4, "s":Ljava/lang/String;
    const v5, 0x110c0022

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, "text":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v6, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "text":Landroid/widget/TextView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 123
    :cond_32
    return-void

    .line 115
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method protected blacklist onPrepareWindow()V
    .registers 5

    .line 78
    invoke-super {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->onPrepareWindow()V

    .line 80
    const/16 v0, 0x1388

    iput v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mShowDuration:I

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setFocusable(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x110c0021

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mGuideView:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setContentView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v1, v3}, Lcom/miui/mishare/app/view/ArrowPopupView;->enableShowingAnimation(Z)V

    .line 88
    return-void
.end method

.method public blacklist setGuideText(I)V
    .registers 3
    .param p1, "guideTextId"    # I

    .line 105
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "guideText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setGuideText(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public blacklist setGuideText(Ljava/lang/String;)V
    .registers 2
    .param p1, "guideText"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->addGuideTextView(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public blacklist setOffset(II)V
    .registers 4
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 158
    iget-object v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/mishare/app/view/ArrowPopupView;->setOffset(II)V

    .line 159
    return-void
.end method

.method public blacklist setShowDuration(I)V
    .registers 2
    .param p1, "showDuration"    # I

    .line 167
    iput p1, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mShowDuration:I

    .line 168
    return-void
.end method

.method public blacklist show(Landroid/view/View;IIZ)V
    .registers 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "autoDismiss"    # Z

    .line 147
    invoke-virtual {p0, p4}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setAutoDismiss(Z)V

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->show(Landroid/view/View;II)V

    .line 149
    if-eqz p4, :cond_12

    .line 150
    iget-object v0, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mDismissRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/miui/mishare/app/view/GuidePopupWindow2;->mShowDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/mishare/app/view/ArrowPopupView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_12
    return-void
.end method

.method public blacklist show(Landroid/view/View;Z)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "autoDismiss"    # Z

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->show(Landroid/view/View;IIZ)V

    .line 134
    return-void
.end method
