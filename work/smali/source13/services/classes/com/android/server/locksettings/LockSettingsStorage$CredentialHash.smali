.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# instance fields
.field hash:[B

.field type:I


# direct methods
.method private constructor <init>([BI)V
    .registers 5
    .param p1, "hash"    # [B
    .param p2, "type"    # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    if-eq p2, v0, :cond_11

    .line 120
    if-eqz p1, :cond_9

    goto :goto_13

    .line 121
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_11
    if-nez p1, :cond_18

    .line 129
    :goto_13
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 130
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    .line 131
    return-void

    .line 125
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>([BILcom/android/server/locksettings/LockSettingsStorage$CredentialHash-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-void
.end method

.method static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4
    .param p0, "hash"    # [B
    .param p1, "type"    # I

    .line 134
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 137
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v0

    .line 135
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 3

    .line 141
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v0
.end method
