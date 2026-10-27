.class final enum Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;
.super Ljava/lang/Enum;
.source "Toggle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

.field public static final enum STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

.field public static final enum STAGE_INITIAL:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

.field public static final enum STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

.field public static final enum STAGE_WAITING:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;


# direct methods
.method public static synthetic $values()[Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;
    .registers 4

    .line 42
    sget-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    sget-object v1, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_INITIAL:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    sget-object v2, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_WAITING:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    sget-object v3, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    const-string v1, "STAGE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 51
    new-instance v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    const-string v1, "STAGE_INITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_INITIAL:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 56
    new-instance v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    const-string v1, "STAGE_WAITING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_WAITING:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 61
    new-instance v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    const-string v1, "STAGE_CONTINUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 42
    invoke-static {}, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->$values()[Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->$VALUES:[Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;
    .registers 2

    .line 42
    const-class v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0
.end method

.method public static values()[Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->$VALUES:[Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    invoke-virtual {v0}, [Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object v0
.end method
