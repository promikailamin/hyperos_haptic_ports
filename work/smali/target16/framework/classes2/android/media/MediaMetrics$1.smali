.class Landroid/media/MediaMetrics$1;
.super Ljava/lang/Object;
.source "MediaMetrics.java"

# interfaces
.implements Landroid/media/MediaMetrics$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaMetrics;->createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/MediaMetrics$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/MediaMetrics$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$type:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Landroid/media/MediaMetrics$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaMetrics$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iget-object p1, p0, Landroid/media/MediaMetrics$1;->val$name:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    .line 253
    iget-object p1, p0, Landroid/media/MediaMetrics$1;->val$type:Ljava/lang/Class;

    iput-object p1, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 272
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 273
    return v0

    .line 275
    :cond_4
    instance-of v1, p1, Landroid/media/MediaMetrics$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 276
    return v2

    .line 278
    :cond_a
    check-cast p1, Landroid/media/MediaMetrics$Key;

    .line 279
    iget-object v1, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    invoke-interface {p1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    invoke-interface {p1}, Landroid/media/MediaMetrics$Key;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 284
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
