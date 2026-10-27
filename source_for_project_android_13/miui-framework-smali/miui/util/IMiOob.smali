.class public Lmiui/util/IMiOob;
.super Ljava/lang/Object;
.source "IMiOob.java"


# static fields
.field private static final blacklist DEFAULT:Ljava/lang/String; = "default"

.field private static volatile blacklist INSTANCE:Lmiui/util/IMiOob; = null

.field private static final blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

.field private static final blacklist MIOOB_SET_BT_STATE:I = 0x1

.field private static final blacklist MIOOB_SET_RX_CR:I = 0x2

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

.field public static final blacklist STATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IMiOob"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lmiui/util/IMiOob;
    .registers 2

    .line 28
    sget-object v0, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    if-nez v0, :cond_17

    .line 29
    const-class v0, Lmiui/util/IMiOob;

    monitor-enter v0

    .line 30
    :try_start_7
    sget-object v1, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    if-nez v1, :cond_12

    .line 31
    new-instance v1, Lmiui/util/IMiOob;

    invoke-direct {v1}, Lmiui/util/IMiOob;-><init>()V

    sput-object v1, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    .line 33
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 35
    :cond_17
    :goto_17
    sget-object v0, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    return-object v0
.end method


# virtual methods
.method public blacklist setBtState(I)Z
    .registers 9
    .param p1, "state"    # I

    .line 43
    const-string v0, "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

    const-string v1, "IMiOob"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 45
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 46
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_3c

    .line 47
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 48
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 50
    const/4 v0, 0x1

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 51
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 52
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 53
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 54
    .local v6, "val":I
    if-eqz v6, :cond_37

    .line 55
    const-string v0, "set bt state failed!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_43
    .catchall {:try_start_a .. :try_end_32} :catchall_41

    .line 56
    nop

    .line 63
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 56
    return v3

    .line 58
    :cond_37
    nop

    .line 63
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 58
    return v0

    .line 63
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    .end local v6    # "val":I
    :cond_3c
    nop

    :goto_3d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 64
    goto :goto_5c

    .line 63
    :catchall_41
    move-exception v0

    goto :goto_62

    .line 60
    :catch_43
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :try_start_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBtState transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_41

    .line 63
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3d

    .line 66
    :goto_5c
    const-string v0, "Failed calling setBtState!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v3

    .line 63
    :goto_62
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 64
    throw v0
.end method

.method public blacklist setRxCr(Ljava/lang/String;)Z
    .registers 10
    .param p1, "cr"    # Ljava/lang/String;

    .line 76
    const-string v0, "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

    const-string v1, "IMiOob"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 78
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 79
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_69

    .line 80
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 81
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x2

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 84
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 85
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 86
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 87
    .local v0, "val":I
    if-eqz v0, :cond_48

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set mioob charging switch failed, err = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_43} :catch_70
    .catchall {:try_start_a .. :try_end_43} :catchall_6e

    .line 89
    nop

    .line 97
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 89
    return v3

    .line 91
    :cond_48
    :try_start_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mioob set rx cr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successfully."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_64} :catch_70
    .catchall {:try_start_48 .. :try_end_64} :catchall_6e

    .line 92
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 92
    return v1

    .line 97
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_69
    nop

    :goto_6a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 98
    goto :goto_89

    .line 97
    :catchall_6e
    move-exception v0

    goto :goto_8f

    .line 94
    :catch_70
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRxCr transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_71 .. :try_end_87} :catchall_6e

    .line 97
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6a

    .line 100
    :goto_89
    const-string v0, "Failed calling setRxCr!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v3

    .line 97
    :goto_8f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 98
    throw v0
.end method
