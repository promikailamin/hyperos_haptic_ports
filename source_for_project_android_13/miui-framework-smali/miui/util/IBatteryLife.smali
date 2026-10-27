.class public Lmiui/util/IBatteryLife;
.super Ljava/lang/Object;
.source "IBatteryLife.java"


# static fields
.field public static final blacklist BATTERYLIFE_STATUS_UNKNOWN:I = 0x64

.field public static final blacklist CHARGE_FULL_STATUS_UNKNOWN:I = 0x0

.field private static final blacklist DEFAULT:Ljava/lang/String; = "default"

.field private static final blacklist GET_BATTERYLIFE_STATUS:I = 0x2

.field private static final blacklist GET_CHARGE_FULL_STATUS:I = 0x3

.field private static volatile blacklist INSTANCE:Lmiui/util/IBatteryLife; = null

.field private static final blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

.field private static final blacklist IS_BATTERYLIFE_SUPPORTED:I = 0x1

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

.field private static final blacklist TAG:Ljava/lang/String; = "IBatteryLife"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lmiui/util/IBatteryLife;
    .registers 2

    .line 30
    sget-object v0, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Lmiui/util/IBatteryLife;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Lmiui/util/IBatteryLife;

    invoke-direct {v1}, Lmiui/util/IBatteryLife;-><init>()V

    sput-object v1, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    .line 35
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    return-object v0
.end method


# virtual methods
.method public blacklist getBatteryChargeFullValue()I
    .registers 9

    .line 105
    const-string v0, "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

    const-string v1, "IBatteryLife"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 107
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 108
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_43

    .line 109
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 110
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x3

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 112
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 113
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 114
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 115
    .local v0, "val":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "valid chargefull status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3e} :catch_4a
    .catchall {:try_start_a .. :try_end_3e} :catchall_48

    .line 116
    nop

    .line 121
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 116
    return v0

    .line 121
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_43
    nop

    :goto_44
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 122
    goto :goto_63

    .line 121
    :catchall_48
    move-exception v0

    goto :goto_69

    .line 118
    :catch_4a
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryChargeFullValue transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_48

    .line 121
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_44

    .line 124
    :goto_63
    const-string v0, "Failed calling getBatteryChargeFullValue!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v3

    .line 121
    :goto_69
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 122
    throw v0
.end method

.method public blacklist getBatteryLifeValue()I
    .registers 9

    .line 77
    const-string v0, "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

    const-string v1, "IBatteryLife"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 79
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/16 v3, 0x64

    :try_start_b
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 80
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_65

    .line 81
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 82
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 84
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 85
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 86
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 87
    .local v0, "val":I
    if-lez v0, :cond_4a

    if-le v0, v3, :cond_2f

    goto :goto_4a

    .line 91
    :cond_2f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "valid batterylife status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_45} :catch_6c
    .catchall {:try_start_b .. :try_end_45} :catchall_6a

    .line 92
    nop

    .line 97
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 92
    return v0

    .line 88
    :cond_4a
    :goto_4a
    :try_start_4a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid batterylife status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_60} :catch_6c
    .catchall {:try_start_4a .. :try_end_60} :catchall_6a

    .line 89
    nop

    .line 97
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 89
    return v3

    .line 97
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_65
    nop

    :goto_66
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 98
    goto :goto_85

    .line 97
    :catchall_6a
    move-exception v0

    goto :goto_8b

    .line 94
    :catch_6c
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryLifeValue transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_6a

    .line 97
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_66

    .line 100
    :goto_85
    const-string v0, "Failed calling getBatteryLifeValue!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v3

    .line 97
    :goto_8b
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 98
    throw v0
.end method

.method public blacklist isBatteryLifeFunctionSupported()Z
    .registers 9

    .line 45
    const-string v0, "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

    const-string v1, "IBatteryLife"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 47
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 48
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_3e

    .line 49
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 50
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 52
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 53
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 54
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 55
    .local v6, "val":I
    if-nez v6, :cond_34

    .line 56
    const-string v0, "Batterylife function not supported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_45
    .catchall {:try_start_a .. :try_end_2f} :catchall_43

    .line 57
    nop

    .line 65
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 57
    return v3

    .line 59
    :cond_34
    :try_start_34
    const-string v7, "Batterylife function is supported!"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_45
    .catchall {:try_start_34 .. :try_end_39} :catchall_43

    .line 60
    nop

    .line 65
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 60
    return v0

    .line 65
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    .end local v6    # "val":I
    :cond_3e
    nop

    :goto_3f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 66
    goto :goto_5e

    .line 65
    :catchall_43
    move-exception v0

    goto :goto_64

    .line 62
    :catch_45
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBatteryLifeFunctionSupported transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_43

    .line 65
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 68
    :goto_5e
    const-string v0, "Failed calling isBatteryLifeFunctionSupported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v3

    .line 65
    :goto_64
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 66
    throw v0
.end method
