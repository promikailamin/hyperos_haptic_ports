.class public Landroid/widget/AbsListViewStub$ViewBean;
.super Ljava/lang/Object;
.source "AbsListViewStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewBean"
.end annotation


# instance fields
.field blacklist mChildView:Landroid/view/View;

.field blacklist mScrapView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "scrapView"    # Landroid/view/View;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroid/widget/AbsListViewStub$ViewBean;->mChildView:Landroid/view/View;

    .line 21
    iput-object p2, p0, Landroid/widget/AbsListViewStub$ViewBean;->mScrapView:Landroid/view/View;

    .line 22
    return-void
.end method
