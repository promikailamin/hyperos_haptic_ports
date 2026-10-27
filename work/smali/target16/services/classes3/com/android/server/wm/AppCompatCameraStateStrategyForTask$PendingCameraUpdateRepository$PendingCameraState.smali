.class final enum Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;
.super Ljava/lang/Enum;
.source "AppCompatCameraStateStrategyForTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

.field public static final enum CLOSED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

.field public static final enum OPENED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;


# direct methods
.method public static synthetic $values()[Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;
    .registers 2

    .line 277
    sget-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->OPENED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    sget-object v1, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->CLOSED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    filled-new-array {v0, v1}, [Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 278
    new-instance v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    const-string v1, "OPENED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->OPENED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    .line 279
    new-instance v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->CLOSED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    .line 277
    invoke-static {}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->$values()[Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->$VALUES:[Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;
    .registers 2

    .line 277
    const-class v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;
    .registers 1

    .line 277
    sget-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->$VALUES:[Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    invoke-virtual {v0}, [Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    return-object v0
.end method
