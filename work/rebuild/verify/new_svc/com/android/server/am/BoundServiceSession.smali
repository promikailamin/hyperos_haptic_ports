.class public Lcom/android/server/am/BoundServiceSession;
.super Ljava/lang/Object;
.source "BoundServiceSession.java"

# interfaces
.implements Landroid/app/IBinderSession;


# static fields
.field static final MAX_UNIQUE_TAGS:I = 0x7f

.field static final OVERFLOW_TAG:Ljava/lang/String; = "_overflow_tags"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mConnection:Ljava/lang/ref/WeakReference;

.field final mCountByKey:Landroid/util/IntArray;

.field public final mDebugName:Ljava/lang/String;

.field final mKeyByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mKnownBad:Z

.field public final mProcessStateUpdater:Ljava/util/function/BiConsumer;

.field mTotal:I


# direct methods
.method public static synthetic $r8$lambda$FUrQoVPMO03ZifqYD1Kcc-n37q0(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "open("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_S37nDQY2WB2N5NK4EKXDcA-dwY(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$kt8ugU7uEakaR1YHVcBRxL4_dV4(Lcom/android/server/am/BoundServiceSession;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BoundServiceSession;->lambda$binderTransactionStarting$1(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xksnv9uoXGNYavadGzMfnN-ZKbA(I)Ljava/lang/String;
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/server/am/BoundServiceSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BoundServiceSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiConsumer;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    .line 73
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    .line 81
    iput-boolean v0, p0, Lcom/android/server/am/BoundServiceSession;->mKnownBad:Z

    .line 85
    iput-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mProcessStateUpdater:Ljava/util/function/BiConsumer;

    .line 86
    iput-object p2, p0, Lcom/android/server/am/BoundServiceSession;->mConnection:Ljava/lang/ref/WeakReference;

    .line 87
    iput-object p3, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public static getKey(J)I
    .registers 2

    .line 99
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p0

    return p0
.end method

.method public static getToken(I)J
    .registers 3

    const v0, 0xfbd5e55

    .line 91
    invoke-static {v0, p0}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isValidToken(J)Z
    .registers 2

    .line 95
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result p0

    const p1, 0xfbd5e55

    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public binderTransactionCompleted(J)V
    .registers 5

    .line 174
    monitor-enter p0

    .line 175
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/am/BoundServiceSession;->isValidToken(J)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " received in binderTransactionCompleted! Closing all transactions on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BoundServiceSession;->handleInvalidToken(Ljava/lang/String;)V

    .line 179
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    goto :goto_82

    .line 181
    :cond_2d
    invoke-static {p1, p2}, Lcom/android/server/am/BoundServiceSession;->getKey(J)I

    move-result p1

    .line 182
    iget-object p2, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p2

    if-le p2, p1, :cond_62

    iget-object p2, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->get(I)I

    move-result p2

    if-gtz p2, :cond_42

    goto :goto_62

    .line 188
    :cond_42
    new-instance p2, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/BoundServiceSession;->logTraceInstant(Ljava/util/function/Supplier;)V

    .line 189
    iget-object p2, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/IntArray;->set(II)V

    .line 190
    iget p1, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    if-nez p1, :cond_60

    .line 192
    invoke-virtual {p0}, Lcom/android/server/am/BoundServiceSession;->maybePostProcessStateUpdate()V

    .line 194
    :cond_60
    monitor-exit p0

    return-void

    .line 183
    :cond_62
    :goto_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad key "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " received in binderTransactionCompleted! Closing all transactions on "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BoundServiceSession;->handleInvalidToken(Ljava/lang/String;)V

    .line 186
    monitor-exit p0

    return-void

    .line 194
    :goto_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_2b

    throw p1
.end method

.method public binderTransactionStarting(Ljava/lang/String;)J
    .registers 7

    .line 144
    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_5f

    .line 148
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_70

    .line 149
    iget-object v3, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ne v3, v1, :cond_70

    .line 150
    sget-object v1, Lcom/android/server/am/BoundServiceSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many tags supplied on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Current tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Existing map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    const-string v3, "_overflow_tags"

    invoke-virtual {v1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_70

    :catchall_5d
    move-exception p1

    goto :goto_93

    .line 156
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BoundServiceSession;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 161
    :cond_70
    :goto_70
    invoke-static {v2}, Lcom/android/server/am/BoundServiceSession;->getToken(I)J

    move-result-wide v0

    .line 162
    new-instance v3, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/BoundServiceSession;->logTraceInstant(Ljava/util/function/Supplier;)V

    .line 163
    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/util/IntArray;->set(II)V

    .line 164
    iget p1, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    if-ne p1, v4, :cond_91

    .line 166
    invoke-virtual {p0}, Lcom/android/server/am/BoundServiceSession;->maybePostProcessStateUpdate()V

    .line 168
    :cond_91
    monitor-exit p0

    return-wide v0

    .line 169
    :goto_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_5d

    throw p1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bound service session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 200
    monitor-enter p0

    .line 201
    :try_start_17
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 202
    const-string v0, "Connection present: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v0, "Yes"

    goto :goto_2e

    :catchall_2a
    move-exception p1

    goto :goto_7a

    :cond_2c
    const-string v0, "No"

    :goto_2e
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const-string v0, "Ongoing bound service calls: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 207
    iget v0, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    if-lez v0, :cond_75

    .line 208
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 209
    :goto_43
    iget-object v1, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 210
    iget-object v1, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    iget-object v3, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 212
    :cond_6f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 213
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 216
    :cond_75
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 217
    monitor-exit p0

    return-void

    :goto_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_17 .. :try_end_7b} :catchall_2a

    throw p1
.end method

.method public final handleInvalidToken(Ljava/lang/String;)V
    .registers 6

    .line 126
    new-instance v0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BoundServiceSession;->logTraceInstant(Ljava/util/function/Supplier;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/server/am/BoundServiceSession;->mKnownBad:Z

    const-string v1, "; Counts: "

    const-string v2, ". Current keys: "

    if-nez v0, :cond_35

    .line 128
    sget-object v0, Lcom/android/server/am/BoundServiceSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/android/server/am/BoundServiceSession;->mKnownBad:Z

    goto :goto_56

    .line 132
    :cond_35
    sget-object v0, Lcom/android/server/am/BoundServiceSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_56
    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mKeyByTag:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 135
    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->clear()V

    .line 136
    iget p1, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    if-eqz p1, :cond_6a

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    .line 138
    invoke-virtual {p0}, Lcom/android/server/am/BoundServiceSession;->maybePostProcessStateUpdate()V

    :cond_6a
    return-void
.end method

.method public final synthetic lambda$binderTransactionStarting$1(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 157
    iget-object p1, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 158
    iget-object p0, p0, Lcom/android/server/am/BoundServiceSession;->mCountByKey:Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final logTraceInstant(Ljava/util/function/Supplier;)V
    .registers 5

    const-wide/16 v0, 0x40

    .line 114
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    const-string p1, "bound_service_calls"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public final maybePostProcessStateUpdate()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession;->mConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    if-nez v0, :cond_28

    .line 106
    sget-object v0, Lcom/android/server/am/BoundServiceSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BoundServiceSession;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already gone. Possibly the service has unbound."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/BoundServiceSession;->mProcessStateUpdater:Ljava/util/function/BiConsumer;

    iget p0, p0, Lcom/android/server/am/BoundServiceSession;->mTotal:I

    if-lez p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
