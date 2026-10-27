.class final Landroid/app/PropertyInvalidatedCache$CacheKey;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "namespace",
        "key"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Landroid/app/PropertyInvalidatedCache$Namespace;,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final blacklist key:Ljava/lang/String;

.field private final blacklist namespace:Landroid/app/PropertyInvalidatedCache$Namespace;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$CacheKey;

    if-eqz v0, :cond_1c

    check-cast p1, Landroid/app/PropertyInvalidatedCache$CacheKey;

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    iget-object v1, p1, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkey(Landroid/app/PropertyInvalidatedCache$CacheKey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamespace(Landroid/app/PropertyInvalidatedCache$CacheKey;)Landroid/app/PropertyInvalidatedCache$Namespace;
    .registers 1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Namespace;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000,
            0x8000
        }
        names = {
            "namespace",
            "key"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 267
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smthrowIfInvalidKey(Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    .line 268
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/app/PropertyInvalidatedCache$CacheKey;)I
    .registers 4

    .line 276
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache$Namespace;->-$$Nest$fgetmName(Landroid/app/PropertyInvalidatedCache$Namespace;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$Namespace;->-$$Nest$fgetmName(Landroid/app/PropertyInvalidatedCache$Namespace;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 277
    if-eqz v0, :cond_13

    .line 278
    return v0

    .line 280
    :cond_13
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 264
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$CacheKey;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 264
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist key()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist namespace()Landroid/app/PropertyInvalidatedCache$Namespace;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->namespace:Landroid/app/PropertyInvalidatedCache$Namespace;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$Namespace;->-$$Nest$fgetmName(Landroid/app/PropertyInvalidatedCache$Namespace;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
