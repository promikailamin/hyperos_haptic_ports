.class final Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;
.super Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ItemViewHolder"
.end annotation


# instance fields
.field blacklist mListPosition:I

.field blacklist mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;ZI)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "isClickable"    # Z
    .param p4, "viewType"    # I

    .line 3392
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3393
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;I)V

    .line 3390
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->mListPosition:I

    .line 3394
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 3395
    if-eqz p3, :cond_19

    .line 3396
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3414
    :cond_19
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 3402
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->mListPosition:I

    .line 3403
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 3406
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v1, v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_1b

    .line 3407
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v1, v3}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$mshowTargetDetails(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 3409
    :cond_1b
    return v2
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-android-internal-app-MiuiChooserActivity$ItemViewHolder(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 3396
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;->mListPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity;->startSelected(IZZ)V

    return-void
.end method
