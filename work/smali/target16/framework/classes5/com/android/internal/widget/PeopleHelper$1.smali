.class Lcom/android/internal/widget/PeopleHelper$1;
.super Landroid/view/ViewOutlineProvider;
.source "PeopleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/PeopleHelper;->getBadgeCutoutOutlineProvider(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewOutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mBase:Landroid/view/View;

.field private blacklist mCutout:Landroid/view/View;

.field final synthetic blacklist val$baseView:Landroid/view/View;

.field final synthetic blacklist val$cutoutView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 327
    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper$1;->val$baseView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/PeopleHelper$1;->val$cutoutView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 328
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper$1;->val$baseView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper$1;->mBase:Landroid/view/View;

    .line 329
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper$1;->val$cutoutView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper$1;->mCutout:Landroid/view/View;

    return-void
.end method

.method private blacklist getBasePath()Landroid/graphics/Path;
    .registers 7

    .line 338
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/android/internal/widget/PeopleHelper$1;->mBase:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/PeopleHelper$1;->mBase:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/PeopleHelper$1;->mBase:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/PeopleHelper$1;->mBase:Landroid/view/View;

    .line 340
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 341
    return-object v0
.end method

.method private blacklist getCutoutPath()Landroid/graphics/Path;
    .registers 7

    .line 346
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/android/internal/widget/PeopleHelper$1;->mCutout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/PeopleHelper$1;->mCutout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/PeopleHelper$1;->mCutout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/PeopleHelper$1;->mCutout:Landroid/view/View;

    .line 348
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 347
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 350
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/internal/widget/PeopleHelper$1;->getBasePath()Landroid/graphics/Path;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 351
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 352
    return-object v1
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    .line 333
    nop

    .line 334
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper$1;->mCutout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    invoke-direct {p0}, Lcom/android/internal/widget/PeopleHelper$1;->getBasePath()Landroid/graphics/Path;

    move-result-object p1

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lcom/android/internal/widget/PeopleHelper$1;->getCutoutPath()Landroid/graphics/Path;

    move-result-object p1

    .line 333
    :goto_14
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 335
    return-void
.end method
