.class public Lcom/android/server/power/WakeLockLog$TagData;
.super Ljava/lang/Object;
.source "WakeLockLog.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public index:I

.field public lastUsedTime:J

.field public ownerUid:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 1366
    iput p2, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/power/WakeLockLog$TagData;)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 1414
    :cond_4
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    iget-wide p0, p1, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1358
    check-cast p1, Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagData;->compareTo(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 1374
    instance-of v2, p1, Lcom/android/server/power/WakeLockLog$TagData;

    if-eqz v2, :cond_1e

    .line 1375
    check-cast p1, Lcom/android/server/power/WakeLockLog$TagData;

    .line 1376
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    iget v3, p1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    if-ne v2, v3, :cond_1e

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    return v0

    :cond_1e
    return v1
.end method

.method public getByteSize()I
    .registers 1

    .line 1395
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    :goto_c
    add-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 1404
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1405
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
