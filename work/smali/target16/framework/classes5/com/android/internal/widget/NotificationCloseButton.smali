.class public Lcom/android/internal/widget/NotificationCloseButton;
.super Landroid/widget/ImageView;
.source "NotificationCloseButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mForegroundColor:I

.field private blacklist mPillDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method private blacklist updateColors()V
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mBackgroundColor:I

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mPillDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/NotificationCloseButton;->mBackgroundColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mForegroundColor:I

    if-eqz v0, :cond_1c

    .line 93
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mForegroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCloseButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 95
    :cond_1c
    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .registers 3

    .line 67
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mContext:Landroid/content/Context;

    const v1, 0x104020e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCloseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationCloseButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 71
    const v1, 0x1020286

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mPillDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 75
    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x8

    :goto_2f
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCloseButton;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 80
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 81
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 111
    iput p1, p0, Lcom/android/internal/widget/NotificationCloseButton;->mBackgroundColor:I

    .line 112
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationCloseButton;->updateColors()V

    .line 113
    return-void
.end method

.method public blacklist setForegroundColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 102
    iput p1, p0, Lcom/android/internal/widget/NotificationCloseButton;->mForegroundColor:I

    .line 103
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationCloseButton;->updateColors()V

    .line 104
    return-void
.end method
