.class public Landroid/app/ResourcesManager$ApkKey;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkKey"
.end annotation


# instance fields
.field public final greylist-max-o overlay:Z

.field public final greylist-max-o path:Ljava/lang/String;

.field public final greylist-max-o sharedLib:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    .line 216
    iput-boolean p2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    .line 217
    iput-boolean p3, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    .line 218
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 231
    instance-of v0, p1, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 232
    return v1

    .line 234
    :cond_6
    check-cast p1, Landroid/app/ResourcesManager$ApkKey;

    .line 235
    iget-object v0, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    iget-boolean v2, p1, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-ne v0, v2, :cond_1f

    iget-boolean v0, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    iget-boolean p1, p1, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-ne v0, p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 222
    nop

    .line 223
    iget-object v0, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 224
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 225
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkKey["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "lib"

    goto :goto_15

    :cond_13
    const-string v1, "app"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v1, :cond_20

    const-string v1, ", overlay"

    goto :goto_22

    :cond_20
    const-string v1, ""

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
