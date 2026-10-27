.class Landroid/media/Cea608CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final greylist-max-o mDisplayChars:Ljava/lang/StringBuilder;

.field private final greylist-max-o mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

.field private final greylist-max-o mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 666
    iget-object p1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [Landroid/media/Cea608CCParser$StyleCode;

    iput-object p1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 667
    iget-object p1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [Landroid/media/Cea608CCParser$StyleCode;

    iput-object p1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 668
    return-void
.end method


# virtual methods
.method greylist-max-o applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V
    .registers 8

    .line 695
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isItalics()Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_11

    .line 696
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 700
    :cond_11
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isUnderline()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 701
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 705
    :cond_1f
    return-void
.end method

.method greylist-max-o charAt(I)C
    .registers 3

    .line 685
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method greylist-max-o getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .registers 12

    .line 708
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 709
    nop

    .line 710
    nop

    .line 711
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    move v5, v4

    move-object v6, v3

    .line 712
    :goto_f
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_7f

    .line 713
    nop

    .line 714
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v7, v7, v2

    if-eqz v7, :cond_23

    .line 716
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v7, v7, v2

    goto :goto_33

    .line 717
    :cond_23
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v7, v7, v2

    if-eqz v7, :cond_32

    if-ltz v4, :cond_2d

    if-gez v5, :cond_32

    .line 722
    :cond_2d
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v7, v7, v2

    goto :goto_33

    .line 724
    :cond_32
    move-object v7, v3

    :goto_33
    if-eqz v7, :cond_3f

    .line 725
    nop

    .line 726
    if-ltz v4, :cond_3d

    if-ltz v5, :cond_3d

    .line 727
    invoke-virtual {p0, v0, v7, v4, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    .line 729
    :cond_3d
    move v4, v2

    move-object v6, v7

    .line 732
    :cond_3f
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_4d

    .line 733
    if-gez v5, :cond_7c

    .line 734
    move v5, v2

    goto :goto_7c

    .line 736
    :cond_4d
    if-ltz v5, :cond_7c

    .line 737
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5a

    goto :goto_5c

    :cond_5a
    add-int/lit8 v5, v5, -0x1

    .line 738
    :goto_5c
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_68

    move v7, v2

    goto :goto_6a

    :cond_68
    add-int/lit8 v7, v2, 0x1

    .line 739
    :goto_6a
    new-instance v8, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v0, v8, v5, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 743
    if-ltz v4, :cond_7b

    .line 744
    invoke-virtual {p0, v0, v6, v4, v7}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    .line 746
    :cond_7b
    move v5, v1

    .line 748
    :cond_7c
    :goto_7c
    add-int/lit8 v2, v2, 0x1

    .line 749
    goto :goto_f

    .line 751
    :cond_7f
    return-object v0
.end method

.method greylist-max-o length()I
    .registers 2

    .line 689
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method greylist-max-o setCharAt(IC)V
    .registers 4

    .line 671
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 672
    iget-object p2, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    const/4 v0, 0x0

    aput-object v0, p2, p1

    .line 673
    return-void
.end method

.method greylist-max-o setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V
    .registers 5

    .line 676
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 677
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 678
    return-void
.end method

.method greylist-max-o setPACAt(ILandroid/media/Cea608CCParser$PAC;)V
    .registers 4

    .line 681
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 682
    return-void
.end method
