.class public final Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "InputMethodMenuController.java"


# instance fields
.field public final mCheckmark:Landroid/widget/ImageView;

.field public final mContainer:Landroid/view/View;

.field public mIsSelected:Z

.field public mItem:Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;

.field public final mLayout:Landroid/widget/TextView;

.field public final mName:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Bbgf4baNU-DW1AqIsNaf0EnKTzA(Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->lambda$new$0(Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;)V
    .registers 4

    .line 549
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 551
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    const v0, 0x1020578

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1020015

    .line 553
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mLayout:Landroid/widget/TextView;

    const v0, 0x1020369

    .line 554
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mCheckmark:Landroid/widget/ImageView;

    .line 556
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;Z)V
    .registers 6

    .line 570
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mItem:Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;

    .line 571
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mIsSelected:Z

    .line 573
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;->mImeName:Ljava/lang/CharSequence;

    goto :goto_11

    :cond_f
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 575
    :goto_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 577
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 580
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mLayout:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;->-$$Nest$fgetmLayoutName(Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mLayout:Landroid/widget/TextView;

    .line 583
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;->-$$Nest$fgetmLayoutName(Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_3f

    move p1, v2

    goto :goto_40

    :cond_3f
    move p1, v1

    .line 582
    :goto_40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mCheckmark:Landroid/widget/ImageView;

    if-eqz p2, :cond_48

    move v1, v2

    :cond_48
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 557
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mItem:Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;

    if-eqz p2, :cond_9

    .line 558
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->mIsSelected:Z

    invoke-interface {p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;->onClick(Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;Z)V

    :cond_9
    return-void
.end method
