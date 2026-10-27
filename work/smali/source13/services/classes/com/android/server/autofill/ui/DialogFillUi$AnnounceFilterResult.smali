.class final Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "DialogFillUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/DialogFillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnounceFilterResult"
.end annotation


# static fields
.field private static final SEARCH_RESULT_ANNOUNCEMENT_DELAY:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    return-void
.end method


# virtual methods
.method public post()V
    .registers 4

    .line 463
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->remove()V

    .line 464
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    return-void
.end method

.method public remove()V
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method

.method public run()V
    .registers 5

    .line 473
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 475
    .local v0, "count":I
    if-gtz v0, :cond_1e

    .line 476
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104019d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    goto :goto_3e

    .line 478
    .end local v1    # "text":Ljava/lang/String;
    :cond_1e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104019e

    invoke-static {v2, v1, v3}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 484
    .local v1, "text":Ljava/lang/String;
    :goto_3e
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method
