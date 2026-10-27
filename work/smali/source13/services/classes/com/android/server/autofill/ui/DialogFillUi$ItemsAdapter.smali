.class final Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogFillUi.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/DialogFillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemsAdapter"
.end annotation


# instance fields
.field private final mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilteredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 491
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    .line 495
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 496
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .line 500
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;
    .registers 3
    .param p1, "position"    # I

    .line 539
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 544
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemsAdapter: [all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filtered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
