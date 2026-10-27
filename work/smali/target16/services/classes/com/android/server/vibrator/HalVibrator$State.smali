.class public final enum Lcom/android/server/vibrator/HalVibrator$State;
.super Ljava/lang/Enum;
.source "HalVibrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/HalVibrator$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/HalVibrator$State;

.field public static final enum IDLE:Lcom/android/server/vibrator/HalVibrator$State;

.field public static final enum UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/HalVibrator$State;

.field public static final enum VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;


# direct methods
.method public static synthetic $values()[Lcom/android/server/vibrator/HalVibrator$State;
    .registers 3

    .line 46
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    sget-object v1, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    sget-object v2, Lcom/android/server/vibrator/HalVibrator$State;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/HalVibrator$State;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/vibrator/HalVibrator$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Lcom/android/server/vibrator/HalVibrator$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/HalVibrator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/HalVibrator$State;->IDLE:Lcom/android/server/vibrator/HalVibrator$State;

    new-instance v0, Lcom/android/server/vibrator/HalVibrator$State;

    const-string v1, "VIBRATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/HalVibrator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/HalVibrator$State;->VIBRATING:Lcom/android/server/vibrator/HalVibrator$State;

    new-instance v0, Lcom/android/server/vibrator/HalVibrator$State;

    const-string v1, "UNDER_EXTERNAL_CONTROL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/HalVibrator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/HalVibrator$State;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/HalVibrator$State;

    .line 46
    invoke-static {}, Lcom/android/server/vibrator/HalVibrator$State;->$values()[Lcom/android/server/vibrator/HalVibrator$State;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HalVibrator$State;->$VALUES:[Lcom/android/server/vibrator/HalVibrator$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/HalVibrator$State;
    .registers 2

    .line 46
    const-class v0, Lcom/android/server/vibrator/HalVibrator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/HalVibrator$State;

    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/HalVibrator$State;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/server/vibrator/HalVibrator$State;->$VALUES:[Lcom/android/server/vibrator/HalVibrator$State;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/HalVibrator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/HalVibrator$State;

    return-object v0
.end method
