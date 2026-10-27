.class final Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntentActivitiesQuery"
.end annotation


# instance fields
.field final blacklist mFlags:J

.field final blacklist mIntent:Landroid/content/Intent;

.field final blacklist mResolvedType:Ljava/lang/String;

.field final blacklist mUserId:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;JI)V
    .registers 6

    .line 4288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4289
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mIntent:Landroid/content/Intent;

    .line 4290
    iput-object p2, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mResolvedType:Ljava/lang/String;

    .line 4291
    iput-wide p3, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mFlags:J

    .line 4292
    iput p5, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mUserId:I

    .line 4293
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 4306
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4307
    return v0

    .line 4311
    :cond_4
    :try_start_4
    check-cast p1, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_2d

    .line 4314
    nop

    .line 4315
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mIntent:Landroid/content/Intent;

    iget-object v2, p1, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mResolvedType:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mResolvedType:Ljava/lang/String;

    .line 4316
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-wide v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mFlags:J

    iget-wide v3, p1, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mFlags:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2b

    iget v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mUserId:I

    iget p1, p1, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mUserId:I

    if-ne v1, p1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    nop

    .line 4315
    :goto_2c
    return v0

    .line 4312
    :catch_2d
    move-exception p1

    .line 4313
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 4297
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    .line 4298
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mResolvedType:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4299
    mul-int/lit8 v0, v0, 0xd

    iget-wide v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mFlags:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4300
    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Landroid/app/ApplicationPackageManager$IntentActivitiesQuery;->mUserId:I

    add-int/2addr v0, v1

    .line 4301
    return v0
.end method
