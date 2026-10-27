.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Height"
.end annotation


# static fields
.field private static greylist-max-o sProportion:F


# instance fields
.field private greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 530
    const/4 v0, 0x0

    sput v0, Landroid/content/res/StringBlock$Height;->sProportion:F

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    .line 534
    return-void
.end method


# virtual methods
.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 15

    .line 540
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 541
    return-void
.end method

.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8

    .line 546
    iget p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    .line 547
    if-eqz p7, :cond_9

    .line 548
    int-to-float p1, p1

    iget p2, p7, Landroid/text/TextPaint;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 551
    :cond_9
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, p3

    if-ge p2, p1, :cond_1b

    .line 552
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 553
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_78

    .line 555
    :cond_1b
    sget p2, Landroid/content/res/StringBlock$Height;->sProportion:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 p3, 0x0

    if-nez p2, :cond_42

    .line 563
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 564
    const/high16 p4, 0x42c80000    # 100.0f

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 565
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 566
    const-string p5, "ABCDEFG"

    const/4 p7, 0x7

    invoke-virtual {p2, p5, p3, p7, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 568
    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    div-float/2addr p4, p2

    sput p4, Landroid/content/res/StringBlock$Height;->sProportion:F

    .line 571
    :cond_42
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p2, p2

    int-to-float p2, p2

    sget p4, Landroid/content/res/StringBlock$Height;->sProportion:F

    mul-float/2addr p2, p4

    float-to-double p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p2, p4

    .line 573
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int p4, p1, p4

    if-lt p4, p2, :cond_60

    .line 578
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 579
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_78

    .line 580
    :cond_60
    if-lt p1, p2, :cond_6f

    .line 586
    neg-int p2, p2

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 587
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_78

    .line 593
    :cond_6f
    neg-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 594
    iput p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 597
    :goto_78
    return-void
.end method
