.class Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field blacklist mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ActionBarView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1593
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public blacklist collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 5

    .line 1686
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/CollapsibleActionView;

    if-eqz p1, :cond_11

    .line 1687
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1690
    :cond_11
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1691
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmUpGoerFive(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1692
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1693
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmDisplayOptions(Lcom/android/internal/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_42

    .line 1694
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1696
    :cond_42
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmDisplayOptions(Lcom/android/internal/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_63

    .line 1697
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTitleLayout(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_5a

    .line 1698
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$minitTitle(Lcom/android/internal/widget/ActionBarView;)V

    goto :goto_63

    .line 1700
    :cond_5a
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTitleLayout(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1703
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1704
    :cond_74
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmSpinner(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmSpinner(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1705
    :cond_85
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmCustomNavView(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmCustomNavView(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1707
    :cond_96
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1709
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmWasHomeEnabled(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 1710
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1711
    invoke-virtual {p2, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1713
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 5

    .line 1656
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1657
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmIcon(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1658
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1659
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    if-eq p1, v0, :cond_3c

    .line 1660
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1662
    :cond_3c
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmUpGoerFive(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eq p1, v0, :cond_5d

    .line 1663
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmUpGoerFive(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1665
    :cond_5d
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1666
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTitleLayout(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTitleLayout(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1667
    :cond_79
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1668
    :cond_8a
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmSpinner(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmSpinner(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1669
    :cond_9b
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmCustomNavView(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmCustomNavView(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    :cond_ac
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$msetHomeButtonEnabled(Lcom/android/internal/widget/ActionBarView;ZZ)V

    .line 1671
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1672
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1674
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object p2, p2, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of p2, p2, Landroid/view/CollapsibleActionView;

    if-eqz p2, :cond_cc

    .line 1675
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object p2, p2, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast p2, Landroid/view/CollapsibleActionView;

    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1678
    :cond_cc
    return p1
.end method

.method public blacklist flagActionItems()Z
    .registers 2

    .line 1650
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 1718
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 2

    .line 1608
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 1600
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_f

    .line 1601
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1603
    :cond_f
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1604
    return-void
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 1646
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 1728
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 1723
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 2

    .line 1641
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1637
    return-void
.end method

.method public blacklist updateMenuView(Z)V
    .registers 6

    .line 1614
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2c

    .line 1615
    nop

    .line 1617
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 1618
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    .line 1619
    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_23

    .line 1620
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1621
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_20

    .line 1622
    nop

    .line 1623
    const/4 v0, 0x1

    goto :goto_23

    .line 1619
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1628
    :cond_23
    :goto_23
    if-nez v0, :cond_2c

    .line 1630
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1633
    :cond_2c
    return-void
.end method
