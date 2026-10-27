.class public Lcom/android/server/locksettings/LskfIdentifier;
.super Ljava/lang/Object;
.source "LskfIdentifier.java"


# instance fields
.field public final protectorId:J

.field public final userId:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    .line 40
    iput-wide p2, p0, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 49
    instance-of v0, p1, Lcom/android/server/locksettings/LskfIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 52
    :cond_6
    check-cast p1, Lcom/android/server/locksettings/LskfIdentifier;

    .line 53
    iget v0, p0, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    iget v2, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    if-ne v0, v2, :cond_18

    iget-wide v2, p0, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    iget-wide p0, p1, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 58
    iget v0, p0, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public isSpecialCredential()Z
    .registers 5

    .line 44
    iget-wide v0, p0, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
