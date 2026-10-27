.class Lcom/android/internal/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final blacklist ADD:I = 0x1

.field static final blacklist MOVE:I = 0x8

.field static final blacklist POOL_SIZE:I = 0x1e

.field static final blacklist REMOVE:I = 0x2

.field static final blacklist UPDATE:I = 0x4


# instance fields
.field blacklist cmd:I

.field blacklist itemCount:I

.field blacklist payload:Ljava/lang/Object;

.field blacklist positionStart:I


# direct methods
.method constructor blacklist <init>(IIILjava/lang/Object;)V
    .registers 5

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 652
    iput p2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 653
    iput p3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 654
    iput-object p4, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 655
    return-void
.end method


# virtual methods
.method blacklist cmdToString()Ljava/lang/String;
    .registers 2

    .line 658
    iget v0, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_16

    .line 668
    const-string v0, "??"

    return-object v0

    .line 666
    :sswitch_8
    const-string v0, "mv"

    return-object v0

    .line 664
    :sswitch_b
    const-string/jumbo v0, "up"

    return-object v0

    .line 662
    :sswitch_f
    const-string/jumbo v0, "rm"

    return-object v0

    .line 660
    :sswitch_13
    const-string v0, "add"

    return-object v0

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_f
        0x4 -> :sswitch_b
        0x8 -> :sswitch_8
    .end sparse-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 680
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 681
    return v0

    .line 683
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5c

    .line 687
    :cond_12
    check-cast p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 689
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v2, v3, :cond_1b

    .line 690
    return v1

    .line 692
    :cond_1b
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_39

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_39

    .line 694
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v2, v3, :cond_39

    .line 695
    return v0

    .line 698
    :cond_39
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v3, :cond_40

    .line 699
    return v1

    .line 701
    :cond_40
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v2, v3, :cond_47

    .line 702
    return v1

    .line 704
    :cond_47
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_56

    .line 705
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 706
    return v1

    .line 708
    :cond_56
    iget-object p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz p1, :cond_5b

    .line 709
    return v1

    .line 712
    :cond_5b
    return v0

    .line 684
    :cond_5c
    :goto_5c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 717
    iget v0, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 718
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v0, v1

    .line 719
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    .line 720
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    return-object v0
.end method
