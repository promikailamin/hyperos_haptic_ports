.class public Landroid/media/Cea708CaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private greylist-max-o mCCWidget:Landroid/media/Cea708CCWidget;

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/media/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public greylist-max-o createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 5

    .line 78
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "text/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 80
    iget-object v0, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    if-nez v0, :cond_1b

    .line 81
    new-instance v0, Landroid/media/Cea708CCWidget;

    iget-object v1, p0, Landroid/media/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    .line 83
    :cond_1b
    new-instance v0, Landroid/media/Cea708CaptionTrack;

    iget-object v1, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CaptionTrack;-><init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V

    return-object v0

    .line 85
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o supports(Landroid/media/MediaFormat;)Z
    .registers 4

    .line 69
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 70
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "text/cea-708"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 73
    :cond_13
    const/4 p1, 0x0

    return p1
.end method
