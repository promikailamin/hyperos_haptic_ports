.class Landroid/media/Cea708CaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private final blacklist mCCParser:Landroid/media/Cea708CCParser;

.field private final blacklist mRenderingWidget:Landroid/media/Cea708CCWidget;


# direct methods
.method constructor blacklist <init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V
    .registers 3

    .line 95
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 97
    iput-object p1, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    .line 98
    new-instance p1, Landroid/media/Cea708CCParser;

    iget-object p2, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    invoke-direct {p1, p2}, Landroid/media/Cea708CCParser;-><init>(Landroid/media/Cea708CCParser$DisplayListener;)V

    iput-object p1, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    return-object v0
.end method

.method public blacklist onData([BZJ)V
    .registers 5

    .line 103
    iget-object p2, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    invoke-virtual {p2, p1}, Landroid/media/Cea708CCParser;->parse([B)V

    .line 104
    return-void
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 114
    return-void
.end method
