.class final Lcom/android/server/job/controllers/Package;
.super Ljava/lang/Object;
.source "Package.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/server/job/controllers/Package;->userId:I

    .line 28
    iput-object p2, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static packageToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 39
    return v0

    .line 41
    :cond_4
    instance-of v1, p1, Lcom/android/server/job/controllers/Package;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 42
    return v2

    .line 44
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/job/controllers/Package;

    .line 45
    .local v1, "other":Lcom/android/server/job/controllers/Package;
    iget v3, p0, Lcom/android/server/job/controllers/Package;->userId:I

    iget v4, v1, Lcom/android/server/job/controllers/Package;->userId:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/job/controllers/Package;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 33
    iget v0, p0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
