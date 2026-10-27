.class public Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# instance fields
.field public final mItems:Ljava/util/List;

.field public final mRecencyMap:[I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    .line 455
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    const/4 p1, 0x0

    .line 456
    :goto_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1d

    .line 457
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_1d
    return-void
.end method

.method public static getSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 2

    if-eqz p1, :cond_b

    .line 563
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Static order:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 570
    :goto_16
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, " item="

    const-string v4, "  i="

    if-ge v1, v2, :cond_48

    .line 571
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 574
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Recency order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 575
    :goto_5c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    array-length v2, v1

    if-ge v0, v2, :cond_89

    .line 576
    aget v1, v1, v0

    .line 577
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_89
    return-void
.end method

.method public final getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)I
    .registers 7

    .line 540
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->getSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p2

    const/4 v0, 0x0

    .line 541
    :goto_5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    if-eqz p3, :cond_14

    .line 542
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aget v1, v1, v0

    goto :goto_15

    :cond_14
    move v1, v0

    .line 543
    :goto_15
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 544
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    if-ne v1, p2, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 12

    .line 478
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 481
    :cond_a
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)I

    move-result v0

    if-gez v0, :cond_43

    .line 483
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Trying to switch away from input method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and subtype "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " which are not in the list, falling back to most recent item in list."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    const/4 p2, 0x0

    aget p0, p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    return-object p0

    :cond_43
    const/4 p2, 0x1

    if-eqz p6, :cond_48

    move p6, p2

    goto :goto_49

    :cond_48
    const/4 p6, -0x1

    .line 491
    :goto_49
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4f
    if-ge p2, v2, :cond_78

    mul-int v3, p2, p6

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 493
    rem-int/2addr v3, v2

    if-eqz p5, :cond_5c

    .line 494
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aget v3, v4, v3

    .line 495
    :cond_5c
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-eqz p3, :cond_6e

    .line 496
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    :cond_6e
    if-eqz p4, :cond_77

    iget-boolean v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSuitableForHardware:Z

    if-nez v4, :cond_77

    :cond_74
    add-int/lit8 p2, p2, 0x1

    goto :goto_4f

    :cond_77
    return-object v3

    :cond_78
    return-object v1
.end method

.method public setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 6

    .line 513
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x1

    .line 517
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)I

    move-result p1

    if-gtz p1, :cond_12

    return v1

    .line 522
    :cond_12
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aget v2, p2, p1

    .line 523
    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aput v2, p0, v1

    return v0
.end method
