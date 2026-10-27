.class final Landroid/app/PropertyInvalidatedCache$Namespace;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Namespace"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {}
    }
    componentAnnotations = {
        {}
    }
    componentNames = {
        "mName"
    }
    componentSignatures = {
        null
    }
    componentTypes = {
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$Namespace;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/app/PropertyInvalidatedCache$Namespace;

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/app/PropertyInvalidatedCache$Namespace;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mName"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/app/PropertyInvalidatedCache-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$Namespace;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 148
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$Namespace;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache$Namespace$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist mName()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Namespace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 148
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$Namespace;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/PropertyInvalidatedCache$Namespace;

    const-string/jumbo v2, "mName"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
