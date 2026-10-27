.class public Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .line 456
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 458
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 459
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 460
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 461
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/util/List;ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 466
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_d

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_d
    nop

    .line 468
    .local v0, "view":Landroid/view/View;
    if-ltz p1, :cond_8b

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1a

    goto/16 :goto_8b

    .line 469
    :cond_1a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 470
    .local v8, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v9, v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 471
    .local v9, "imeName":Ljava/lang/CharSequence;
    iget-object v10, v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 473
    .local v10, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isSupportedCustomizedDialog()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 474
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 475
    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move v5, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->updateItemView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/view/ViewGroup;)V

    goto :goto_7c

    .line 478
    :cond_40
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 479
    .local v1, "firstTextView":Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 480
    .local v2, "secondTextView":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_62

    .line 481
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6b

    .line 484
    :cond_62
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :goto_6b
    const v3, 0x102045e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 489
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v5, :cond_79

    const/4 v4, 0x1

    :cond_79
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 491
    .end local v1    # "firstTextView":Landroid/widget/TextView;
    .end local v2    # "secondTextView":Landroid/widget/TextView;
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :goto_7c
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 492
    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move v5, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->updateItemView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/view/ViewGroup;)V

    .line 494
    return-object v0

    .line 468
    .end local v8    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v9    # "imeName":Ljava/lang/CharSequence;
    .end local v10    # "subtypeName":Ljava/lang/CharSequence;
    :cond_8b
    :goto_8b
    return-object v0
.end method
