.class Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "DialogFillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 500
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method static synthetic lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;)Z
    .registers 3
    .param p0, "filterText"    # Ljava/lang/CharSequence;
    .param p1, "item"    # Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    .line 505
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .param p1, "filterText"    # Ljava/lang/CharSequence;

    .line 504
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmAllItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 505
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 506
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 507
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 508
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 510
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 516
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 517
    .local v0, "oldItemCount":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 518
    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v1, :cond_24

    .line 519
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 521
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 524
    .local v1, "resultCountChanged":Z
    :goto_33
    if-eqz v1, :cond_3c

    .line 525
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object v2, v2, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 527
    :cond_3c
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->notifyDataSetChanged()V

    .line 528
    return-void
.end method
