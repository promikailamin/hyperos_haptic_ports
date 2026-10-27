.class Lmiui/util/font/FontCache$CacheItem;
.super Ljava/lang/Object;
.source "FontCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/font/FontCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheItem"
.end annotation


# instance fields
.field blacklist lastAccessTime:J

.field blacklist tfArray:[Landroid/graphics/Typeface;

.field blacklist wghtArray:[I


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Typeface;

    iput-object v1, p0, Lmiui/util/font/FontCache$CacheItem;->tfArray:[Landroid/graphics/Typeface;

    .line 14
    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/util/font/FontCache$CacheItem;->wghtArray:[I

    .line 18
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lmiui/util/font/FontCache$CacheItem;->wghtArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheItem{, wghtArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/font/FontCache$CacheItem;->wghtArray:[I

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    return-object v0
.end method
