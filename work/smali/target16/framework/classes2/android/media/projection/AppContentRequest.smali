.class public final Landroid/media/projection/AppContentRequest;
.super Ljava/lang/Object;
.source "AppContentRequest.java"


# instance fields
.field private final blacklist mContentConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "[",
            "Landroid/media/projection/MediaProjectionAppContent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mThumbnailSize:Landroid/util/Size;


# direct methods
.method public constructor blacklist <init>(Landroid/util/Size;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/function/Consumer<",
            "[",
            "Landroid/media/projection/MediaProjectionAppContent;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Landroid/media/projection/AppContentRequest;->mThumbnailSize:Landroid/util/Size;

    .line 48
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    iput-object p1, p0, Landroid/media/projection/AppContentRequest;->mContentConsumer:Ljava/util/function/Consumer;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist getThumbnailSize()Landroid/util/Size;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/media/projection/AppContentRequest;->mThumbnailSize:Landroid/util/Size;

    return-object v0
.end method

.method public blacklist provideContent(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/projection/MediaProjectionAppContent;",
            ">;)V"
        }
    .end annotation

    .line 58
    const-string v0, "content must not be null. If all the content needs to be removed, an empty list can be passed"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Landroid/media/projection/AppContentRequest;->mContentConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/projection/MediaProjectionAppContent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/projection/MediaProjectionAppContent;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
