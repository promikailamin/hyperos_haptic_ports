.class Lcom/android/internal/util/FileRotator$FileInfo;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FileRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public blacklist endMillis:J

.field public final blacklist prefix:Ljava/lang/String;

.field public blacklist startMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    .line 441
    return-void
.end method


# virtual methods
.method public blacklist build()Ljava/lang/String;
    .registers 6

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    iget-object v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 482
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isActive()Z
    .registers 5

    .line 491
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist parse(Ljava/lang/String;)Z
    .registers 8

    .line 449
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 451
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 452
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 455
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4f

    if-ne v1, v3, :cond_19

    goto :goto_4f

    .line 458
    :cond_19
    iget-object v3, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v2

    .line 461
    :cond_26
    const/4 v3, 0x1

    add-int/2addr v0, v3

    :try_start_28
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v0, v3, :cond_41

    .line 464
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    goto :goto_4c

    .line 466
    :cond_41
    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_4c} :catch_4d

    .line 469
    :goto_4c
    return v3

    .line 470
    :catch_4d
    move-exception p1

    .line 471
    return v2

    .line 455
    :cond_4f
    :goto_4f
    return v2
.end method
