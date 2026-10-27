.class Landroid/media/Cea608CCParser$PAC;
.super Landroid/media/Cea608CCParser$StyleCode;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PAC"
.end annotation


# instance fields
.field final greylist-max-o mCol:I

.field final greylist-max-o mRow:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 5

    .line 603
    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    .line 604
    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    .line 605
    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    .line 606
    return-void
.end method

.method static greylist-max-o fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .registers 6

    .line 579
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    .line 580
    const/4 v1, 0x7

    and-int/2addr p0, v1

    aget p0, v0, p0

    and-int/lit8 v0, p1, 0x20

    shr-int/lit8 v0, v0, 0x5

    add-int/2addr p0, v0

    .line 581
    nop

    .line 582
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 583
    const/4 v0, 0x2

    goto :goto_19

    .line 582
    :cond_18
    move v0, v2

    .line 585
    :goto_19
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_28

    .line 587
    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    .line 588
    new-instance v1, Landroid/media/Cea608CCParser$PAC;

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {v1, p0, p1, v0, v2}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v1

    .line 591
    :cond_28
    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    .line 593
    if-ne p1, v1, :cond_31

    .line 595
    nop

    .line 596
    or-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 593
    :cond_31
    move v2, p1

    .line 598
    :goto_32
    new-instance p1, Landroid/media/Cea608CCParser$PAC;

    const/4 v1, -0x1

    invoke-direct {p1, p0, v1, v0, v2}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object p1

    nop

    :array_3a
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method greylist-max-o getCol()I
    .registers 2

    .line 617
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return v0
.end method

.method greylist-max-o getRow()I
    .registers 2

    .line 613
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    return v0
.end method

.method greylist-max-o isIndentPAC()Z
    .registers 2

    .line 609
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 622
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    .line 623
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 622
    const-string v1, "{%d, %d}, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
