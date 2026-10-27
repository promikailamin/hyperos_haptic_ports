.class Landroid/app/NotificationManager$RateLimiter;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateLimiter"
.end annotation


# static fields
.field private static final blacklist RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;


# instance fields
.field private final blacklist mInputRateEstimator:Landroid/service/notification/RateEstimator;

.field private final blacklist mLimitRate:F

.field private blacklist mLogSilencedUntil:Ljava/time/Instant;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOutputRateEstimator:Landroid/service/notification/RateEstimator;

.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 889
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$RateLimiter;->RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 898
    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    new-instance p1, Landroid/service/notification/RateEstimator;

    invoke-direct {p1}, Landroid/service/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    .line 900
    new-instance p1, Landroid/service/notification/RateEstimator;

    invoke-direct {p1}, Landroid/service/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    .line 901
    iput-object p2, p0, Landroid/app/NotificationManager$RateLimiter;->mName:Ljava/lang/String;

    .line 902
    iput p3, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    .line 903
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method blacklist eventExceedsRate()Z
    .registers 4

    .line 906
    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->millis()J

    move-result-wide v0

    .line 907
    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/RateEstimator;->update(J)V

    .line 908
    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v0

    iget v1, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method blacklist recordAccepted()V
    .registers 4

    .line 912
    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v1}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/InstantSource;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/RateEstimator;->update(J)V

    .line 913
    return-void
.end method

.method blacklist recordRejected(Landroid/app/NotificationManager$NotificationKey;)V
    .registers 10

    .line 916
    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 917
    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 918
    return-void

    .line 921
    :cond_17
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 922
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager$RateLimiter;->mName:Ljava/lang/String;

    iget v5, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    .line 924
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v6, v1, v2}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    .line 925
    invoke-virtual {v7, v1, v2}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v4, p1, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 922
    const-string v1, "Shedding %s of %s, rate limit (%s) exceeded: input %s, output would be %s"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    sget-object p1, Landroid/app/NotificationManager$RateLimiter;->RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;

    invoke-virtual {v0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    .line 928
    return-void
.end method
