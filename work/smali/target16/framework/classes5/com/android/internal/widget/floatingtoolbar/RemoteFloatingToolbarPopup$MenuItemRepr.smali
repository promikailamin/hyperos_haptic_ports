.class final Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;
.super Ljava/lang/Object;
.source "RemoteFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MenuItemRepr"
.end annotation


# instance fields
.field public final blacklist mGroupId:I

.field private final blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field public final blacklist mItemId:I

.field public final blacklist mTitle:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    .line 554
    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    .line 555
    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    .line 556
    iput-object p4, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 557
    return-void
.end method

.method public static blacklist of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;
    .registers 5

    .line 563
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    .line 564
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 565
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 566
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 567
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;-><init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 563
    return-object v0
.end method

.method public static blacklist reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 603
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 604
    return v2

    .line 607
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 608
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 609
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 610
    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    move-result-object v0

    .line 611
    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    move-result-object v1

    .line 610
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 612
    return v2

    .line 614
    :cond_35
    goto :goto_14

    .line 615
    :cond_36
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 583
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 584
    return v0

    .line 586
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 587
    return v2

    .line 589
    :cond_a
    check-cast p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    .line 590
    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    iget v3, p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    if-ne v1, v3, :cond_2d

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    iget v3, p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    .line 592
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 595
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 590
    :goto_2e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 575
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
