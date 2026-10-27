.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorInternalImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "timeZoneDetectorStrategy"    # Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 41
    return-void
.end method


# virtual methods
.method public generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$suggestGeolocationTimeZone$0$com-android-server-timezonedetector-TimeZoneDetectorInternalImpl(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 3
    .param p1, "timeZoneSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 50
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method

.method public suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 4
    .param p1, "timeZoneSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
