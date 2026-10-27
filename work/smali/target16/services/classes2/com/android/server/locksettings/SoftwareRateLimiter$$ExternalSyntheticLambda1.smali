.class public final synthetic Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/SoftwareRateLimiter;

.field public final synthetic f$1:Lcom/android/server/locksettings/LskfIdentifier;

.field public final synthetic f$2:Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/locksettings/SoftwareRateLimiter;

    iput-object p2, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/locksettings/LskfIdentifier;

    iput-object p3, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/locksettings/SoftwareRateLimiter;

    iget-object v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/locksettings/LskfIdentifier;

    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    invoke-static {v0, v1, p0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->$r8$lambda$z7n07uUyXV7fgBfIMqy9uq7LpmU(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    return-void
.end method
