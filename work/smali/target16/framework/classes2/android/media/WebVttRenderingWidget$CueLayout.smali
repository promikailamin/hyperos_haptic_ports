.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private greylist-max-o mActive:Z

.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final greylist-max-o mCue:Landroid/media/TextTrackCue;

.field private greylist-max-o mFontSize:F

.field private greylist-max-o mOrder:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOrder(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .registers 1

    iget p0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 5

    .line 1668
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1670
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1671
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1672
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1675
    iget p1, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 p3, 0x64

    const/4 p4, 0x1

    if-ne p1, p3, :cond_12

    move p1, p4

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1677
    :goto_13
    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    .line 1679
    iget p2, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch p2, :pswitch_data_42

    goto :goto_3d

    .line 1691
    :pswitch_1c
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1692
    goto :goto_3d

    .line 1684
    :pswitch_21
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1685
    goto :goto_3d

    .line 1681
    :pswitch_26
    const p1, 0x800005

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1682
    goto :goto_3d

    .line 1694
    :pswitch_2d
    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_3d

    .line 1687
    :pswitch_34
    if-eqz p1, :cond_37

    .line 1688
    goto :goto_39

    :cond_37
    const/16 p4, 0x10

    .line 1687
    :goto_39
    invoke-virtual {p0, p4}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1689
    nop

    .line 1702
    :goto_3d
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1703
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0xc8
        :pswitch_34
        :pswitch_2d
        :pswitch_26
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getCue()Landroid/media/TextTrackCue;
    .registers 2

    .line 1819
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public greylist-max-o isActive()Z
    .registers 2

    .line 1812
    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public greylist-max-o measureForParent(II)V
    .registers 6

    .line 1764
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1765
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1766
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1767
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v1

    .line 1768
    iget v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v1, v2}, Landroid/media/WebVttRenderingWidget;->-$$Nest$smresolveCueAlignment(II)I

    move-result v1

    .line 1773
    packed-switch v1, :pswitch_data_4a

    .line 1788
    :pswitch_17
    const/4 v1, 0x0

    goto :goto_33

    .line 1778
    :pswitch_19
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1779
    goto :goto_33

    .line 1775
    :pswitch_1c
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v1, v1, 0x64

    .line 1776
    goto :goto_33

    .line 1781
    :pswitch_21
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v2, 0x32

    if-gt v1, v2, :cond_2c

    .line 1782
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_33

    .line 1784
    :cond_2c
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x2

    .line 1786
    nop

    .line 1793
    :goto_33
    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 1794
    const/high16 p1, -0x80000000

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1795
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1796
    invoke-virtual {p0, v0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    .line 1797
    return-void

    :pswitch_data_4a
    .packed-switch 0xc8
        :pswitch_21
        :pswitch_17
        :pswitch_17
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 3

    .line 1756
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1757
    return-void
.end method

.method public greylist-max-o prepForPrune()V
    .registers 2

    .line 1719
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1720
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 7

    .line 1706
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1707
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1709
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    move-result v0

    .line 1710
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 1711
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1712
    instance-of v3, v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_18

    .line 1713
    check-cast v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1710
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1716
    :cond_1b
    return-void
.end method

.method public greylist-max-o setOrder(I)V
    .registers 2

    .line 1805
    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    .line 1806
    return-void
.end method

.method public greylist-max-o update()V
    .registers 10

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1725
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    .line 1727
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v0

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v1, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v0, v1}, Landroid/media/WebVttRenderingWidget;->-$$Nest$smresolveCueAlignment(II)I

    move-result v0

    .line 1729
    packed-switch v0, :pswitch_data_44

    .line 1738
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1e

    .line 1734
    :pswitch_18
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1735
    goto :goto_1e

    .line 1731
    :pswitch_1b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1732
    nop

    .line 1741
    :goto_1e
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1742
    iget v2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1743
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v3, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1744
    array-length v4, v3

    .line 1745
    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_42

    .line 1746
    new-instance v6, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-direct {v6, v7, v8}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    .line 1747
    invoke-virtual {v6, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1748
    invoke-virtual {v6, v1, v2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1750
    const/4 v7, -0x2

    invoke-virtual {p0, v6, v7, v7}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    .line 1745
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1752
    :cond_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0xcb
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method
