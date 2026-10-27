.class public final Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioFormat:Landroid/media/AudioFormat;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioFormat(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;)Landroid/media/AudioFormat;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;
    .registers 3

    .line 1324
    new-instance v0, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;-><init>(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V

    return-object v0
.end method

.method public blacklist setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;
    .registers 2

    .line 1313
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioFormat;

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 1314
    return-object p0
.end method
