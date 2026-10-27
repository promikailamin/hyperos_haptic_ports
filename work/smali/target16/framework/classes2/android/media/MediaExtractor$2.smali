.class Landroid/media/MediaExtractor$2;
.super Landroid/media/DrmInitData;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaExtractor;->getDrmInitData()Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaExtractor;Landroid/media/DrmInitData$SchemeInitData;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 430
    iput-object p2, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 2

    .line 432
    iget-object p1, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    return-object p1
.end method

.method public whitelist getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 2

    .line 442
    iget-object p1, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    return-object p1
.end method

.method public whitelist getSchemeInitDataCount()I
    .registers 2

    .line 437
    const/4 v0, 0x1

    return v0
.end method
