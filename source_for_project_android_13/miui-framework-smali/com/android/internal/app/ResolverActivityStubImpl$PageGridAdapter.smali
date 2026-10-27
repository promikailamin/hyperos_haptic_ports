.class final Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/internal/app/chooser/TargetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivityStubImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl;Landroid/content/Context;I)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "page"    # I

    .line 533
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 535
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    .line 536
    .local v0, "count":I
    add-int/lit8 v1, p3, -0x1

    iget v2, p1, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    mul-int/2addr v1, v2

    .line 537
    .local v1, "start":I
    iget v2, p1, Lcom/android/internal/app/ResolverActivityStubImpl;->mMaxPerScreen:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 538
    .local v2, "end":I
    move v3, v1

    .local v3, "i":I
    :goto_1d
    if-gt v3, v2, :cond_2d

    .line 539
    iget-boolean v4, p1, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    .line 540
    iget-object v4, p1, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->add(Ljava/lang/Object;)V

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 542
    .end local v3    # "i":I
    :cond_2d
    return-void
.end method

.method private final blacklist bindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;

    .line 585
    .local v0, "holder":Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    if-nez p2, :cond_22

    .line 587
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivityStubImpl;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10807c2

    .line 588
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 587
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    return-void

    .line 591
    :cond_22
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmRecommendFirstItem(Lcom/android/internal/app/ResolverActivityStubImpl;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    if-nez p3, :cond_63

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v1, v1, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-nez v1, :cond_63

    .line 592
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivityStubImpl;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x110f0319

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 594
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v8}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivityStubImpl;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x110f0310

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 592
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 597
    :cond_63
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :goto_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindView: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ResolverActivityStubImpl"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_a4

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 602
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 603
    new-instance v1, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    move-object v5, p2

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v1, v4, p0, v5}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    new-array v4, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 605
    :cond_a4
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v1, :cond_da

    .line 607
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 608
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_d5

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v4, v4, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-nez v4, :cond_d5

    .line 609
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_da

    .line 613
    :cond_d5
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    .end local v1    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_da
    :goto_da
    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 547
    if-nez p2, :cond_be

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, "view":Landroid/view/View;
    const v1, 0x110a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MaskLayout;

    .line 552
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivityStubImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_39

    .line 553
    :cond_33
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmMaskColor(Lcom/android/internal/app/ResolverActivityStubImpl;)I

    move-result v2

    .line 552
    :goto_39
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MaskLayout;->setMaskColor(I)V

    .line 554
    new-instance v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;-><init>(Landroid/view/View;)V

    .line 555
    .local v1, "holder":Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmRecommendFirstItem(Lcom/android/internal/app/ResolverActivityStubImpl;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-nez v2, :cond_60

    .line 556
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 557
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 558
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 560
    :cond_60
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    if-eqz v2, :cond_87

    .line 561
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 562
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 563
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivityStubImpl;->mRecommendable:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 565
    :cond_87
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 566
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivityStubImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1106006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 571
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 572
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmIconSize(Lcom/android/internal/app/ResolverActivityStubImpl;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 573
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    .end local v1    # "holder":Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_bf

    .line 575
    .end local v0    # "view":Landroid/view/View;
    :cond_be
    move-object v0, p2

    .line 577
    .restart local v0    # "view":Landroid/view/View;
    :goto_bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverActivityStubImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$PageGridAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 579
    return-object v0
.end method
