.class public Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    }
.end annotation


# static fields
.field private static final COMBINE_KEY_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "KeyCombinationManager"


# instance fields
.field private final mActiveRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownTimes:Landroid/util/SparseLongArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 130
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method private forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;)Z"
        }
    .end annotation

    .line 310
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;>;"
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 311
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 312
    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 313
    .local v2, "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    invoke-interface {p1, v2}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 314
    const/4 v3, 0x1

    return v3

    .line 311
    .end local v2    # "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 317
    .end local v1    # "index":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;>;"
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 301
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 302
    .local v2, "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 300
    .end local v2    # "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 304
    .end local v1    # "index":I
    :cond_13
    return-void
.end method

.method private interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .registers 14
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 162
    .local v0, "down":Z
    :goto_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 163
    .local v3, "keyCode":I
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 164
    .local v4, "count":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 166
    .local v5, "eventTime":J
    if-eqz p2, :cond_bc

    if-eqz v0, :cond_bc

    .line 168
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/policy/PhoneWindowManagerStub;->isPad()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    const/16 v8, 0x101

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3b

    .line 170
    invoke-static {}, Lcom/android/server/input/KeyboardCombinationManagerStub;->get()Lcom/android/server/input/KeyboardCombinationManagerStub;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/android/server/input/KeyboardCombinationManagerStub;->interceptKey(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 171
    return v1

    .line 175
    :cond_3b
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-lez v7, :cond_78

    .line 176
    if-lez v4, :cond_62

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 177
    invoke-virtual {v7, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    const-wide/16 v9, 0x96

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_62

    .line 179
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v1, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    return v2

    .line 182
    :cond_62
    if-nez v4, :cond_78

    .line 186
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    const-wide/16 v9, 0x12c

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_77

    .line 187
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->clear()V

    goto :goto_78

    .line 189
    :cond_77
    return v2

    .line 195
    :cond_78
    :goto_78
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_bb

    .line 196
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 202
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-ne v7, v1, :cond_9f

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 205
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager;I)V

    invoke-direct {p0, v1, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    goto :goto_e8

    .line 212
    :cond_9f
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz v7, :cond_a4

    .line 213
    return v1

    .line 217
    :cond_a4
    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    invoke-direct {p0, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    .line 226
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz v7, :cond_e8

    .line 228
    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return v1

    .line 199
    :cond_bb
    return v2

    .line 233
    :cond_bc
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseLongArray;->delete(I)V

    .line 234
    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_c3
    if-ltz v1, :cond_e8

    .line 235
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 236
    .local v7, "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    invoke-virtual {v7, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 237
    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    invoke-direct {v9, v7}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    .end local v7    # "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    :cond_e5
    add-int/lit8 v1, v1, -0x1

    goto :goto_c3

    .line 242
    .end local v1    # "index":I
    :cond_e8
    :goto_e8
    return v2
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method static synthetic lambda$interceptKeyLocked$0(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 1
    .param p0, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel()V

    return-void
.end method

.method static synthetic lambda$isPowerKeyIntercepted$3(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 2
    .param p0, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 286
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3
    .param p1, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 138
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 139
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_f
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyCombination rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 325
    return-void
.end method

.method getKeyInterceptTimeout(I)J
    .registers 9
    .param p1, "keyCode"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    .line 251
    monitor-exit v0

    return-wide v3

    .line 253
    :cond_11
    const-wide/16 v1, 0x0

    .line 254
    .local v1, "delayMs":J
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 255
    .local v4, "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    invoke-virtual {v4, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 256
    invoke-virtual {v4}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-wide v1, v5

    .line 258
    .end local v4    # "rule":Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    :cond_34
    goto :goto_19

    .line 260
    :cond_35
    const-wide/16 v3, 0x96

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v1, v3

    .line 261
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    add-long/2addr v3, v1

    monitor-exit v0

    return-wide v3

    .line 262
    .end local v1    # "delayMs":J
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method interceptKey(Landroid/view/KeyEvent;Z)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 155
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 157
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method isKeyConsumed(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 271
    monitor-exit v0

    return v2

    .line 275
    :cond_e
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 276
    :cond_1c
    invoke-static {}, Lcom/android/server/input/KeyboardCombinationManagerStub;->get()Lcom/android/server/input/KeyboardCombinationManagerStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/input/KeyboardCombinationManagerStub;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_26
    const/4 v2, 0x1

    :cond_27
    monitor-exit v0

    .line 275
    return v2

    .line 278
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method isPowerKeyIntercepted()Z
    .registers 9

    .line 285
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 288
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_26

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    const/16 v4, 0x1a

    invoke-virtual {v1, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_27

    :cond_26
    move v2, v3

    :cond_27
    monitor-exit v0

    return v2

    .line 290
    :cond_29
    monitor-exit v0

    return v2

    .line 291
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method synthetic lambda$interceptKeyLocked$1$com-android-server-policy-KeyCombinationManager(ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 206
    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_b
    return-void
.end method

.method synthetic lambda$interceptKeyLocked$2$com-android-server-policy-KeyCombinationManager(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .registers 4
    .param p1, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 218
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKeys(Landroid/util/SparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing combination rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCombinationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method removeRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 3
    .param p1, "rule"    # Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method
