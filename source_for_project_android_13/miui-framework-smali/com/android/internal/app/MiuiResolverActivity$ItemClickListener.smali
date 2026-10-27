.class public Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "MiuiResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickListener"
.end annotation


# instance fields
.field private blacklist start:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiResolverActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/MiuiResolverActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiResolverActivity;

    .line 2484
    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2485
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/MiuiResolverActivity;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiResolverActivity;
    .param p2, "page"    # I

    .line 2480
    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2481
    add-int/lit8 v0, p2, -0x1

    iget-object v1, p1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->getMaxPerScreen()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->start:I

    .line 2482
    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2490
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2491
    .local v0, "listView":Landroid/widget/ListView;
    :goto_9
    if-eqz v0, :cond_10

    .line 2492
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 2494
    :cond_10
    if-gez p3, :cond_13

    .line 2496
    return-void

    .line 2522
    :cond_13
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->getRecommendable()Z

    move-result v1

    const-string v2, "MiuiResolverActivity"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6c

    .line 2523
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->getChosenView()Landroid/view/View;

    move-result-object v1

    if-eq v1, p2, :cond_68

    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->getChosenView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 2524
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityStub;->getChosenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 2525
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v1, p2}, Lcom/android/internal/app/ResolverActivityStub;->setChoseView(Landroid/view/View;)V

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    iget v2, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->start:I

    add-int/2addr v2, p3

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivityStub;->setChosenIndex(I)V

    .line 2529
    :cond_68
    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_9c

    .line 2536
    :cond_6c
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiResolverActivity;->-$$Nest$fgetmCustomView(Lcom/android/internal/app/MiuiResolverActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v5, v5, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivityStub;->getAlwaysoptionId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2537
    .local v1, "alwaysOption":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8e

    .line 2538
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8e

    move v3, v4

    goto :goto_8f

    :cond_8e
    nop

    .line 2539
    .local v3, "always":Z
    :goto_8f
    const-string v5, "onItemClick,coming to startSelected"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget v5, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->start:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/app/MiuiResolverActivity;->startSelected(IZZ)V

    .line 2543
    .end local v1    # "alwaysOption":Landroid/widget/CheckBox;
    .end local v3    # "always":Z
    :goto_9c
    return-void
.end method

.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 2547
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2548
    .local v0, "listView":Landroid/widget/ListView;
    :goto_9
    if-eqz v0, :cond_10

    .line 2549
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 2551
    :cond_10
    if-gez p3, :cond_14

    .line 2553
    const/4 v1, 0x0

    return v1

    .line 2558
    :cond_14
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget v2, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->start:I

    add-int/2addr v2, p3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 2561
    .local v1, "target":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v2, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v2, :cond_3d

    .line 2562
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityStub;->isInternationalBuild()Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-boolean v2, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    if-eqz v2, :cond_3d

    .line 2563
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mResolverActivityStubImpl:Lcom/android/internal/app/ResolverActivityStub;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityStub;->showMore()V

    .line 2564
    return v3

    .line 2568
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget v4, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2570
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/MiuiResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 2571
    return v3
.end method
