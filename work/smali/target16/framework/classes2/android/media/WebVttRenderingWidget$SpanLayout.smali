.class Landroid/media/WebVttRenderingWidget$SpanLayout;
.super Lcom/android/internal/widget/SubtitleView;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanLayout"
.end annotation


# instance fields
.field private final greylist-max-o mBuilder:Landroid/text/SpannableStringBuilder;

.field private final greylist-max-o mSpans:[Landroid/media/TextTrackCueSpan;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V
    .registers 3

    .line 1834
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;)V

    .line 1830
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1836
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 1838
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->update()V

    .line 1839
    return-void
.end method


# virtual methods
.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 4

    .line 1860
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setBackgroundColor(I)V

    .line 1861
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setForegroundColor(I)V

    .line 1862
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setEdgeColor(I)V

    .line 1863
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setEdgeType(I)V

    .line 1864
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1865
    invoke-virtual {p0, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setTextSize(F)V

    .line 1866
    return-void
.end method

.method public greylist-max-o update()V
    .registers 6

    .line 1842
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1843
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 1845
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1846
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1848
    array-length v2, v1

    .line 1849
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    .line 1850
    aget-object v4, v1, v3

    .line 1851
    iget-boolean v4, v4, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    if-eqz v4, :cond_1b

    .line 1852
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1849
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1856
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    return-void
.end method
