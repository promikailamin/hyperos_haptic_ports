.class public final Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist MAX_TARGETS_PER_ROW_PORTRAIT:I = 0x4

.field private static final blacklist NUM_EXPANSIONS_TO_HIDE_AZ_LABEL:I = 0x14

.field private static final blacklist VIEW_TYPE_AZ_LABEL:I = 0x4

.field private static final blacklist VIEW_TYPE_CALLER_AND_RANK:I = 0x5

.field private static final blacklist VIEW_TYPE_CONTENT_PREVIEW:I = 0x2

.field private static final blacklist VIEW_TYPE_DIRECT_SHARE:I = 0x0

.field private static final blacklist VIEW_TYPE_FOOTER:I = 0x6

.field private static final blacklist VIEW_TYPE_NORMAL:I = 0x1

.field private static final blacklist VIEW_TYPE_PROFILE:I = 0x3


# instance fields
.field private blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field private blacklist mChooserTargetWidth:I

.field private blacklist mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

.field private blacklist mFooterHeight:I

.field private blacklist mHideContentPreview:Z

.field private final blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLayoutRequested:Z

.field private blacklist mShowAzLabelIfPoss:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 3536
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3537
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 3516
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 3519
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mHideContentPreview:Z

    .line 3520
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3522
    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 3538
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3539
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 3541
    invoke-static {p1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/MiuiChooserActivity;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    .line 3543
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;-><init>(Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/MiuiChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3556
    return-void
.end method

.method private blacklist canExpandDirectShare()Z
    .registers 2

    .line 4010
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 3784
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x109005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 3749
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3750
    .local v0, "profileRow":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3751
    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080266

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3750
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3752
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const v2, 0x1020451

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/MiuiChooserActivity;->mProfileView:Landroid/view/View;

    .line 3755
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiChooserActivity;->mProfileView:Landroid/view/View;

    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;-><init>(Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3771
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity;->updateProfileViewButton()V

    .line 3772
    return-object v0
.end method

.method private blacklist loadViewsIntoGroup(Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;
    .registers 13
    .param p1, "holder"    # Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;

    .line 3788
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3789
    .local v1, "spec":I
    iget v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3791
    .local v2, "exactSpec":I
    invoke-virtual {p1}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v3

    .line 3793
    .local v3, "columnCount":I
    instance-of v4, p1, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    .line 3795
    .local v4, "isDirectShare":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_4f

    .line 3796
    iget-object v6, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3797
    .local v6, "v":Landroid/view/View;
    move v7, v5

    .line 3818
    .local v7, "column":I
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    .line 3823
    if-eqz v4, :cond_3e

    .line 3824
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 3825
    .local v8, "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 3826
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 3827
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3831
    .end local v8    # "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    :cond_3e
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 3832
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3795
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "column":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3835
    .end local v5    # "i":I
    :cond_4f
    invoke-virtual {p1}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 3838
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->measure()V

    .line 3839
    invoke-virtual {p1}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v7, v6}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3841
    if-eqz v4, :cond_7a

    .line 3842
    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    .line 3843
    .local v6, "dsvh":Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;
    invoke-virtual {v6, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3844
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3847
    .end local v6    # "dsvh":Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;
    :cond_7a
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 3848
    return-object p1
.end method

.method private blacklist setViewBounds(Landroid/view/View;II)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthPx"    # I
    .param p3, "heightPx"    # I

    .line 3852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3853
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_10

    .line 3854
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 3855
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 3857
    :cond_10
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3858
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3860
    :goto_14
    return-void
.end method


# virtual methods
.method blacklist bindItemGroupViewHolder(ILcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;)V
    .registers 19
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;

    .line 3919
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 3920
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v3

    .line 3921
    .local v3, "start":I
    invoke-virtual {v0, v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v4

    .line 3922
    .local v4, "startType":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_29

    if-lez p1, :cond_29

    .line 3923
    iget-object v5, v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3924
    invoke-virtual {v5}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080266

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3923
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3927
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v5

    .line 3928
    .local v5, "columnCount":I
    add-int v6, v3, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 3929
    .local v6, "end":I
    :goto_31
    invoke-virtual {v0, v6}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v8

    if-eq v8, v4, :cond_3c

    if-lt v6, v3, :cond_3c

    .line 3930
    add-int/lit8 v6, v6, -0x1

    goto :goto_31

    .line 3933
    :cond_3c
    const/4 v8, 0x0

    if-ne v6, v3, :cond_b9

    iget-object v9, v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v9, v3}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/app/MiuiChooserActivity$EmptyTargetInfo;

    if-eqz v9, :cond_b9

    .line 3934
    const v9, 0x102024e

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3936
    .local v9, "textView":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_b9

    .line 3937
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3938
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3939
    const v11, 0x1040211

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3941
    const/4 v11, 0x2

    new-array v12, v11, [F

    fill-array-data v12, :array_e0

    const-string v13, "alpha"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 3942
    .local v12, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3944
    iget-object v13, v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v13}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10500a4

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    .line 3946
    .local v13, "translationInPx":F
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3947
    new-array v15, v7, [F

    aput v10, v15, v8

    const-string v10, "translationY"

    invoke-static {v9, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 3949
    .local v10, "translateAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3951
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3952
    .local v14, "animSet":Landroid/animation/AnimatorSet;
    const-wide/16 v7, 0xc8

    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3953
    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3954
    new-array v7, v11, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    const/4 v8, 0x1

    aput-object v10, v7, v8

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3955
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 3959
    .end local v9    # "textView":Landroid/widget/TextView;
    .end local v10    # "translateAnim":Landroid/animation/ValueAnimator;
    .end local v12    # "fadeAnim":Landroid/animation/ValueAnimator;
    .end local v13    # "translationInPx":F
    .end local v14    # "animSet":Landroid/animation/AnimatorSet;
    :cond_b9
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ba
    if-ge v7, v5, :cond_df

    .line 3960
    invoke-virtual {v1, v7}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    .line 3962
    .local v8, "v":Landroid/view/View;
    add-int v9, v3, v7

    if-gt v9, v6, :cond_d7

    .line 3963
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 3964
    add-int v10, v3, v7

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->setItemIndex(II)V

    .line 3965
    iget-object v10, v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1, v7}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_dc

    .line 3967
    :cond_d7
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 3959
    .end local v8    # "v":Landroid/view/View;
    :goto_dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    .line 3970
    .end local v7    # "i":I
    :cond_df
    return-void

    :array_e0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method blacklist bindItemViewHolder(ILcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;

    .line 3912
    iget-object v0, p2, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    .line 3913
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    .line 3914
    .local v1, "listPosition":I
    iput v1, p2, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->mListPosition:I

    .line 3915
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 3916
    return-void
.end method

.method public blacklist calculateChooserTargetWidth(I)Z
    .registers 5
    .param p1, "width"    # I

    .line 3569
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3570
    return v0

    .line 3573
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v1

    div-int v1, p1, v1

    .line 3574
    .local v1, "newWidth":I
    iget v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    if-eq v1, v2, :cond_12

    .line 3575
    iput v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 3576
    const/4 v0, 0x1

    return v0

    .line 3579
    :cond_12
    return v0
.end method

.method public blacklist consumeLayoutRequest()Z
    .registers 3

    .line 3594
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3595
    .local v0, "oldValue":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3596
    return v0
.end method

.method blacklist createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;
    .registers 14
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 3863
    const v0, 0x1090063

    const/4 v1, 0x0

    if-nez p1, :cond_4a

    .line 3864
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090064

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3866
    .local v2, "parentGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    .line 3868
    .local v9, "row1":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3870
    .local v0, "row2":Landroid/view/ViewGroup;
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3871
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3873
    new-instance v10, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    iget-object v4, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/ViewGroup;

    aput-object v9, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 3874
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v7

    move-object v3, v10

    move-object v5, v2

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/ViewGroup;Ljava/util/List;II)V

    iput-object v10, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    .line 3875
    invoke-direct {p0, v10}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;

    .line 3877
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    return-object v1

    .line 3879
    .end local v0    # "row2":Landroid/view/ViewGroup;
    .end local v2    # "parentGroup":Landroid/view/ViewGroup;
    .end local v9    # "row1":Landroid/view/ViewGroup;
    :cond_4a
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3881
    .local v0, "row":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3882
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v3

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/ViewGroup;II)V

    .line 3883
    .local v1, "holder":Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;
    invoke-direct {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;

    .line 3885
    return-object v1
.end method

.method public blacklist getAzLabelRowCount()I
    .registers 2

    .line 3663
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist getCallerAndRankedTargetRowCount()I
    .registers 3

    .line 3646
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3647
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3648
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 3646
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFooterRowCount()I
    .registers 2

    .line 3642
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getItemCount()I
    .registers 3

    .line 3668
    nop

    .line 3669
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 3670
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3671
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3672
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3673
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3674
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3675
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getFooterRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3668
    return v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .line 3724
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    move v1, v0

    .line 3725
    .local v0, "countSum":I
    .local v1, "count":I
    if-lez v1, :cond_b

    if-ge p1, v0, :cond_b

    const/4 v2, 0x2

    return v2

    .line 3727
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3728
    if-lez v1, :cond_17

    if-ge p1, v0, :cond_17

    const/4 v2, 0x3

    return v2

    .line 3730
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3731
    if-lez v1, :cond_23

    if-ge p1, v0, :cond_23

    const/4 v2, 0x0

    return v2

    .line 3733
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3734
    if-lez v1, :cond_2f

    if-ge p1, v0, :cond_2f

    const/4 v2, 0x5

    return v2

    .line 3736
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3737
    if-lez v1, :cond_3b

    if-ge p1, v0, :cond_3b

    const/4 v2, 0x4

    return v2

    .line 3739
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_45

    const/4 v2, 0x6

    return v2

    .line 3741
    :cond_45
    return v3
.end method

.method public blacklist getListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 4014
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object v0
.end method

.method blacklist getListPosition(I)I
    .registers 7
    .param p1, "position"    # I

    .line 3973
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 3975
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    .line 3976
    .local v0, "serviceCount":I
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/MiuiChooserActivity;->getMaxRankedTargets()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 3977
    .local v1, "serviceRows":I
    if-ge p1, v1, :cond_27

    .line 3978
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v2

    mul-int/2addr v2, p1

    return v2

    .line 3981
    :cond_27
    sub-int/2addr p1, v1

    .line 3983
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3984
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 3985
    .local v2, "callerAndRankedCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v3

    .line 3986
    .local v3, "callerAndRankedRows":I
    if-ge p1, v3, :cond_42

    .line 3987
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    return v4

    .line 3990
    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr p1, v4

    .line 3992
    add-int v4, v2, v0

    add-int/2addr v4, p1

    return v4
.end method

.method blacklist getMaxTargetsPerRow()I
    .registers 3

    .line 3776
    const/4 v0, 0x4

    .line 3777
    .local v0, "maxTargets":I
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmShouldDisplayLandscape(Lcom/android/internal/app/MiuiChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3778
    const/16 v0, 0x8

    .line 3780
    :cond_b
    return v0
.end method

.method public blacklist getProfileRowCount()I
    .registers 3

    .line 3635
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3636
    return v1

    .line 3638
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public blacklist getRowCount()I
    .registers 5

    .line 3600
    nop

    .line 3601
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 3602
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3603
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3604
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3605
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3607
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    int-to-float v2, v2

    .line 3608
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 3606
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 3600
    return v0
.end method

.method blacklist getRowType(I)I
    .registers 5
    .param p1, "rowPosition"    # I

    .line 3897
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    .line 3898
    .local v0, "positionType":I
    const/4 v1, 0x2

    if-nez v0, :cond_a

    .line 3899
    return v1

    .line 3904
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 3905
    return v1

    .line 3908
    :cond_14
    return v0
.end method

.method public blacklist getServiceTargetRowCount()I
    .registers 3

    .line 3654
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3655
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3656
    const/4 v0, 0x1

    return v0

    .line 3658
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSystemRowCount()I
    .registers 4

    .line 3619
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3620
    return v1

    .line 3623
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/MiuiChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3624
    return v1

    .line 3627
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_24

    .line 3631
    :cond_22
    const/4 v0, 0x1

    return v0

    .line 3628
    :cond_24
    :goto_24
    return v1
.end method

.method public blacklist getTargetType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 3745
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    return v0
.end method

.method public blacklist handleScroll(Landroid/view/View;II)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "oldy"    # I

    .line 3996
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    .line 3997
    .local v0, "canExpandDirectShare":Z
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 3998
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3999
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v2

    .line 4000
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v3

    .line 3998
    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->handleScroll(Lcom/android/internal/widget/RecyclerView;III)V

    .line 4002
    :cond_19
    return-void
.end method

.method public blacklist hideContentPreview()V
    .registers 2

    .line 3588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mHideContentPreview:Z

    .line 3589
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3590
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3591
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 3707
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;->getViewType()I

    move-result v0

    .line 3708
    .local v0, "viewType":I
    sparse-switch v0, :sswitch_data_1a

    goto :goto_19

    .line 3714
    :sswitch_b
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->bindItemViewHolder(ILcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;)V

    .line 3715
    goto :goto_19

    .line 3711
    :sswitch_12
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->bindItemGroupViewHolder(ILcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;)V

    .line 3712
    nop

    .line 3718
    :goto_19
    return-void

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_b
        0x5 -> :sswitch_12
    .end sparse-switch
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 3681
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_5a

    .line 3701
    const/4 v0, 0x0

    return-object v0

    .line 3695
    :pswitch_6
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 3696
    .local v0, "sp":Landroid/widget/Space;
    new-instance v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3698
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$FooterViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-direct {v1, v2, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity$FooterViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;I)V

    return-object v1

    .line 3687
    .end local v0    # "sp":Landroid/widget/Space;
    :pswitch_22
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 3685
    :pswitch_2e
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 3683
    :pswitch_3a
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v2, p1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$mcreateContentPreviewView(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 3689
    :pswitch_46
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3690
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;ZI)V

    .line 3689
    return-object v0

    .line 3693
    :pswitch_55
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_55
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_22
        :pswitch_55
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist setFooterHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 3559
    iput p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 3560
    return-void
.end method

.method blacklist shouldCellSpan(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 4018
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method blacklist updateDirectShareExpansion()V
    .registers 3

    .line 4022
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_29

    .line 4025
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 4026
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 4027
    .local v0, "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4028
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->collapse(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_28

    .line 4030
    :cond_23
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->expand(Lcom/android/internal/widget/RecyclerView;)V

    .line 4032
    :goto_28
    return-void

    .line 4023
    .end local v0    # "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    :cond_29
    :goto_29
    return-void
.end method
