.class public final synthetic Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/SoftwareRateLimiter;

.field public final synthetic f$1:Lcom/android/server/locksettings/LskfIdentifier;

.field public final synthetic f$2:Ljava/time/Duration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/SoftwareRateLimiter;

    iput-object p2, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/locksettings/LskfIdentifier;

    iput-object p3, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;->f$2:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/SoftwareRateLimiter;

    iget-object v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/locksettings/LskfIdentifier;

    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;->f$2:Ljava/time/Duration;

    check-cast p1, Lcom/android/server/locksettings/LskfIdentifier;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->$r8$lambda$sA59ekXpBo0SPFlDnbNgnSfG71c(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    move-result-object p0

    return-object p0
.end method
