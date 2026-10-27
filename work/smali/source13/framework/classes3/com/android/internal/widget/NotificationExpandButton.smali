.class public Lcom/android/internal/widget/NotificationExpandButton;
.super Landroid/widget/FrameLayout;
.source "NotificationExpandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mDefaultPillColor:I

.field private blacklist mDefaultTextColor:I

.field private blacklist mExpanded:Z

.field private blacklist mHighlightPillColor:I

.field private blacklist mHighlightTextColor:I

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mNumber:I

.field private blacklist mNumberView:Landroid/widget/TextView;

.field private blacklist mPillView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method private blacklist shouldShowNumber()Z
    .registers 3

    .line 177
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private blacklist updateColors()V
    .registers 3

    .line 157
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 158
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    if-eqz v0, :cond_13

    .line 159
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 161
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 162
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    if-eqz v0, :cond_41

    .line 163
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_41

    .line 166
    :cond_24
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    if-eqz v0, :cond_31

    .line 167
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 169
    :cond_31
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 170
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    if-eqz v0, :cond_41

    .line 171
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :cond_41
    :goto_41
    return-void
.end method

.method private blacklist updateExpandedState()V
    .registers 5

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_b

    .line 128
    const v0, 0x108037b

    .line 129
    .local v0, "drawableId":I
    const v1, 0x1040393

    .local v1, "contentDescriptionId":I
    goto :goto_11

    .line 131
    .end local v0    # "drawableId":I
    .end local v1    # "contentDescriptionId":I
    :cond_b
    const v0, 0x10803b6

    .line 132
    .restart local v0    # "drawableId":I
    const v1, 0x1040392

    .line 134
    .restart local v1    # "contentDescriptionId":I
    :goto_11
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 139
    return-void
.end method

.method private blacklist updateNumber()V
    .registers 6

    .line 142
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 143
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_24

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040958

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0x63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 145
    :cond_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    nop

    .line 146
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    .end local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_4b

    .line 149
    :cond_44
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_4b
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 154
    return-void
.end method


# virtual methods
.method public blacklist getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202c4

    if-ne v1, v2, :cond_15

    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_18

    .line 91
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 93
    :goto_18
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 76
    const v0, 0x10202c3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    .line 77
    const v0, 0x10202c2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    .line 78
    const v0, 0x10202c1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    .line 79
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 111
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 112
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public blacklist pointInView(FFF)Z
    .registers 7
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202c4

    if-ne v1, v2, :cond_13

    .line 104
    const/4 v1, 0x1

    return v1

    .line 106
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v1

    return v1
.end method

.method public blacklist setDefaultPillColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 194
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    .line 195
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 196
    return-void
.end method

.method public blacklist setDefaultTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 185
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    .line 186
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 187
    return-void
.end method

.method public blacklist setExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 120
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    .line 121
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateExpandedState()V

    .line 122
    return-void
.end method

.method public blacklist setHighlightPillColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 212
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    .line 213
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 214
    return-void
.end method

.method public blacklist setHighlightTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 203
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    .line 204
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 205
    return-void
.end method

.method public blacklist setNumber(I)V
    .registers 3
    .param p1, "number"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 222
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-eq v0, p1, :cond_9

    .line 223
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    .line 224
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 226
    :cond_9
    return-void
.end method
