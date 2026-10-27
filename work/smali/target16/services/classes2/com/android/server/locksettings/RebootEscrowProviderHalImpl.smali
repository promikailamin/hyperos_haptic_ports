.class public Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;
.super Ljava/lang/Object;
.source "RebootEscrowProviderHalImpl.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method


# virtual methods
.method public clearRebootEscrowKey()V
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/16 v0, 0x20

    .line 122
    :try_start_b
    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    .line 124
    :catch_11
    const-string p0, "RebootEscrowProviderHal"

    const-string v0, "Could not call RebootEscrow HAL to shred key"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .registers 8

    .line 74
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    const/4 p1, 0x0

    .line 75
    const-string v0, "RebootEscrowProviderHal"

    if-nez p0, :cond_11

    .line 76
    const-string p0, "Had reboot escrow data for users, but RebootEscrow HAL is unavailable"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 81
    :cond_11
    :try_start_11
    invoke-interface {p0}, Landroid/hardware/rebootescrow/IRebootEscrow;->retrieveKey()[B

    move-result-object v1

    if-nez v1, :cond_1f

    .line 83
    const-string p0, "Had reboot escrow data for users, but could not retrieve key"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_1d
    move-exception p0

    goto :goto_57

    .line 85
    :cond_1f
    array-length v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3a

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRebootEscrow returned key of incorrect size "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_3a
    const/4 v2, 0x0

    move v4, v2

    .line 93
    :goto_3c
    array-length v5, v1

    if-ge v2, v5, :cond_45

    .line 94
    aget-byte v5, v1, v2

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_45
    if-nez v4, :cond_4d

    .line 97
    const-string p0, "IRebootEscrow returned an all-zeroes key"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 102
    :cond_4d
    new-array v2, v3, [B

    invoke-interface {p0, v2}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    .line 104
    invoke-static {v1}, Lcom/android/server/locksettings/RebootEscrowKey;->fromKeyBytes([B)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_56} :catch_6e
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_56} :catch_1d

    return-object p0

    .line 109
    :goto_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got service-specific exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 106
    :catch_6e
    const-string p0, "Could not retrieve escrow data"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getType()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public hasRebootEscrowSupport()Z
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .registers 4

    .line 131
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    const/4 p2, 0x0

    .line 132
    const-string v0, "RebootEscrowProviderHal"

    if-nez p0, :cond_11

    .line 133
    const-string p0, "Escrow marked as ready, but RebootEscrow HAL is unavailable"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 140
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKey;->getKeyBytes()[B

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    .line 141
    const-string p0, "Reboot escrow key stored with RebootEscrow HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_1f
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    move-exception p0

    .line 144
    const-string p1, "Failed escrow secret to RebootEscrow HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
