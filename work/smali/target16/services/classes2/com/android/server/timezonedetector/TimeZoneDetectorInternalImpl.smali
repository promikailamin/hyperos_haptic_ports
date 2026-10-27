.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorInternalImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserIdentityInjector:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

.field public final mHandler:Landroid/os/Handler;

.field public final mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public static synthetic $r8$lambda$mBHFmNM5bIrQZMojzV5JXmuVbwQ(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->lambda$handleLocationAlgorithmEvent$0(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    iput-object p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mCurrentUserIdentityInjector:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    .line 46
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    iput-object p4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    return-void
.end method


# virtual methods
.method public generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object p0

    return-object p0
.end method

.method public handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .registers 4

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$handleLocationAlgorithmEvent$0(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    return-void
.end method
