.class public final Lcom/android/server/devicestate/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceState$DeviceStateFlags;
    }
.end annotation


# static fields
.field public static final FLAG_APP_INACCESSIBLE:I = 0x2

.field public static final FLAG_CANCEL_OVERRIDE_REQUESTS:I = 0x1

.field public static final FLAG_TENT_MODE:I = -0x80000000


# instance fields
.field private final mFlags:I

.field private final mIdentifier:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 7
    .param p1, "identifier"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    const/16 v1, 0xff

    const-string/jumbo v2, "identifier"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 91
    iput p1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    .line 92
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 123
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    .line 124
    .local v2, "that":Lcom/android/server/devicestate/DeviceState;
    iget v3, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    iget v4, v2, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    .line 125
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget v3, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    iget v4, v2, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    if-ne v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 124
    :goto_2d
    return v0

    .line 122
    .end local v2    # "that":Lcom/android/server/devicestate/DeviceState;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public getFlags()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    return v0
.end method

.method public getIdentifier()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasFlag(I)Z
    .registers 3
    .param p1, "flagToCheckFor"    # I

    .line 137
    iget v0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState{identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_accessible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method
