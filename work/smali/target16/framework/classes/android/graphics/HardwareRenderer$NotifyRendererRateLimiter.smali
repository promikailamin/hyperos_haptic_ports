.class Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;
.super Lcom/android/internal/util/RateLimitingCache;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyRendererRateLimiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/RateLimitingCache<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_NOTIFY_PERIOD_MILLIS:J = 0x64L


# instance fields
.field private blacklist mNotifyCount:I

.field private blacklist mNotifyReason:Ljava/lang/String;

.field private final blacklist mNotifyRendererRunnable:Lcom/android/internal/util/RateLimitingCache$ValueFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache$ValueFetcher<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$RiKzVGy0DoxBNYM1JQ3R7mMZyr4(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->lambda$new$0(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyIfAllow(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->notifyIfAllow(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .registers 5

    .line 221
    invoke-direct {p0, p3, p4}, Lcom/android/internal/util/RateLimitingCache;-><init>(J)V

    .line 223
    iput-object p2, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance p2, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyRendererRunnable:Lcom/android/internal/util/RateLimitingCache$ValueFetcher;

    .line 237
    return-void
.end method

.method private blacklist getNotifyReason()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyReason:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist incrementNotifyCount()V
    .registers 2

    .line 246
    iget v0, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyCount:I

    .line 247
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/String;)Ljava/lang/Void;
    .registers 6

    .line 225
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->getNotifyReason()Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 228
    :goto_f
    const-wide/16 v2, 0x8

    if-eqz v1, :cond_2d

    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 232
    :catchall_2b
    move-exception p1

    goto :goto_3e

    .line 229
    :cond_2d
    :goto_2d
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 230
    iget-object p1, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_2b

    .line 232
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 233
    nop

    .line 234
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->incrementNotifyCount()V

    .line 235
    const/4 p1, 0x0

    return-object p1

    .line 232
    :goto_3e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 233
    throw p1
.end method

.method private blacklist notifyIfAllow(Ljava/lang/String;)I
    .registers 2

    .line 240
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyReason:Ljava/lang/String;

    .line 241
    iget-object p1, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyRendererRunnable:Lcom/android/internal/util/RateLimitingCache$ValueFetcher;

    invoke-virtual {p0, p1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    .line 242
    iget p1, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->mNotifyCount:I

    return p1
.end method
