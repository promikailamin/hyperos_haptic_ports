.class public Lcom/android/server/locksettings/SoftwareRateLimiterResult;
.super Ljava/lang/Object;
.source "SoftwareRateLimiterResult.java"


# static fields
.field public static final CONTINUE_TO_HARDWARE_RESULT:Lcom/android/server/locksettings/SoftwareRateLimiterResult;


# instance fields
.field public final code:I

.field public final timeout:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;-><init>(ILjava/time/Duration;)V

    sput-object v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->CONTINUE_TO_HARDWARE_RESULT:Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    return-void
.end method

.method public constructor <init>(ILjava/time/Duration;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->code:I

    .line 65
    iput-object p2, p0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->timeout:Ljava/time/Duration;

    return-void
.end method

.method public static continueToHardware()Lcom/android/server/locksettings/SoftwareRateLimiterResult;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->CONTINUE_TO_HARDWARE_RESULT:Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    return-object v0
.end method

.method public static credentialTooShort()Lcom/android/server/locksettings/SoftwareRateLimiterResult;
    .registers 3

    .line 69
    new-instance v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;-><init>(ILjava/time/Duration;)V

    return-object v0
.end method

.method public static duplicateWrongGuess()Lcom/android/server/locksettings/SoftwareRateLimiterResult;
    .registers 3

    .line 81
    new-instance v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;-><init>(ILjava/time/Duration;)V

    return-object v0
.end method

.method public static noMoreGuesses()Lcom/android/server/locksettings/SoftwareRateLimiterResult;
    .registers 3

    .line 73
    new-instance v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;-><init>(ILjava/time/Duration;)V

    return-object v0
.end method

.method public static rateLimited(Ljava/time/Duration;)Lcom/android/server/locksettings/SoftwareRateLimiterResult;
    .registers 3

    .line 77
    new-instance v0, Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;-><init>(ILjava/time/Duration;)V

    return-object v0
.end method
