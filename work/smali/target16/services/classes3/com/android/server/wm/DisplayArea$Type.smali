.class final enum Lcom/android/server/wm/DisplayArea$Type;
.super Ljava/lang/Enum;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/DisplayArea$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ANY:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method public static synthetic $values()[Lcom/android/server/wm/DisplayArea$Type;
    .registers 3

    .line 840
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v2, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 842
    new-instance v0, Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ABOVE_TASKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 844
    new-instance v0, Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "BELOW_TASKS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 846
    new-instance v0, Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ANY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 840
    invoke-static {}, Lcom/android/server/wm/DisplayArea$Type;->$values()[Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 840
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V
    .registers 4

    .line 856
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_16

    if-eq p0, v1, :cond_b

    return-void

    .line 861
    :cond_b
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne p1, p0, :cond_10

    move v0, v1

    :cond_10
    const-string p0, "BELOW_TASKS can only contain BELOW_TASKS"

    invoke-static {v0, p0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void

    .line 858
    :cond_16
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne p1, p0, :cond_1b

    move v0, v1

    :cond_1b
    const-string p0, "ABOVE_TASKS can only contain ABOVE_TASKS"

    invoke-static {v0, p0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public static checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V
    .registers 7

    .line 849
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_b

    if-eq p1, v0, :cond_9

    goto :goto_b

    :cond_9
    move v0, v2

    goto :goto_c

    :cond_b
    :goto_b
    move v0, v1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " must be above BELOW_TASKS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 851
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne p0, v0, :cond_28

    if-ne p1, v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :cond_28
    :goto_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must be below ABOVE_TASKS"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public static typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;
    .registers 4

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 868
    check-cast p0, Lcom/android/server/wm/DisplayArea;

    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    .line 869
    :cond_b
    instance-of v0, p0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1a

    instance-of v0, p0, Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1a

    .line 870
    check-cast p0, Lcom/android/server/wm/WindowToken;

    invoke-static {p0}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object p0

    return-object p0

    .line 871
    :cond_1a
    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_21

    .line 872
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    .line 874
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static typeOf(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Type;
    .registers 2

    .line 879
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_a

    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    :cond_a
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/DisplayArea$Type;
    .registers 2

    .line 840
    const-class v0, Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayArea$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/DisplayArea$Type;
    .registers 1

    .line 840
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    invoke-virtual {v0}, [Lcom/android/server/wm/DisplayArea$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/DisplayArea$Type;

    return-object v0
.end method
