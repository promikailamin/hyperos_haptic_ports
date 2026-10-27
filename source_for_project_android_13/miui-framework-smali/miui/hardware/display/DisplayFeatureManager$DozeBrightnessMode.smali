.class final enum Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
.super Ljava/lang/Enum;
.source "DisplayFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/DisplayFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DozeBrightnessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

.field public static final enum blacklist DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

.field public static final enum blacklist DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

.field public static final enum blacklist DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 294
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const-string v1, "DOZE_TO_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 295
    new-instance v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const-string v3, "DOZE_BRIGHTNESS_HBM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 296
    new-instance v3, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const-string v5, "DOZE_BRIGHTNESS_LBM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 293
    const/4 v5, 0x3

    new-array v5, v5, [Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->$VALUES:[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 293
    const-class v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    return-object v0
.end method

.method public static blacklist values()[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    .registers 1

    .line 293
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->$VALUES:[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    invoke-virtual {v0}, [Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    return-object v0
.end method
