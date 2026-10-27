.class final Landroid/content/pm/PackageManager$ApplicationInfoQuery;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationInfoQuery"
.end annotation


# instance fields
.field final blacklist flags:J

.field final blacklist packageName:Ljava/lang/String;

.field final blacklist userId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;JI)V
    .registers 5

    .line 11715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11716
    iput-object p1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->packageName:Ljava/lang/String;

    .line 11717
    iput-wide p2, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->flags:J

    .line 11718
    iput p4, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->userId:I

    .line 11719
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 11738
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 11739
    return v0

    .line 11743
    :cond_4
    :try_start_4
    check-cast p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_21

    .line 11746
    nop

    .line 11747
    iget-object v1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-wide v1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->flags:J

    iget-wide v3, p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->flags:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    iget v1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->userId:I

    iget p1, p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->userId:I

    if-ne v1, p1, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    .line 11744
    :catch_21
    move-exception p1

    .line 11745
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 11730
    iget-object v0, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 11731
    mul-int/lit8 v0, v0, 0xd

    iget-wide v1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->flags:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11732
    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11733
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 11723
    iget-object v0, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->flags:J

    .line 11725
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 11723
    const-string v1, "ApplicationInfoQuery(packageName=\"%s\", flags=%s, userId=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
