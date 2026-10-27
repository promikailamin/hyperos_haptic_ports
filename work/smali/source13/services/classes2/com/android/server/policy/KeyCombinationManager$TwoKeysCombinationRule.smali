.class abstract Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TwoKeysCombinationRule"
.end annotation


# instance fields
.field private mKeyCode1:I

.field private mKeyCode2:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "keyCode1"    # I
    .param p2, "keyCode2"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 76
    iput p2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 77
    return-void
.end method


# virtual methods
.method abstract cancel()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 116
    return v0

    .line 118
    :cond_4
    instance-of v1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 119
    move-object v1, p1

    check-cast v1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 120
    .local v1, "that":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    iget v3, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    iget v4, v1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    if-ne v3, v4, :cond_18

    iget v5, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    iget v6, v1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-eq v5, v6, :cond_22

    :cond_18
    iget v5, v1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne v3, v5, :cond_21

    iget v3, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne v3, v4, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :cond_22
    :goto_22
    return v0

    .line 123
    .end local v1    # "that":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    :cond_23
    return v2
.end method

.method abstract execute()V
.end method

.method getKeyInterceptDelayMs()J
    .registers 3

    .line 100
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method preCondition()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method shouldInterceptKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 84
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method shouldInterceptKeys(Landroid/util/SparseLongArray;)Z
    .registers 8
    .param p1, "downTimes"    # Landroid/util/SparseLongArray;

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 90
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 91
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_34

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 92
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_34

    .line 93
    const/4 v2, 0x1

    return v2

    .line 95
    :cond_34
    const/4 v2, 0x0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 109
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method
