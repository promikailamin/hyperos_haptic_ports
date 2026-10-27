.class public final Lcom/android/server/input/KeyCombinationManager;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# instance fields
.field public final mActiveRules:Ljava/util/ArrayList;

.field public final mDownTimes:Landroid/util/SparseLongArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mRules:Ljava/util/ArrayList;

.field public mTriggeredRule:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method public static synthetic $r8$lambda$CidjyhhukqY7DMAh3Xq4CMUo7e8(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 1

    .line 168
    invoke-virtual {p0}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$LCNbEqp9pnuCaGMC3R5EM7e6mEw(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fd0IFGnP8HInFcUtKC78un-Mam4(Lcom/android/server/input/KeyCombinationManager;Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyCombinationManager;->lambda$interceptKeyLocked$2(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kxe0CJhHLdR_o6H-luUYFde8RLw(Lcom/android/server/input/KeyCombinationManager;ILcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyCombinationManager;->lambda$interceptKeyLocked$1(ILcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 132
    iput-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 139
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 137
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyCombination rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 6

    .line 287
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 289
    iget-object v3, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    .line 290
    invoke-interface {p1, v3}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public final forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .registers 5

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_13

    .line 278
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    .line 279
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public getKeyInterceptTimeout(I)J
    .registers 10

    .line 230
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    .line 232
    monitor-exit v0

    return-wide v3

    :catchall_11
    move-exception p0

    goto :goto_42

    .line 235
    :cond_13
    iget-object v1, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :cond_1a
    :goto_1a
    if-ge v5, v2, :cond_33

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    .line 236
    invoke-virtual {v6, p1}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 237
    invoke-virtual {v6}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1a

    :cond_33
    const-wide/16 v1, 0x96

    .line 241
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 242
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    add-long/2addr p0, v1

    monitor-exit v0

    return-wide p0

    .line 243
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_11

    throw p0
.end method

.method public interceptKey(Landroid/view/KeyEvent;Z)Z
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 154
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .registers 12

    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 159
    :goto_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 160
    iget-object v4, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    if-eqz p2, :cond_8b

    if-eqz v0, :cond_8b

    .line 164
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-lez p1, :cond_47

    if-lez v4, :cond_44

    .line 165
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 166
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p1

    const-wide/16 v7, 0x96

    add-long/2addr p1, v7

    cmp-long p1, v5, p1

    if-lez p1, :cond_44

    .line 168
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_44
    if-nez v4, :cond_47

    return v2

    .line 176
    :cond_47
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p1

    const-wide/16 v7, 0x0

    cmp-long p1, p1, v7

    if-nez p1, :cond_8a

    .line 177
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 183
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_6e

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    .line 186
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v3}, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyCombinationManager;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    goto :goto_b3

    .line 193
    :cond_6e
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_73

    return v1

    .line 198
    :cond_73
    new-instance p1, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/KeyCombinationManager;)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    .line 207
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_b3

    .line 209
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_8a
    return v2

    .line 214
    :cond_8b
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseLongArray;->delete(I)V

    sub-int/2addr v4, v1

    :goto_91
    if-ltz v4, :cond_b3

    .line 216
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    .line 217
    invoke-virtual {p1, v3}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 218
    iget-object p2, p0, Lcom/android/server/input/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    iget-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_b0
    add-int/lit8 v4, v4, -0x1

    goto :goto_91

    :cond_b3
    :goto_b3
    return v2
.end method

.method public isKeyConsumed(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 252
    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_21

    .line 254
    :cond_10
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    monitor-exit v0

    return v2

    .line 255
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$interceptKeyLocked$1(ILcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3

    .line 187
    invoke-virtual {p2, p1}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 188
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public final synthetic lambda$interceptKeyLocked$2(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKeys(Landroid/util/SparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 202
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing combination rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCombinationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    iput-object p1, p0, Lcom/android/server/input/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    const/4 p0, 0x1

    return p0
.end method
