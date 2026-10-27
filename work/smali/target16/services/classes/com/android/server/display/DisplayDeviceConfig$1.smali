.class public abstract synthetic Lcom/android/server/display/DisplayDeviceConfig$1;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$display$config$PredefinedBrightnessLimitNames:[I

.field public static final synthetic $SwitchMap$com$android$server$display$config$ThermalStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 3367
    invoke-static {}, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->values()[Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$PredefinedBrightnessLimitNames:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->_default:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$PredefinedBrightnessLimitNames:[I

    sget-object v3, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->adaptive:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 2847
    :catch_1d
    invoke-static {}, Lcom/android/server/display/config/ThermalStatus;->values()[Lcom/android/server/display/config/ThermalStatus;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    :try_start_26
    sget-object v3, Lcom/android/server/display/config/ThermalStatus;->none:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    sget-object v2, Lcom/android/server/display/config/ThermalStatus;->light:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    sget-object v1, Lcom/android/server/display/config/ThermalStatus;->moderate:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    sget-object v1, Lcom/android/server/display/config/ThermalStatus;->severe:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    sget-object v1, Lcom/android/server/display/config/ThermalStatus;->critical:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    sget-object v1, Lcom/android/server/display/config/ThermalStatus;->emergency:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    sget-object v1, Lcom/android/server/display/config/ThermalStatus;->shutdown:Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6f} :catch_6f

    :catch_6f
    return-void
.end method
