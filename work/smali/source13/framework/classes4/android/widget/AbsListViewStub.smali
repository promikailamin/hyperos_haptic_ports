.class public interface abstract Landroid/widget/AbsListViewStub;
.super Ljava/lang/Object;
.source "AbsListViewStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewStub$ViewBean;
    }
.end annotation


# direct methods
.method public static blacklist newInstance()Landroid/widget/AbsListViewStub;
    .registers 1

    .line 26
    const-class v0, Landroid/widget/AbsListViewStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListViewStub;

    return-object v0
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "directView"    # Landroid/view/View;

    .line 87
    invoke-interface {p0, p1, p2, p2}, Landroid/widget/AbsListViewStub;->addView(ILandroid/view/View;Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public blacklist addView(ILandroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "directView"    # Landroid/view/View;
    .param p3, "scrapView"    # Landroid/view/View;

    .line 76
    return-void
.end method

.method public blacklist clearCache()V
    .registers 1

    .line 96
    return-void
.end method

.method public blacklist getAbsListView()Landroid/widget/AbsListView;
    .registers 2

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrefetchEnableState()Z
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getView(I)Landroid/widget/AbsListViewStub$ViewBean;
    .registers 3
    .param p1, "position"    # I

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasL1CacheInfo(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .line 31
    return-void
.end method

.method public blacklist postFromTraversal(I)V
    .registers 2
    .param p1, "deltaY"    # I

    .line 105
    return-void
.end method
