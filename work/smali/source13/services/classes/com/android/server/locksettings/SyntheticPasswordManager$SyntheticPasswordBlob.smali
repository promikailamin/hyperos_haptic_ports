.class Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyntheticPasswordBlob"
.end annotation


# instance fields
.field mContent:[B

.field mType:B

.field mVersion:B


# direct methods
.method constructor <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(BB[B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .registers 4
    .param p0, "version"    # B
    .param p1, "type"    # B
    .param p2, "content"    # [B

    .line 391
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;-><init>()V

    .line 392
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 393
    iput-byte p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    .line 394
    iput-object p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    .line 395
    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .registers 4
    .param p0, "data"    # [B

    .line 399
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;-><init>()V

    .line 400
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 401
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    .line 402
    array-length v1, p0

    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    .line 403
    return-object v0
.end method


# virtual methods
.method public toByte()[B
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 408
    .local v1, "blob":[B
    iget-byte v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 409
    iget-byte v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    aput-byte v3, v1, v2

    .line 410
    array-length v2, v0

    const/4 v3, 0x2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    return-object v1
.end method
