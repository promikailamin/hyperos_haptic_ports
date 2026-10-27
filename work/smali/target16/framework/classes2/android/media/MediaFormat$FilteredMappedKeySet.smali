.class abstract Landroid/media/MediaFormat$FilteredMappedKeySet;
.super Ljava/util/AbstractSet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FilteredMappedKeySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/MediaFormat;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeys(Landroid/media/MediaFormat$FilteredMappedKeySet;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/media/MediaFormat;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2234
    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->this$0:Landroid/media/MediaFormat;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2235
    invoke-static {p1}, Landroid/media/MediaFormat;->-$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    .line 2236
    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4

    .line 2242
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->mapItemToKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2244
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->keepKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 2246
    :cond_1b
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2293
    new-instance v0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;

    invoke-direct {v0, p0}, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;-><init>(Landroid/media/MediaFormat$FilteredMappedKeySet;)V

    return-object v0
.end method

.method protected abstract blacklist keepKey(Ljava/lang/String;)Z
.end method

.method protected abstract blacklist mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract blacklist mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3

    .line 2251
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 2252
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->mapItemToKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2253
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->keepKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2254
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->this$0:Landroid/media/MediaFormat;

    invoke-static {v0}, Landroid/media/MediaFormat;->-$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    const/4 p1, 0x1

    return p1

    .line 2258
    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 2298
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaFormat$FilteredMappedKeySet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/MediaFormat$FilteredMappedKeySet$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaFormat$FilteredMappedKeySet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
