.class Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;
.super Ljava/lang/Object;
.source "DialogFillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/DialogFillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewItem"
.end annotation


# instance fields
.field public final dataset:Landroid/service/autofill/Dataset;

.field public final filter:Ljava/util/regex/Pattern;

.field public final filterable:Z

.field public final value:Ljava/lang/String;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V
    .registers 6
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "filter"    # Ljava/util/regex/Pattern;
    .param p3, "filterable"    # Z
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "view"    # Landroid/view/View;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 583
    iput-object p4, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->value:Ljava/lang/String;

    .line 584
    iput-object p5, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->view:Landroid/view/View;

    .line 585
    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 586
    iput-boolean p3, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filterable:Z

    .line 587
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "filterText"    # Ljava/lang/CharSequence;

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 596
    return v1

    .line 598
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filterable:Z

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 600
    return v2

    .line 602
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_23

    .line 605
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    .line 608
    :cond_23
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->value:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 609
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-nez v3, :cond_30

    goto :goto_3a

    :cond_30
    move v1, v2

    goto :goto_3a

    .line 610
    :cond_32
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 608
    :goto_3a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewItem:[view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->view:Landroid/view/View;

    .line 617
    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "datasetId":Ljava/lang/String;
    :goto_1b
    if-eqz v1, :cond_26

    .line 620
    const-string v2, ", dataset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_26
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->value:Ljava/lang/String;

    const-string v3, "_chars"

    if-eqz v2, :cond_3f

    .line 624
    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_3f
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filterable:Z

    if-eqz v2, :cond_48

    .line 627
    const-string v2, ", filterable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_48
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_63

    .line 631
    const-string v2, ", filter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_63
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
