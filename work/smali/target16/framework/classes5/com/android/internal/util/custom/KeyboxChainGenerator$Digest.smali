.class final Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;
.super Ljava/lang/Record;
.source "KeyboxChainGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/custom/KeyboxChainGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Digest"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {}
    }
    componentAnnotations = {
        {}
    }
    componentNames = {
        "digest"
    }
    componentSignatures = {
        null
    }
    componentTypes = {
        [B
    }
.end annotation


# instance fields
.field private final blacklist digest:[B


# direct methods
.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdigest(Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    return-object p0
.end method

.method constructor blacklist <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    return-void
.end method


# virtual methods
.method public blacklist digest()[B
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 334
    instance-of v0, p1, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;

    .line 335
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    iget-object p1, p1, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 336
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->digest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 331
    invoke-direct {p0}, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;

    const-string v2, "digest"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
