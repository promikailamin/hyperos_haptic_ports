.class Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderBase"
.end annotation


# instance fields
.field private blacklist mViewType:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .line 3371
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3372
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3373
    iput p3, p0, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;->mViewType:I

    .line 3374
    return-void
.end method


# virtual methods
.method blacklist getViewType()I
    .registers 2

    .line 3377
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;->mViewType:I

    return v0
.end method
