.class Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;
.super Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectShareViewHolder"
.end annotation


# instance fields
.field private blacklist mCellCountPerRow:I

.field private final blacklist mCellVisibility:[Z

.field private blacklist mDirectShareCurrHeight:I

.field private blacklist mDirectShareMaxHeight:I

.field private blacklist mDirectShareMinHeight:I

.field private blacklist mHideDirectShareExpansion:Z

.field private final blacklist mParent:Landroid/view/ViewGroup;

.field private final blacklist mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/ViewGroup;Ljava/util/List;II)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p4, "cellCountPerRow"    # I
    .param p5, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;II)V"
        }
    .end annotation

    .line 4137
    .local p3, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4138
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p4

    invoke-direct {p0, p1, v0, p2, p5}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;ILandroid/view/View;I)V

    .line 4129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 4130
    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 4131
    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 4132
    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 4140
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 4141
    iput-object p3, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    .line 4142
    iput p4, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    .line 4143
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    .line 4144
    return-void
.end method

.method private blacklist updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 14
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "yDiff"    # I
    .param p3, "newHeight"    # I

    .line 4247
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_b

    goto :goto_67

    .line 4252
    :cond_b
    const/4 v0, 0x0

    .line 4253
    .local v0, "foundExpansion":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 4254
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4256
    .local v2, "child":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 4257
    invoke-virtual {v2, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_5f

    .line 4259
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;

    if-eqz v3, :cond_5f

    .line 4260
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 4262
    .local v3, "widthSpec":I
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 4264
    .local v4, "heightSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 4265
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4266
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 4267
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 4266
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4269
    const/4 v0, 0x1

    .line 4253
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 4274
    .end local v1    # "i":I
    :cond_62
    if-eqz v0, :cond_66

    .line 4275
    iput p3, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 4277
    :cond_66
    return-void

    .line 4248
    .end local v0    # "foundExpansion":Z
    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 4147
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 4148
    .local v0, "row":Landroid/view/ViewGroup;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4149
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v1, p1

    .line 4151
    return-object v0
.end method

.method blacklist collapse(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 4242
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4244
    return-void
.end method

.method blacklist expand(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 4237
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iget v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4239
    return-void
.end method

.method public blacklist getMeasuredRowHeight()I
    .registers 2

    .line 4178
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    return v0
.end method

.method public blacklist getMinRowHeight()I
    .registers 2

    .line 4182
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    return v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 4163
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I

    .line 4159
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 4155
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist handleScroll(Lcom/android/internal/widget/RecyclerView;III)V
    .registers 10
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "y"    # I
    .param p3, "oldy"    # I
    .param p4, "maxTargetsPerRow"    # I

    .line 4209
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 4210
    .local v0, "notExpanded":Z
    :goto_a
    if-eqz v0, :cond_22

    .line 4211
    iget-boolean v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    if-eqz v1, :cond_11

    .line 4212
    return-void

    .line 4217
    :cond_11
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 4218
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 4219
    .local v1, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v3

    .line 4220
    .local v3, "validTargets":I
    if-gt v3, p4, :cond_22

    .line 4221
    iput-boolean v2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 4222
    return-void

    .line 4226
    .end local v1    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    .end local v3    # "validTargets":I
    :cond_22
    sub-int v1, p3, p2

    int-to-float v1, v1

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 4228
    .local v1, "yDiff":I
    iget v2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 4229
    .local v2, "prevHeight":I
    add-int v3, v2, v1

    iget v4, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4230
    .local v3, "newHeight":I
    iget v4, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4231
    sub-int v1, v3, v2

    .line 4233
    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4234
    return-void
.end method

.method public blacklist measure()V
    .registers 4

    .line 4167
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4168
    .local v1, "spec":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 4169
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 4171
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 4172
    iget v2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    if-lez v2, :cond_23

    .line 4173
    goto :goto_24

    :cond_23
    move v2, v0

    :goto_24
    iput v2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 4174
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 4175
    return-void
.end method

.method public blacklist setViewVisibility(II)V
    .registers 8
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 4186
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 4187
    .local v0, "v":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_14

    .line 4188
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 4189
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4190
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_44

    .line 4191
    :cond_14
    const/4 v2, 0x4

    if-ne p2, v2, :cond_44

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    aget-boolean v3, v2, p1

    if-eqz v3, :cond_44

    .line 4192
    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 4194
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_46

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4195
    .local v2, "fadeAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4196
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4197
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder$1;-><init>(Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4202
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 4204
    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    :cond_44
    :goto_44
    return-void

    nop

    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
