.class Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final blacklist FRAME_DELAY_MS:J = 0xaL

.field public static final blacklist sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field blacklist mCurrentFrameTime:J

.field private final blacklist mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListDirty:Z

.field private blacklist mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method private blacklist cleanUpList()V
    .registers 3

    .line 180
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_21

    .line 181
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1e

    .line 182
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 183
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 186
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 188
    :cond_21
    return-void
.end method

.method public static blacklist getFrameTime()J
    .registers 2

    .line 92
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 93
    const-wide/16 v0, 0x0

    return-wide v0

    .line 95
    :cond_b
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    iget-wide v0, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method public static blacklist getInstance()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;
    .registers 2

    .line 85
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 86
    new-instance v1, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    :cond_10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method

.method private blacklist isCallbackDue(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8
    .param p1, "callback"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "currentTime"    # J

    .line 168
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 169
    .local v0, "startTime":Ljava/lang/Long;
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 170
    return v1

    .line 172
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_1a

    .line 173
    iget-object v2, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return v1

    .line 176
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist addAnimationFrameCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 7
    .param p1, "callback"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "delay"    # J

    .line 122
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 123
    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 125
    :cond_f
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 126
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_30

    .line 130
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_30
    return-void
.end method

.method blacklist doAnimationFrame(J)V
    .registers 8
    .param p1, "frameTime"    # J

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 149
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 150
    iget-object v3, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 151
    .local v3, "callback":Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v3, :cond_18

    .line 152
    goto :goto_21

    .line 154
    :cond_18
    invoke-direct {p0, v3, v0, v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 155
    invoke-interface {v3, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 149
    .end local v3    # "callback":Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 158
    .end local v2    # "i":I
    :cond_24
    invoke-direct {p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    .line 159
    return-void
.end method

.method blacklist getProvider()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_1d

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 110
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_1d

    .line 112
    :cond_14
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 115
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method public blacklist removeCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 138
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 140
    .local v0, "id":I
    if-ltz v0, :cond_16

    .line 141
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 144
    :cond_16
    return-void
.end method

.method public blacklist setProvider(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 103
    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 104
    return-void
.end method
