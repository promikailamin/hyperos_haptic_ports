.class Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oemLock"    # Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 50
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 53
    return-void
.end method

.method static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 3

    .line 41
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService(Z)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_5} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 45
    :catch_6
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 42
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 43
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "OemLock"

    const-string v2, "OemLock HAL not present on device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getLockName$0([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "lockName"    # [Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 64
    aput-object p3, p1, v1

    .line 65
    return-void
.end method

.method static synthetic lambda$isOemUnlockAllowedByCarrier$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 6
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByCarrier"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 122
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    .line 123
    return-void
.end method

.method static synthetic lambda$isOemUnlockAllowedByDevice$2([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 6
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByDevice"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 170
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    .line 171
    return-void
.end method

.method private toByteArrayList([B)Ljava/util/ArrayList;
    .registers 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 191
    if-nez p1, :cond_8

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 194
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-byte v3, p1, v2

    .line 196
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 198
    :cond_1e
    return-object v0
.end method


# virtual methods
.method getLockName()Ljava/lang/String;
    .registers 7

    .line 58
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    .line 59
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v1, v1, [Ljava/lang/String;

    .line 62
    .local v1, "lockName":[Ljava/lang/String;
    :try_start_7
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1}, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/String;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_2c

    .line 69
    nop

    .line 71
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_38

    .line 81
    const-string v3, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v5

    .line 77
    :pswitch_23
    const-string v3, "Failed to get OEM lock name."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v5

    .line 74
    :pswitch_29
    aget-object v0, v1, v3

    return-object v0

    .line 66
    :catch_2c
    move-exception v3

    .line 67
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get name from HAL"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method

.method isOemUnlockAllowedByCarrier()Z
    .registers 6

    .line 116
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    .line 117
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v1, v1, [Ljava/lang/Boolean;

    .line 120
    .local v1, "allowedByCarrier":[Ljava/lang/Boolean;
    :try_start_7
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v1}, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_31

    .line 127
    nop

    .line 129
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_3c

    .line 135
    const-string v3, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 132
    :pswitch_22
    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 138
    :goto_29
    :pswitch_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get carrier OEM unlock state"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :catch_31
    move-exception v3

    .line 125
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get carrier state from HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method isOemUnlockAllowedByDevice()Z
    .registers 6

    .line 164
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    .line 165
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v1, v1, [Ljava/lang/Boolean;

    .line 168
    .local v1, "allowedByDevice":[Ljava/lang/Boolean;
    :try_start_7
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v1}, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_31

    .line 175
    nop

    .line 177
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_3c

    .line 183
    const-string v3, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 180
    :pswitch_22
    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 186
    :goto_29
    :pswitch_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get device OEM unlock state"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :catch_31
    move-exception v3

    .line 173
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get devie state from HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .registers 7
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 89
    const-string v0, "OemLock"

    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, "signatureBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v2, p1, v1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v2

    packed-switch v2, :pswitch_data_56

    .line 103
    goto :goto_3d

    .line 96
    :pswitch_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Signature required for carrier unlock"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowed":Z
    .end local p2    # "signature":[B
    throw v2

    .line 99
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowed":Z
    .restart local p2    # "signature":[B
    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowed":Z
    .end local p2    # "signature":[B
    throw v2

    .line 92
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowed":Z
    .restart local p2    # "signature":[B
    :pswitch_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated carrier allows OEM lock state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 103
    :goto_3d
    const-string v2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :pswitch_42
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set carrier OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowed":Z
    .end local p2    # "signature":[B
    throw v2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4a} :catch_4a

    .line 108
    .end local v1    # "signatureBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowed":Z
    .restart local p2    # "signature":[B
    :catch_4a
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to set carrier state with HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_26
        :pswitch_42
        :pswitch_10
    .end packed-switch
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .registers 5
    .param p1, "allowedByDevice"    # Z

    .line 145
    const-string v0, "OemLock"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v1, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 151
    goto :goto_23

    .line 147
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated device allows OEM lock state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 151
    :goto_23
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :pswitch_28
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set device OEM unlock state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowedByDevice":Z
    throw v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_30

    .line 156
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowedByDevice":Z
    :catch_30
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to set device state with HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_28
    .end packed-switch
.end method
