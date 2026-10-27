.class public Lcom/android/server/timedetector/TimeDetectorInternalImpl;
.super Ljava/lang/Object;
.source "TimeDetectorInternalImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorInternal;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserIdentityInjector:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

.field public final mHandler:Landroid/os/Handler;

.field public final mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

.field public final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public static synthetic $r8$lambda$bnCKR-V5eNm4k8BLYvsu1i339go(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->lambda$suggestNetworkTime$0(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCFx5COe-jm1Viw3JWZNtmNXMFA(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->lambda$suggestGnssTime$1(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;Lcom/android/server/timedetector/ServiceConfigAccessor;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    iput-object p3, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mCurrentUserIdentityInjector:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    .line 51
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/timedetector/ServiceConfigAccessor;

    iput-object p4, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 52
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object p5, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$suggestGnssTime$1(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method public final synthetic lambda$suggestNetworkTime$0(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .registers 4

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .registers 4

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
