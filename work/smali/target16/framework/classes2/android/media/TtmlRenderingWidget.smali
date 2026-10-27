.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# instance fields
.field private greylist-max-o mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 678
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 679
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 683
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 687
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 691
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 693
    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 695
    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/CaptioningManager;

    .line 697
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    .line 698
    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p2

    iget p2, p2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    .line 700
    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    const/16 p2, 0x51

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 701
    return-void
.end method


# virtual methods
.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 728
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 729
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 733
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 734
    return-void
.end method

.method public greylist-max-o setActiveCues(Ljava/util/Vector;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 737
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 738
    nop

    .line 739
    const-string v1, ""

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2c

    .line 740
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TtmlCue;

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v3, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 743
    :cond_2c
    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz p1, :cond_3a

    .line 746
    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 748
    :cond_3a
    return-void
.end method

.method public greylist-max-o setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .registers 2

    .line 705
    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 706
    return-void
.end method

.method public greylist-max-o setSize(II)V
    .registers 5

    .line 710
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 711
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 713
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    .line 715
    return-void
.end method

.method public greylist-max-o setVisible(Z)V
    .registers 2

    .line 719
    if-eqz p1, :cond_7

    .line 720
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    goto :goto_c

    .line 722
    :cond_7
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    .line 724
    :goto_c
    return-void
.end method
