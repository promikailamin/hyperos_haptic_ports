.class public abstract synthetic Lcom/android/server/vibrator/VibratorManagerService$3;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1258
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession$Status;->values()[Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    :try_start_9
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method
