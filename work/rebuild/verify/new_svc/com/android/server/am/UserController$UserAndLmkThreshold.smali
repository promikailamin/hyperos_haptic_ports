.class Lcom/android/server/am/UserController$UserAndLmkThreshold;
.super Ljava/lang/Object;
.source "UserController.java"


# instance fields
.field public lmkCountThreshold:I

.field public userId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 4436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4437
    iput p1, p0, Lcom/android/server/am/UserController$UserAndLmkThreshold;->userId:I

    .line 4438
    iput p2, p0, Lcom/android/server/am/UserController$UserAndLmkThreshold;->lmkCountThreshold:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    .line 4448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1b

    .line 4449
    :cond_12
    iget p0, p0, Lcom/android/server/am/UserController$UserAndLmkThreshold;->userId:I

    check-cast p1, Lcom/android/server/am/UserController$UserAndLmkThreshold;

    iget p1, p1, Lcom/android/server/am/UserController$UserAndLmkThreshold;->userId:I

    if-ne p0, p1, :cond_1b

    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public hashCode()I
    .registers 1

    .line 4455
    iget p0, p0, Lcom/android/server/am/UserController$UserAndLmkThreshold;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAndLmkThreshold{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController$UserAndLmkThreshold;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lmkCountThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/UserController$UserAndLmkThreshold;->lmkCountThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
