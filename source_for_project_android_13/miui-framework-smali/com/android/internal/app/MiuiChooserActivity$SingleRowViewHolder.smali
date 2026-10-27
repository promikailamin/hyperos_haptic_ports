.class Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;
.super Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleRowViewHolder"
.end annotation


# instance fields
.field private final blacklist mRow:Landroid/view/ViewGroup;

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/ViewGroup;II)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "row"    # Landroid/view/ViewGroup;
    .param p3, "cellCount"    # I
    .param p4, "viewType"    # I

    .line 4093
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4094
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;-><init>(Lcom/android/internal/app/MiuiChooserActivity;ILandroid/view/View;I)V

    .line 4096
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 4097
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 4113
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4114
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 4116
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 4108
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    .line 4109
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "index"    # I

    .line 4104
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 4100
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist setViewVisibility(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 4120
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4121
    return-void
.end method
