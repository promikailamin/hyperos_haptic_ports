.class Landroid/media/Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCWindowLayout"
.end annotation


# static fields
.field private static final greylist-max-o ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final greylist-max-o ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final greylist-max-o ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final greylist-max-o ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final greylist-max-o ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final greylist-max-o ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final greylist-max-o ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final greylist-max-o ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final greylist-max-o ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final greylist-max-o ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final greylist-max-o MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final greylist-max-o PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final greylist-max-o PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final greylist-max-o mBuilder:Landroid/text/SpannableStringBuilder;

.field private greylist-max-o mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private greylist-max-o mCCView:Landroid/media/Cea708CCWidget$CCView;

.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private greylist-max-o mCaptionWindowId:I

.field private final greylist-max-o mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFontScale:F

.field private greylist-max-o mLastCaptionLayoutHeight:I

.field private greylist-max-o mLastCaptionLayoutWidth:I

.field private greylist-max-o mRow:I

.field private greylist-max-o mRowLimit:I

.field private greylist-max-o mTextSize:F

.field private greylist-max-o mWidestChar:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 1694
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1695
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1698
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1699
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 1702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1703
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 1707
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1682
    const/4 p2, 0x0

    iput p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 1683
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1684
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 1686
    const/4 p2, -0x1

    iput p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 1710
    new-instance p2, Landroid/media/Cea708CCWidget$CCView;

    invoke-direct {p2, p1}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 1711
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1713
    iget-object p3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {p0, p3, p2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    nop

    .line 1717
    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 1718
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    iput p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 1719
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1720
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 1722
    return-void
.end method

.method private greylist-max-o getScreenColumnCount()I
    .registers 2

    .line 2042
    const/16 v0, 0x2a

    return v0
.end method

.method private greylist-max-o updateText(Ljava/lang/String;Z)V
    .registers 7

    .line 2067
    if-nez p2, :cond_7

    .line 2068
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2070
    :cond_7
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3a

    .line 2071
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 2072
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2073
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/CharacterStyle;

    .line 2074
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2076
    goto :goto_20

    .line 2078
    :cond_3a
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2082
    array-length v0, p1

    iget v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 2083
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    array-length v2, p1

    .line 2082
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2084
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p2, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2087
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 2088
    move p2, v1

    .line 2089
    :goto_73
    const/16 v0, 0x20

    if-gt p2, p1, :cond_82

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-gt v2, v0, :cond_82

    .line 2090
    add-int/lit8 p2, p2, 0x1

    goto :goto_73

    .line 2092
    :cond_82
    move v2, p1

    :goto_83
    if-lt v2, p2, :cond_90

    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-gt v3, v0, :cond_90

    .line 2093
    add-int/lit8 v2, v2, -0x1

    goto :goto_83

    .line 2095
    :cond_90
    if-nez p2, :cond_9c

    if-ne v2, p1, :cond_9c

    .line 2096
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b9

    .line 2098
    :cond_9c
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2099
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2100
    if-ge v2, p1, :cond_af

    .line 2101
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2103
    :cond_af
    if-lez p2, :cond_b4

    .line 2104
    invoke-virtual {v0, v1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2106
    :cond_b4
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {p1, v0}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 2108
    :goto_b9
    return-void
.end method

.method private greylist-max-o updateTextSize()V
    .registers 9

    .line 2013
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-nez v0, :cond_5

    return-void

    .line 2016
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2017
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v1

    .line 2018
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    .line 2019
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2021
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2022
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 2023
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2024
    nop

    .line 2025
    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    .line 2026
    :goto_2f
    cmpg-float v4, v2, v3

    if-gez v4, :cond_57

    .line 2027
    add-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 2028
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2029
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 2030
    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v6}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    cmpl-float v5, v6, v5

    const v6, 0x3c23d70a    # 0.01f

    if-lez v5, :cond_54

    .line 2031
    add-float/2addr v4, v6

    move v2, v4

    goto :goto_56

    .line 2033
    :cond_54
    sub-float/2addr v4, v6

    move v3, v4

    .line 2035
    :goto_56
    goto :goto_2f

    .line 2036
    :cond_57
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    mul-float/2addr v3, v0

    iput v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 2037
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCView;->setTextSize(F)V

    .line 2038
    return-void
.end method

.method private greylist-max-o updateWidestChar()V
    .registers 9

    .line 1997
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1998
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1999
    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 2000
    nop

    .line 2001
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    const/16 v5, 0x100

    if-ge v4, v5, :cond_36

    .line 2002
    new-instance v5, Ljava/lang/String;

    int-to-byte v6, v4

    const/4 v7, 0x1

    new-array v7, v7, [B

    aput-byte v6, v7, v3

    invoke-direct {v5, v7, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2003
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 2004
    cmpg-float v7, v2, v6

    if-gez v7, :cond_33

    .line 2005
    nop

    .line 2006
    iput-object v5, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    move v2, v6

    .line 2001
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2009
    :cond_36
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 2010
    return-void
.end method


# virtual methods
.method public greylist-max-o appendText(Ljava/lang/String;)V
    .registers 3

    .line 2058
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 2059
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 1

    .line 1743
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clearText()V

    .line 1744
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1745
    return-void
.end method

.method public greylist-max-o clearText()V
    .registers 3

    .line 2062
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2063
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    return-void
.end method

.method public greylist-max-o getCaptionWindowId()I
    .registers 2

    .line 1735
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 1753
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 1754
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->requestLayout()V

    .line 1755
    return-void
.end method

.method public greylist-max-o initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V
    .registers 14

    .line 1865
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eq v0, p1, :cond_17

    .line 1866
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_d

    .line 1867
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1869
    :cond_d
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 1870
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {p1, p0}, Landroid/media/Cea708CCWidget$CCLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1871
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 1875
    :cond_17
    iget p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    int-to-float p1, p1

    .line 1876
    iget-boolean v0, p2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    const/16 v1, 0x63

    if-eqz v0, :cond_22

    .line 1877
    move v0, v1

    goto :goto_24

    :cond_22
    const/16 v0, 0x4a

    :goto_24
    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 1880
    iget v0, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    int-to-float v0, v0

    .line 1881
    iget-boolean v2, p2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    if-eqz v2, :cond_2e

    goto :goto_30

    .line 1882
    :cond_2e
    const/16 v1, 0xd1

    :goto_30
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1886
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const-string v3, "CCWindowLayout"

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v2, :cond_3f

    cmpl-float v2, p1, v4

    if-lez v2, :cond_5d

    .line 1887
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1891
    :cond_5d
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_65

    cmpl-float v2, v0, v4

    if-lez v2, :cond_83

    .line 1892
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1896
    :cond_83
    nop

    .line 1897
    iget v2, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    const/4 v3, 0x3

    rem-int/2addr v2, v3

    .line 1898
    iget v5, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    div-int/2addr v5, v3

    .line 1899
    nop

    .line 1900
    nop

    .line 1901
    nop

    .line 1902
    nop

    .line 1903
    packed-switch v2, :pswitch_data_164

    const/16 v3, 0x11

    move v0, v1

    move v2, v4

    goto/16 :goto_127

    .line 1949
    :pswitch_98
    nop

    .line 1950
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1951
    const/4 v3, 0x5

    move v2, v0

    move v0, v1

    goto/16 :goto_127

    .line 1910
    :pswitch_a5
    sub-float v2, v4, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1914
    iget v6, p2, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 1915
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1917
    const/4 v9, 0x0

    :goto_bd
    if-ge v9, v6, :cond_c7

    .line 1918
    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    add-int/lit8 v9, v9, 0x1

    goto :goto_bd

    .line 1920
    :cond_c7
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1921
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1922
    iget v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1923
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1924
    iget-object v8, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v8}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v8

    if-lez v8, :cond_fa

    .line 1925
    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    iget-object v8, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v8}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    div-float/2addr v6, v8

    goto :goto_fb

    :cond_fa
    move v6, v1

    .line 1926
    :goto_fb
    cmpl-float v8, v6, v1

    if-lez v8, :cond_10e

    cmpg-float v8, v6, v0

    if-gez v8, :cond_10e

    .line 1930
    nop

    .line 1931
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v7}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1932
    sub-float/2addr v0, v6

    .line 1933
    move v2, v4

    goto :goto_127

    .line 1942
    :cond_10e
    nop

    .line 1943
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v6}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1944
    sub-float v3, v0, v2

    .line 1945
    add-float/2addr v0, v2

    .line 1947
    move v2, v0

    move v0, v3

    move v3, v7

    goto :goto_127

    .line 1905
    :pswitch_11d
    nop

    .line 1906
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v6}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1907
    nop

    .line 1908
    move v2, v4

    .line 1954
    :goto_127
    packed-switch v5, :pswitch_data_16e

    goto :goto_140

    .line 1968
    :pswitch_12b
    or-int/lit8 v3, v3, 0x50

    .line 1969
    move v4, p1

    goto :goto_140

    .line 1960
    :pswitch_12f
    or-int/lit8 v3, v3, 0x10

    .line 1963
    sub-float/2addr v4, p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1964
    sub-float v4, p1, v1

    .line 1965
    add-float/2addr p1, v1

    .line 1966
    move v1, v4

    move v4, p1

    goto :goto_140

    .line 1956
    :pswitch_13c
    or-int/lit8 v3, v3, 0x30

    .line 1957
    nop

    .line 1958
    move v1, p1

    .line 1972
    :goto_140
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    new-instance v5, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-direct {v5, v1, v4, v0, v2}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    invoke-virtual {p1, p0, v5}, Landroid/media/Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    .line 1974
    iget p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    .line 1975
    iget p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    .line 1976
    invoke-virtual {p0, v3}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setGravity(I)V

    .line 1977
    iget-boolean p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    if-eqz p1, :cond_15f

    .line 1978
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_162

    .line 1980
    :cond_15f
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1982
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_a5
        :pswitch_98
    .end packed-switch

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_12f
        :pswitch_12b
    .end packed-switch
.end method

.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1987
    sub-int/2addr p4, p2

    .line 1988
    sub-int/2addr p5, p3

    .line 1989
    iget p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    if-ne p4, p1, :cond_a

    iget p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    if-eq p5, p1, :cond_11

    .line 1990
    :cond_a
    iput p4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 1991
    iput p5, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 1992
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1994
    :cond_11
    return-void
.end method

.method public greylist-max-o removeFromCaptionView()V
    .registers 2

    .line 2046
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_11

    .line 2047
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V

    .line 2048
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2049
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 2051
    :cond_11
    return-void
.end method

.method public greylist-max-o sendBuffer(Ljava/lang/String;)V
    .registers 2

    .line 1803
    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 1804
    return-void
.end method

.method public greylist-max-o sendControl(C)V
    .registers 2

    .line 1808
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 3

    .line 1725
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1726
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1727
    return-void
.end method

.method public greylist-max-o setCaptionWindowId(I)V
    .registers 2

    .line 1739
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    .line 1740
    return-void
.end method

.method public greylist-max-o setFontScale(F)V
    .registers 2

    .line 1730
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 1731
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1732
    return-void
.end method

.method public greylist-max-o setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .registers 5

    .line 1758
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1759
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    if-eqz v0, :cond_14

    .line 1760
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    :cond_14
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    if-eqz v0, :cond_22

    .line 1763
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_22
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    packed-switch v0, :pswitch_data_60

    :pswitch_27
    goto :goto_42

    .line 1770
    :pswitch_28
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1767
    :pswitch_35
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    nop

    .line 1773
    :goto_42
    iget p1, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    packed-switch p1, :pswitch_data_6a

    :pswitch_47
    goto :goto_5e

    .line 1778
    :pswitch_48
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1775
    :pswitch_53
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    nop

    .line 1781
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_35
        :pswitch_27
        :pswitch_28
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_53
        :pswitch_47
        :pswitch_48
    .end packed-switch
.end method

.method public greylist-max-o setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .registers 2

    .line 1785
    return-void
.end method

.method public greylist-max-o setPenLocation(II)V
    .registers 4

    .line 1789
    iget p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    if-ltz p2, :cond_10

    .line 1790
    iget p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    :goto_6
    if-ge p2, p1, :cond_10

    .line 1791
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 1790
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 1794
    :cond_10
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 1795
    return-void
.end method

.method public greylist-max-o setRowLimit(I)V
    .registers 3

    .line 2111
    if-ltz p1, :cond_5

    .line 2114
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 2115
    return-void

    .line 2112
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A rowLimit should have a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setText(Ljava/lang/String;)V
    .registers 3

    .line 2054
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 2055
    return-void
.end method

.method public greylist-max-o setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .registers 2

    .line 1800
    return-void
.end method

.method public greylist-max-o show()V
    .registers 2

    .line 1748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 1749
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->requestLayout()V

    .line 1750
    return-void
.end method
