.class public Lcom/android/internal/widget/FadingWearableScrollView;
.super Landroid/widget/ScrollView;
.source "FadingWearableScrollView.java"


# instance fields
.field private blacklist mFader:Lcom/android/internal/widget/ViewGroupFader;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/FadingWearableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 34
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FadingWearableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/FadingWearableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/FadingWearableScrollView;->init()V

    .line 45
    return-void
.end method

.method private blacklist createFader(Landroid/view/ViewGroup;)Lcom/android/internal/widget/ViewGroupFader;
    .registers 5

    .line 55
    new-instance v0, Lcom/android/internal/widget/ViewGroupFader;

    new-instance v1, Lcom/android/internal/widget/FadingWearableScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FadingWearableScrollView$1;-><init>(Lcom/android/internal/widget/FadingWearableScrollView;)V

    new-instance v2, Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;

    invoke-direct {v2}, Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;-><init>(Landroid/view/ViewGroup;Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;)V

    return-object v0
.end method

.method private blacklist init()V
    .registers 2

    .line 48
    invoke-direct {p0, p0}, Lcom/android/internal/widget/FadingWearableScrollView;->createFader(Landroid/view/ViewGroup;)Lcom/android/internal/widget/ViewGroupFader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FadingWearableScrollView;->mFader:Lcom/android/internal/widget/ViewGroupFader;

    .line 49
    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 77
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 78
    move-object p1, p0

    iget-object p1, p1, Lcom/android/internal/widget/FadingWearableScrollView;->mFader:Lcom/android/internal/widget/ViewGroupFader;

    invoke-virtual {p1}, Lcom/android/internal/widget/ViewGroupFader;->updateFade()V

    .line 79
    return-void
.end method

.method protected whitelist onScrollChanged(IIII)V
    .registers 5

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 84
    iget-object p1, p0, Lcom/android/internal/widget/FadingWearableScrollView;->mFader:Lcom/android/internal/widget/ViewGroupFader;

    invoke-virtual {p1}, Lcom/android/internal/widget/ViewGroupFader;->updateFade()V

    .line 85
    return-void
.end method
