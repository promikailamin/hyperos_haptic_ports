.class public Lcom/android/server/power/stats/processor/MultiStateStats$States;
.super Ljava/lang/Object;
.source "MultiStateStats.java"


# instance fields
.field public final mLabels:[Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mTracked:Z


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public static findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 79
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 80
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public static forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    .registers 6

    .line 107
    array-length v0, p2

    if-ge p3, v0, :cond_22

    .line 108
    aget-object v0, p1, p3

    iget-boolean v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v0, :cond_f

    add-int/lit8 p3, p3, 0x1

    .line 109
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 112
    :goto_10
    aget-object v1, p1, p3

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 113
    aput v0, p2, p3

    add-int/lit8 v1, p3, 0x1

    .line 114
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    return-void

    .line 118
    :cond_22
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V
    .registers 4

    .line 93
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void
.end method


# virtual methods
.method public getLabels()[Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isTracked()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    return p0
.end method
