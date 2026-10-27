.class public final Lcom/android/internal/util/custom/KeyboxUtils$Key;
.super Ljava/lang/Record;
.source "KeyboxUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/custom/KeyboxUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
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
        "uid",
        "alias"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final blacklist alias:Ljava/lang/String;

.field private final blacklist uid:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/custom/KeyboxUtils$Key;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/internal/util/custom/KeyboxUtils$Key;

    iget v0, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->uid:I

    iget v1, p1, Lcom/android/internal/util/custom/KeyboxUtils$Key;->uid:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->alias:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/util/custom/KeyboxUtils$Key;->alias:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->alias:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "alias"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->uid:I

    iput-object p2, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->alias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist alias()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/util/custom/KeyboxUtils$Key;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 42
    iget v0, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->uid:I

    iget-object v1, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$CheckPackageQuery$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 42
    invoke-direct {p0}, Lcom/android/internal/util/custom/KeyboxUtils$Key;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/internal/util/custom/KeyboxUtils$Key;

    const-string/jumbo v2, "uid;alias"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist uid()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/android/internal/util/custom/KeyboxUtils$Key;->uid:I

    return v0
.end method
