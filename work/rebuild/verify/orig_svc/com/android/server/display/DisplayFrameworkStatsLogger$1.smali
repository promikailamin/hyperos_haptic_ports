.class public abstract synthetic Lcom/android/server/display/DisplayFrameworkStatsLogger$1;
.super Ljava/lang/Object;
.source "DisplayFrameworkStatsLogger.java"


# static fields
.field public static final synthetic $SwitchMap$android$view$DisplayInfo$DisplayInfoChangeSource:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    invoke-static {}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->values()[Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/display/DisplayFrameworkStatsLogger$1;->$SwitchMap$android$view$DisplayInfo$DisplayInfoChangeSource:[I

    :try_start_9
    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v1}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/display/DisplayFrameworkStatsLogger$1;->$SwitchMap$android$view$DisplayInfo$DisplayInfoChangeSource:[I

    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v1}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/display/DisplayFrameworkStatsLogger$1;->$SwitchMap$android$view$DisplayInfo$DisplayInfoChangeSource:[I

    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_SWAP:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v1}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/server/display/DisplayFrameworkStatsLogger$1;->$SwitchMap$android$view$DisplayInfo$DisplayInfoChangeSource:[I

    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v1}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
