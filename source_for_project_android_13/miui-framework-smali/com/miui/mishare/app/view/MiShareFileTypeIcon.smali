.class public Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
.super Landroid/widget/FrameLayout;
.source "MiShareFileTypeIcon.java"


# instance fields
.field private blacklist mBottomView:Landroid/widget/ImageView;

.field private blacklist mTopView:Landroid/widget/ImageView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->initView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private blacklist initView(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c0046

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    const v0, 0x110a0072

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    .line 34
    const v0, 0x110a006b

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist setFileTypes(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/16 v0, 0x8

    if-eqz p1, :cond_70

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_70

    .line 42
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_34

    .line 43
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 44
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "ext":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconResId(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .end local v0    # "ext":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_6f

    .line 48
    :cond_34
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "extFirst":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconResId(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "extSecond":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconResId(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    .end local v0    # "extFirst":Ljava/lang/String;
    .end local v1    # "extSecond":Ljava/lang/String;
    :goto_6f
    return-void

    .line 39
    :cond_70
    :goto_70
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 59
    const/16 v0, 0x8

    if-nez p1, :cond_8

    .line 60
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setVisibility(I)V

    .line 61
    return-void

    .line 63
    :cond_8
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    return-void
.end method
