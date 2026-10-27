.class public final Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
.super Ljava/lang/Object;
.source "EconomyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomyManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnticipatedAction"
.end annotation


# instance fields
.field public final actionId:I

.field private final mHashCode:I

.field public final numInstantaneousCalls:I

.field public final ongoingDurationMs:J


# direct methods
.method public constructor <init>(IIJ)V
    .registers 9
    .param p1, "actionId"    # I
    .param p2, "numInstantaneousCalls"    # I
    .param p3, "ongoingDurationMs"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    .line 50
    iput p2, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    .line 51
    iput-wide p3, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    .line 55
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p2

    .line 56
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    const/16 v2, 0x20

    ushr-long v2, p3, v2

    xor-long/2addr v2, p3

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 57
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    iput v1, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->mHashCode:I

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 64
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 65
    .local v2, "that":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    iget v3, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    iget v4, v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    iget v4, v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    if-ne v3, v4, :cond_2a

    iget-wide v3, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    iget-wide v5, v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 63
    .end local v2    # "that":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->mHashCode:I

    return v0
.end method
