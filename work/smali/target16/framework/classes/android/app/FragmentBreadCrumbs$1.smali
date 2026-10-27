.class Landroid/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/FragmentBreadCrumbs;


# direct methods
.method constructor blacklist <init>(Landroid/app/FragmentBreadCrumbs;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/FragmentManager$BackStackEntry;

    if-eqz v0, :cond_66

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    .line 363
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_26

    .line 364
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v0}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmParentClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 365
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v0}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmParentClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_66

    .line 368
    :cond_26
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {p1}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 369
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {p1}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object p1

    .line 370
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v2, v2, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v2, :cond_3d

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3d
    move-object v2, v0

    .line 369
    :goto_3e
    invoke-interface {p1, v2, v1}, Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 371
    return-void

    .line 374
    :cond_45
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object p1, p1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, p1, :cond_57

    .line 376
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object p1, p1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_66

    .line 378
    :cond_57
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object p1, p1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 382
    :cond_66
    :goto_66
    return-void
.end method
