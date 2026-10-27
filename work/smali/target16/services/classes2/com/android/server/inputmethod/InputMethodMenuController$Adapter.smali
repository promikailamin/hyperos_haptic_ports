.class public final Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "InputMethodMenuController.java"


# instance fields
.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mItems:Ljava/util/List;

.field public final mListener:Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;

.field public final mSelectedIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILandroid/view/LayoutInflater;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;)V
    .registers 5

    .line 459
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mItems:Ljava/util/List;

    .line 461
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mSelectedIndex:I

    .line 462
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 463
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mListener:Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 510
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 515
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/InputMethodMenuController$MenuItem;

    .line 516
    instance-of p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;

    if-eqz p1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 518
    :cond_e
    instance-of p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HeaderItem;

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    return p0

    .line 520
    :cond_14
    instance-of p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;

    if-eqz p0, :cond_1a

    const/4 p0, 0x2

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    .line 493
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodMenuController$MenuItem;

    .line 494
    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;

    if-eqz v1, :cond_20

    move-object v1, p1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;

    instance-of v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;

    if-eqz v2, :cond_20

    .line 495
    check-cast v0, Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;

    .line 496
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mSelectedIndex:I

    if-ne p2, p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    invoke-virtual {v1, v0, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->bind(Lcom/android/server/inputmethod/InputMethodMenuController$SubtypeItem;Z)V

    return-void

    .line 497
    :cond_20
    instance-of p0, p1, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$HeaderViewHolder;

    if-eqz p0, :cond_31

    move-object p0, p1

    check-cast p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$HeaderViewHolder;

    instance-of p2, v0, Lcom/android/server/inputmethod/InputMethodMenuController$HeaderItem;

    if-eqz p2, :cond_31

    .line 498
    check-cast v0, Lcom/android/server/inputmethod/InputMethodMenuController$HeaderItem;

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$HeaderViewHolder;->bind(Lcom/android/server/inputmethod/InputMethodMenuController$HeaderItem;)V

    return-void

    .line 500
    :cond_31
    instance-of p0, p1, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$DividerViewHolder;

    if-eqz p0, :cond_3a

    instance-of p0, v0, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;

    if-eqz p0, :cond_3a

    return-void

    .line 504
    :cond_3a
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Holder type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match item type: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_3e

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2f

    const/4 v1, 0x2

    if-ne p2, v1, :cond_18

    .line 482
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x1090099

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 485
    new-instance p1, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$DividerViewHolder;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$DividerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 487
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown viewType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :cond_2f
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x109009a

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 479
    new-instance p1, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$HeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 470
    :cond_3e
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090098

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 473
    new-instance p2, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter;->mListener:Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;

    invoke-direct {p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;-><init>(Landroid/view/View;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;)V

    return-object p2
.end method
