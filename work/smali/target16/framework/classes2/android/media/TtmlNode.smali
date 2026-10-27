.class Landroid/media/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# instance fields
.field public final blacklist mAttributes:Ljava/lang/String;

.field public final blacklist mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mEndTimeMs:J

.field public final blacklist mName:Ljava/lang/String;

.field public final blacklist mParent:Landroid/media/TtmlNode;

.field public final blacklist mRunId:J

.field public final blacklist mStartTimeMs:J

.field public final blacklist mText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V
    .registers 12

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    .line 308
    iput-object p1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    .line 309
    iput-object p2, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    .line 310
    iput-object p3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    .line 311
    iput-wide p4, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    .line 312
    iput-wide p6, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 313
    iput-object p8, p0, Landroid/media/TtmlNode;->mParent:Landroid/media/TtmlNode;

    .line 314
    iput-wide p9, p0, Landroid/media/TtmlNode;->mRunId:J

    .line 315
    return-void
.end method


# virtual methods
.method public blacklist isActive(JJ)Z
    .registers 7

    .line 326
    iget-wide v0, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_e

    iget-wide p1, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
