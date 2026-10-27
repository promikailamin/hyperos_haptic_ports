.class public final Lcom/android/server/timedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# instance fields
.field public mAutoDetectionEnabledSetting:Z

.field public mAutoDetectionSupported:Z

.field public mAutoSuggestionLowerBound:Ljava/time/Instant;

.field public mManualSuggestionLowerBound:Ljava/time/Instant;

.field public mOriginPriorities:[I

.field public mSuggestionUpperBound:Ljava/time/Instant;

.field public mSystemClockConfidenceThresholdMillis:I

.field public mSystemClockUpdateThresholdMillis:I

.field public mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAutoDetectionEnabledSetting(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoDetectionSupported(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoSuggestionLowerBound(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Ljava/time/Instant;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmManualSuggestionLowerBound(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Ljava/time/Instant;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mManualSuggestionLowerBound:Ljava/time/Instant;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOriginPriorities(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mOriginPriorities:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuggestionUpperBound(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Ljava/time/Instant;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSuggestionUpperBound:Ljava/time/Instant;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemClockConfidenceThresholdMillis(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockConfidenceThresholdMillis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemClockUpdateThresholdMillis(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockUpdateThresholdMillis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 3

    .line 378
    new-instance v0, Lcom/android/server/timedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;Lcom/android/server/timedetector/ConfigurationInternal-IA;)V

    return-object v0
.end method

.method public setAutoDetectionEnabledSetting(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 371
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    return-object p0
.end method

.method public setAutoDetectionSupported(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 329
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionSupported:Z

    return-object p0
.end method

.method public setAutoSuggestionLowerBound(Ljava/time/Instant;)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 3

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    iput-object p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    return-object p0
.end method

.method public setManualSuggestionLowerBound(Ljava/time/Instant;)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 3

    .line 353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    iput-object p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mManualSuggestionLowerBound:Ljava/time/Instant;

    return-object p0
.end method

.method public varargs setOriginPriorities([I)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [I

    iput-object p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mOriginPriorities:[I

    return-object p0
.end method

.method public setSuggestionUpperBound(Ljava/time/Instant;)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 3

    .line 359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    iput-object p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSuggestionUpperBound:Ljava/time/Instant;

    return-object p0
.end method

.method public setSystemClockConfidenceThresholdMillis(I)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 341
    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockConfidenceThresholdMillis:I

    return-object p0
.end method

.method public setSystemClockUpdateThresholdMillis(I)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 335
    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockUpdateThresholdMillis:I

    return-object p0
.end method

.method public setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 323
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return-object p0
.end method
