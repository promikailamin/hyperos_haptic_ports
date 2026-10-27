.class abstract Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;
.super Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ItemGroupViewHolder"
.end annotation


# instance fields
.field protected final blacklist mCells:[Landroid/view/View;

.field private final blacklist mColumnCount:I

.field private blacklist mItemIndices:[I

.field protected blacklist mMeasuredRowHeight:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;ILandroid/view/View;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "cellCount"    # I
    .param p3, "itemView"    # Landroid/view/View;
    .param p4, "viewType"    # I

    .line 4046
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4047
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;I)V

    .line 4048
    new-array v0, p2, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    .line 4049
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    .line 4050
    iput p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    .line 4051
    return-void
.end method


# virtual methods
.method abstract blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public blacklist getColumnCount()I
    .registers 2

    .line 4064
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    return v0
.end method

.method public blacklist getItemIndex(I)I
    .registers 3
    .param p1, "itemIndex"    # I

    .line 4082
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getMeasuredRowHeight()I
    .registers 2

    .line 4074
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return v0
.end method

.method abstract blacklist getRow(I)Landroid/view/ViewGroup;
.end method

.method abstract blacklist getRowByIndex(I)Landroid/view/ViewGroup;
.end method

.method public blacklist getView(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 4086
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method abstract blacklist getViewGroup()Landroid/view/ViewGroup;
.end method

.method public blacklist measure()V
    .registers 3

    .line 4068
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4069
    .local v0, "spec":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 4070
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    .line 4071
    return-void
.end method

.method public blacklist setItemIndex(II)V
    .registers 4
    .param p1, "itemIndex"    # I
    .param p2, "listIndex"    # I

    .line 4078
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aput p2, v0, p1

    .line 4079
    return-void
.end method

.method abstract blacklist setViewVisibility(II)V
.end method
