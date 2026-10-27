.class public Lmiui/util/IWirelessSwitch;
.super Ljava/lang/Object;
.source "IWirelessSwitch.java"


# static fields
.field private static final blacklist DEFAULT:Ljava/lang/String; = "default"

.field private static final blacklist GET_WIRELESS_STATUS:I = 0x3

.field private static volatile blacklist INSTANCE:Lmiui/util/IWirelessSwitch; = null

.field private static final blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

.field private static final blacklist IS_WIRELESS_SUPPORTED:I = 0x1

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

.field private static final blacklist SET_WIRELESS_ENABLED:I = 0x2

.field public static final blacklist STATUS_BAD_VALUE:I = 0x3

.field public static final blacklist STATUS_FAILURE_UNKNOWN:I = 0x1

.field public static final blacklist STATUS_NOT_SUPPORTED:I = 0x2

.field public static final blacklist STATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IWirelessSwitch"

.field public static final blacklist WIRELESS_DISABLED:I = 0x1

.field public static final blacklist WIRELESS_ENABLED:I = 0x0

.field public static final blacklist WIRELESS_NOT_SUPPORTED:I = 0x2

.field public static final blacklist WIRELESS_STATUS_UNKNOWN:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lmiui/util/IWirelessSwitch;
    .registers 2

    .line 37
    sget-object v0, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    if-nez v0, :cond_17

    .line 38
    const-class v0, Lmiui/util/IWirelessSwitch;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-object v1, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    if-nez v1, :cond_12

    .line 40
    new-instance v1, Lmiui/util/IWirelessSwitch;

    invoke-direct {v1}, Lmiui/util/IWirelessSwitch;-><init>()V

    sput-object v1, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    .line 42
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 44
    :cond_17
    :goto_17
    sget-object v0, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    return-object v0
.end method


# virtual methods
.method public blacklist getWirelessChargingStatus()I
    .registers 9

    .line 117
    const-string v0, "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

    const-string v1, "IWirelessSwitch"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 119
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x3

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 120
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_5f

    .line 121
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 122
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    invoke-interface {v4, v3, v5, v2, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 124
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 125
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 126
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 127
    .local v0, "val":I
    if-eqz v0, :cond_44

    const/4 v6, 0x1

    if-eq v0, v6, :cond_44

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid wireless charging status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 130
    :cond_44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current wireless charging status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5a} :catch_66
    .catchall {:try_start_a .. :try_end_5a} :catchall_64

    .line 132
    :goto_5a
    nop

    .line 137
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 132
    return v0

    .line 137
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_5f
    nop

    :goto_60
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 138
    goto :goto_7f

    .line 137
    :catchall_64
    move-exception v0

    goto :goto_85

    .line 134
    :catch_66
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWirelessChargingStatus transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_67 .. :try_end_7d} :catchall_64

    .line 137
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_60

    .line 140
    :goto_7f
    const-string v0, "Failed calling getWirelessChargingStatus!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v3

    .line 137
    :goto_85
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 138
    throw v0
.end method

.method public blacklist isWirelessChargingSupported()Z
    .registers 8

    .line 52
    const-string v0, "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

    const-string v1, "IWirelessSwitch"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 54
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 55
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_39

    .line 56
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 57
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 59
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 60
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 61
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 62
    .local v6, "val":I
    if-nez v6, :cond_34

    .line 63
    const-string v0, "Wireless charging switch not supported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_40
    .catchall {:try_start_a .. :try_end_2f} :catchall_3e

    .line 64
    nop

    .line 71
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 64
    return v3

    .line 66
    :cond_34
    nop

    .line 71
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 66
    return v0

    .line 71
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    .end local v6    # "val":I
    :cond_39
    nop

    :goto_3a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 72
    goto :goto_59

    .line 71
    :catchall_3e
    move-exception v0

    goto :goto_5f

    .line 68
    :catch_40
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWirelessChargingSupported transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_3e

    .line 71
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3a

    .line 74
    :goto_59
    const-string v0, "Failed calling isWirelessChargingSupported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v3

    .line 71
    :goto_5f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 72
    throw v0
.end method

.method public blacklist setWirelessChargingEnabled(Z)I
    .registers 9
    .param p1, "enable"    # Z

    .line 84
    const-string v0, "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

    const-string v1, "IWirelessSwitch"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 86
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    :try_start_9
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    .line 87
    .local v3, "hwService":Landroid/os/IHwBinder;
    if-eqz v3, :cond_65

    .line 88
    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    .line 89
    .local v4, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v4, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 91
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v2, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 92
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 93
    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 94
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 95
    .local v0, "val":I
    if-nez v0, :cond_4a

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set wireless charging switch to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successfully."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 98
    :cond_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set wireless charging switch failed, err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_60} :catch_6c
    .catchall {:try_start_9 .. :try_end_60} :catchall_6a

    .line 100
    :goto_60
    nop

    .line 105
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 100
    return v0

    .line 105
    .end local v0    # "val":I
    .end local v3    # "hwService":Landroid/os/IHwBinder;
    .end local v4    # "hidl_request":Landroid/os/HwParcel;
    :cond_65
    nop

    :goto_66
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 106
    goto :goto_85

    .line 105
    :catchall_6a
    move-exception v0

    goto :goto_8c

    .line 102
    :catch_6c
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWirelessChargingEnabled transact failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_6a

    .line 105
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_66

    .line 108
    :goto_85
    const-string v0, "Failed calling setWirelessChargingEnabled!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    return v0

    .line 105
    :goto_8c
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 106
    throw v0
.end method
