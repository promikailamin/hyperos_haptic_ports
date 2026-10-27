.class public Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;
.super Ljava/lang/Object;
.source "SoftwareRateLimiter.java"


# instance fields
.field public lockoutEndTime:Ljava/time/Duration;

.field public numDuplicateWrongGuesses:I

.field public numFailures:I

.field public final savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

.field public statsCredentialType:I

.field public timeSinceBootOfLastFailure:Ljava/time/Duration;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->statsCredentialType:I

    .line 155
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->timeSinceBootOfLastFailure:Ljava/time/Duration;

    .line 162
    iput-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    const/4 v0, 0x5

    .line 168
    new-array v0, v0, [Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    .line 172
    iput p1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    return-void
.end method
