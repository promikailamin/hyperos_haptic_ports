.class public Lmiui/util/IMiCharge;
.super Ljava/lang/Object;
.source "IMiCharge.java"


# static fields
.field private static final blacklist DEFAULT:Ljava/lang/String; = "default"

.field private static final blacklist GET_BATT_AUTHENTIC:I = 0x1f

.field private static final blacklist GET_BATT_CAPACITY:I = 0xb

.field private static final blacklist GET_BATT_CHARGE_FULL:I = 0x3

.field private static final blacklist GET_BATT_CHARGE_TYPE:I = 0x4

.field private static final blacklist GET_BATT_CYCLE_COUNT:I = 0x1

.field private static final blacklist GET_BATT_IBAT:I = 0xc

.field private static final blacklist GET_BATT_RESISTANCE:I = 0xe

.field private static final blacklist GET_BATT_SOH:I = 0x2

.field private static final blacklist GET_BATT_TBAT:I = 0xd

.field private static final blacklist GET_BATT_THERMAL_LEVEL:I = 0xf

.field private static final blacklist GET_BATT_VBAT:I = 0xa

.field private static final blacklist GET_BT_TRANSFER_START_STATE:I = 0x22

.field private static final blacklist GET_CAR_CHG_TYPE:I = 0x26

.field private static final blacklist GET_CHG_POWER_MAX:I = 0x24

.field private static final blacklist GET_COOL_MODE_STATE:I = 0x1d

.field private static final blacklist GET_FAST_CHARGE_MODE_STATUS:I = 0x1a

.field private static final blacklist GET_INPUT_SUSPEND_STATE:I = 0x13

.field private static final blacklist GET_MI_CHARGE_COMMON:I = 0x2f

.field private static final blacklist GET_NIGHT_CHARGING_STATE:I = 0x20

.field private static final blacklist GET_PD_APDO_MAX:I = 0x9

.field private static final blacklist GET_PD_AUTHENTICATION:I = 0x8

.field private static final blacklist GET_PS_VALUE:I = 0x2c

.field private static final blacklist GET_QUICK_CHARGE_TYPE:I = 0x10

.field private static final blacklist GET_SB_STATE:I = 0x2a

.field private static final blacklist GET_SOC_DECIMAL:I = 0x1b

.field private static final blacklist GET_SOC_DECIMAL_RATE:I = 0x1c

.field private static final blacklist GET_TX_ADAPTER:I = 0x7

.field private static final blacklist GET_USB_CURRENT:I = 0x6

.field private static final blacklist GET_USB_VOLTAGE:I = 0x5

.field private static final blacklist GET_WIRELESS_REVERSE_CHARGE_STATUS:I = 0x11

.field private static final blacklist GET_WIRELESS_REVERSE_STATE:I = 0x17

.field private static final blacklist GET_WLS_FW_STATUS:I = 0x28

.field private static volatile blacklist INSTANCE:Lmiui/util/IMiCharge; = null

.field private static final blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

.field private static final blacklist IS_BATTERYLIFE_SUPPORTED:I = 0x12

.field private static final blacklist IS_DP_CONNECTED:I = 0x32

.field private static final blacklist IS_FUNCTION_SUPPORTED:I = 0x30

.field private static final blacklist IS_USB32:I = 0x31

.field private static final blacklist IS_WIRELESS_REVERSE_SUPPORTED:I = 0x15

.field private static final blacklist IS_WLS_FW_UPDATE_SUPPORTED:I = 0x27

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

.field private static final blacklist SET_BT_STATE:I = 0x18

.field private static final blacklist SET_BT_TRANSFER_START_STATE:I = 0x23

.field private static final blacklist SET_COOL_MODE_STATE:I = 0x1e

.field private static final blacklist SET_INPUT_SUSPEND_STATE:I = 0x14

.field private static final blacklist SET_MI_CHARGE_COMMON:I = 0x2e

.field private static final blacklist SET_NIGHT_CHARGING_STATE:I = 0x21

.field private static final blacklist SET_RXCX_STATE:I = 0x19

.field private static final blacklist SET_SB_STATE:I = 0x2b

.field private static final blacklist SET_SM_COUNT_RESET:I = 0x2d

.field private static final blacklist SET_UPDATE_WLS_FW:I = 0x29

.field private static final blacklist SET_WIRELESS_REVERSE_ENABLED:I = 0x16

.field private static final blacklist SET_WLS_TX_SPEED:I = 0x25

.field public static final blacklist STATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IMiCharge"

.field public static final blacklist WIRELESS_DISABLED:I = 0x1

.field public static final blacklist WIRELESS_ENABLED:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getHidlValue(I)Ljava/lang/String;
    .registers 8
    .param p1, "method"    # I

    .line 110
    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 111
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    const/4 v2, 0x0

    .line 113
    .local v2, "val":Ljava/lang/String;
    :try_start_8
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    .line 114
    .local v3, "hwService":Landroid/os/IHwBinder;
    if-eqz v3, :cond_27

    .line 115
    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    .line 116
    .local v4, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    invoke-interface {v3, p1, v4, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 118
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 119
    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 120
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_2e
    .catchall {:try_start_8 .. :try_end_26} :catchall_2c

    move-object v2, v0

    .line 125
    .end local v3    # "hwService":Landroid/os/IHwBinder;
    .end local v4    # "hidl_request":Landroid/os/HwParcel;
    :cond_27
    nop

    :goto_28
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 126
    goto :goto_49

    .line 125
    :catchall_2c
    move-exception v0

    goto :goto_4a

    .line 122
    :catch_2e
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v3, "IMiCharge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiCharge transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_2c

    .line 125
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_28

    .line 127
    :goto_49
    return-object v2

    .line 125
    :goto_4a
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 126
    throw v0
.end method

.method private blacklist getHidlValueInt(I)I
    .registers 8
    .param p1, "method"    # I

    .line 89
    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 90
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    const/4 v2, 0x0

    .line 92
    .local v2, "val":I
    :try_start_8
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    .line 93
    .local v3, "hwService":Landroid/os/IHwBinder;
    if-eqz v3, :cond_27

    .line 94
    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    .line 95
    .local v4, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    invoke-interface {v3, p1, v4, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 97
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 98
    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 99
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_2e
    .catchall {:try_start_8 .. :try_end_26} :catchall_2c

    move v2, v0

    .line 104
    .end local v3    # "hwService":Landroid/os/IHwBinder;
    .end local v4    # "hidl_request":Landroid/os/HwParcel;
    :cond_27
    nop

    :goto_28
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 105
    goto :goto_49

    .line 104
    :catchall_2c
    move-exception v0

    goto :goto_4a

    .line 101
    :catch_2e
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v3, "IMiCharge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiCharge transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_2c

    .line 104
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_28

    .line 106
    :goto_49
    return v2

    .line 104
    :goto_4a
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 105
    throw v0
.end method

.method public static blacklist getInstance()Lmiui/util/IMiCharge;
    .registers 2

    .line 78
    sget-object v0, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    if-nez v0, :cond_17

    .line 79
    const-class v0, Lmiui/util/IMiCharge;

    monitor-enter v0

    .line 80
    :try_start_7
    sget-object v1, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    if-nez v1, :cond_12

    .line 81
    new-instance v1, Lmiui/util/IMiCharge;

    invoke-direct {v1}, Lmiui/util/IMiCharge;-><init>()V

    sput-object v1, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    .line 83
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 85
    :cond_17
    :goto_17
    sget-object v0, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    return-object v0
.end method

.method private blacklist setHidlBooleanValue(IZ)Z
    .registers 11
    .param p1, "method"    # I
    .param p2, "value"    # Z

    .line 160
    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    const-string v1, "IMiCharge"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 162
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 163
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_76

    .line 164
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 165
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 167
    invoke-interface {v4, p1, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 168
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 169
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 170
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 171
    .local v0, "val":I
    if-eqz v0, :cond_51

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed, err = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4c} :catch_7d
    .catchall {:try_start_a .. :try_end_4c} :catchall_7b

    .line 173
    nop

    .line 181
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 173
    return v3

    .line 175
    :cond_51
    :try_start_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successfully."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_71} :catch_7d
    .catchall {:try_start_51 .. :try_end_71} :catchall_7b

    .line 176
    const/4 v1, 0x1

    .line 181
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 176
    return v1

    .line 181
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_76
    nop

    :goto_77
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 182
    goto :goto_9a

    .line 181
    :catchall_7b
    move-exception v0

    goto :goto_b1

    .line 178
    :catch_7d
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    .line 181
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_77

    .line 184
    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed calling "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v3

    .line 181
    :goto_b1
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 182
    throw v0
.end method

.method private blacklist setHidlValue(ILjava/lang/String;)Z
    .registers 11
    .param p1, "method"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 131
    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    const-string v1, "IMiCharge"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 133
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 134
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_76

    .line 135
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 136
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 138
    invoke-interface {v4, p1, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 139
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 140
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 141
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 142
    .local v0, "val":I
    if-eqz v0, :cond_51

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed, err = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4c} :catch_7d
    .catchall {:try_start_a .. :try_end_4c} :catchall_7b

    .line 144
    nop

    .line 152
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 144
    return v3

    .line 146
    :cond_51
    :try_start_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successfully."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_71} :catch_7d
    .catchall {:try_start_51 .. :try_end_71} :catchall_7b

    .line 147
    const/4 v1, 0x1

    .line 152
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 147
    return v1

    .line 152
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_76
    nop

    :goto_77
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 153
    goto :goto_9a

    .line 152
    :catchall_7b
    move-exception v0

    goto :goto_b1

    .line 149
    :catch_7d
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    .line 152
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_77

    .line 155
    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed calling "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v3

    .line 152
    :goto_b1
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 153
    throw v0
.end method


# virtual methods
.method public blacklist getBatteryAuthentic()Ljava/lang/String;
    .registers 2

    .line 332
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryCapacity()Ljava/lang/String;
    .registers 2

    .line 230
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryChargeFull()Ljava/lang/String;
    .registers 2

    .line 198
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryChargeType()Ljava/lang/String;
    .registers 2

    .line 202
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryCycleCount()Ljava/lang/String;
    .registers 2

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryIbat()Ljava/lang/String;
    .registers 2

    .line 234
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryResistance()Ljava/lang/String;
    .registers 2

    .line 242
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatterySoh()Ljava/lang/String;
    .registers 2

    .line 194
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryTbat()Ljava/lang/String;
    .registers 2

    .line 238
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryThermaLevel()Ljava/lang/String;
    .registers 2

    .line 246
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryVbat()Ljava/lang/String;
    .registers 2

    .line 226
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBtTransferStartState()Ljava/lang/String;
    .registers 2

    .line 345
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCarChargingType()Ljava/lang/String;
    .registers 2

    .line 363
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChargingPowerMax()Ljava/lang/String;
    .registers 2

    .line 354
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCoolModeState()Ljava/lang/String;
    .registers 2

    .line 323
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFastChargeModeStatus()Ljava/lang/String;
    .registers 2

    .line 311
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputSuspendState()Ljava/lang/String;
    .registers 2

    .line 266
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMiChargePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 447
    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 448
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    const/4 v2, 0x0

    .line 450
    .local v2, "val":Ljava/lang/String;
    :try_start_8
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    .line 451
    .local v3, "hwService":Landroid/os/IHwBinder;
    if-eqz v3, :cond_2c

    .line 452
    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    .line 453
    .local v4, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 455
    const/16 v0, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 456
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 457
    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_33
    .catchall {:try_start_8 .. :try_end_2b} :catchall_31

    move-object v2, v0

    .line 463
    .end local v3    # "hwService":Landroid/os/IHwBinder;
    .end local v4    # "hidl_request":Landroid/os/HwParcel;
    :cond_2c
    nop

    :goto_2d
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 464
    goto :goto_4e

    .line 463
    :catchall_31
    move-exception v0

    goto :goto_4f

    .line 460
    :catch_33
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v3, "IMiCharge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiCharge transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_31

    .line 463
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2d

    .line 465
    :goto_4e
    return-object v2

    .line 463
    :goto_4f
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 464
    throw v0
.end method

.method public blacklist getNightChargingState()Ljava/lang/String;
    .registers 2

    .line 336
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPSValue()Ljava/lang/String;
    .registers 2

    .line 393
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPdApdoMax()Ljava/lang/String;
    .registers 2

    .line 222
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPdAuthentication()Ljava/lang/String;
    .registers 2

    .line 218
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQuickChargeType()Ljava/lang/String;
    .registers 2

    .line 250
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSBState()Ljava/lang/String;
    .registers 2

    .line 384
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSocDecimal()Ljava/lang/String;
    .registers 2

    .line 315
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSocDecimalRate()Ljava/lang/String;
    .registers 2

    .line 319
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTxAdapt()Ljava/lang/String;
    .registers 2

    .line 214
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsbCurrent()Ljava/lang/String;
    .registers 2

    .line 210
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsbVoltage()Ljava/lang/String;
    .registers 2

    .line 206
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWirelessChargingStatus()I
    .registers 4

    .line 290
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 293
    const/4 v1, 0x0

    return v1

    .line 294
    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 295
    return v2

    .line 298
    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getWirelessFwStatus()Ljava/lang/String;
    .registers 2

    .line 375
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWirelessReverseStatus()Ljava/lang/String;
    .registers 2

    .line 254
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isBatteryLifeFunctionSupported()Z
    .registers 3

    .line 258
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValueInt(I)I

    move-result v0

    .line 259
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 260
    const/4 v1, 0x0

    return v1

    .line 262
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isDPConnected()Z
    .registers 3

    .line 410
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValueInt(I)I

    move-result v0

    .line 411
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 412
    const/4 v1, 0x0

    return v1

    .line 414
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isFunctionSupported(Ljava/lang/String;)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 469
    const-string v0, "IMiCharge"

    const-string v1, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 470
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 472
    .local v4, "val":Ljava/lang/Boolean;
    :try_start_e
    const-string v5, "default"

    invoke-static {v1, v5}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v5

    .line 473
    .local v5, "hwService":Landroid/os/IHwBinder;
    if-eqz v5, :cond_55

    .line 474
    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    .line 475
    .local v6, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v6, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 477
    const/16 v1, 0x30

    invoke-interface {v5, v1, v6, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 478
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 479
    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 480
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v1

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiCharge transact function "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " successfully. val = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_55} :catch_5c
    .catchall {:try_start_e .. :try_end_55} :catchall_5a

    .line 486
    .end local v5    # "hwService":Landroid/os/IHwBinder;
    .end local v6    # "hidl_request":Landroid/os/HwParcel;
    :cond_55
    nop

    :goto_56
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 487
    goto :goto_75

    .line 486
    :catchall_5a
    move-exception v0

    goto :goto_7a

    .line 483
    :catch_5c
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiCharge transact failed. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_5a

    .line 486
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_56

    .line 488
    :goto_75
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 486
    :goto_7a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 487
    throw v0
.end method

.method public blacklist isUSB32()Z
    .registers 3

    .line 402
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValueInt(I)I

    move-result v0

    .line 403
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 404
    const/4 v1, 0x0

    return v1

    .line 406
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isWirelessChargingSupported()Z
    .registers 3

    .line 274
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValueInt(I)I

    move-result v0

    .line 275
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 276
    const/4 v1, 0x0

    return v1

    .line 278
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isWiressFwUpdateSupported()Z
    .registers 3

    .line 367
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValueInt(I)I

    move-result v0

    .line 368
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 369
    const/4 v1, 0x0

    return v1

    .line 371
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setBtState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setBtTransferStartState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x23

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setCoolModeState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setInputSuspendState(Ljava/lang/String;)Z
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .line 270
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setMiChargePath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 418
    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    const-string v1, "IMiCharge"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 420
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    .line 421
    .local v4, "hwService":Landroid/os/IHwBinder;
    if-eqz v4, :cond_6d

    .line 422
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 423
    .local v5, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 426
    const/16 v0, 0x2e

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 427
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 428
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 429
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 430
    .local v0, "val":I
    if-eqz v0, :cond_4c

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set 46 failed, err = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_47} :catch_74
    .catchall {:try_start_a .. :try_end_47} :catchall_72

    .line 432
    nop

    .line 440
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 432
    return v3

    .line 434
    :cond_4c
    :try_start_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "46 to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successfully."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_68} :catch_74
    .catchall {:try_start_4c .. :try_end_68} :catchall_72

    .line 435
    const/4 v1, 0x1

    .line 440
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 435
    return v1

    .line 440
    .end local v0    # "val":I
    .end local v4    # "hwService":Landroid/os/IHwBinder;
    .end local v5    # "hidl_request":Landroid/os/HwParcel;
    :cond_6d
    nop

    :goto_6e
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 441
    goto :goto_8d

    .line 440
    :catchall_72
    move-exception v0

    goto :goto_93

    .line 437
    :catch_74
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    :try_start_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "46transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_72

    .line 440
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6e

    .line 442
    :goto_8d
    const-string v0, "Failed calling 46"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v3

    .line 440
    :goto_93
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 441
    throw v0
.end method

.method public blacklist setNightChargingState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x21

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setRxCr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cr"    # Ljava/lang/String;

    .line 307
    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setSBState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setSmCountReset(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setUpdateWirelessFw(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x29

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist setWirelessChargingEnabled(Z)I
    .registers 4
    .param p1, "enable"    # Z

    .line 282
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lmiui/util/IMiCharge;->setHidlBooleanValue(IZ)Z

    move-result v0

    .line 283
    .local v0, "ret":Z
    if-eqz v0, :cond_a

    .line 284
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_a
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist setWlsTxSpeed(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Lmiui/util/IMiCharge;->setHidlValue(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method
