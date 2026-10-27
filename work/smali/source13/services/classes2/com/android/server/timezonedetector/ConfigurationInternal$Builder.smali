.class public Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/ConfigurationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoDetectionEnabledSetting:Z

.field private mEnhancedMetricsCollectionEnabled:Z

.field private mGeoDetectionEnabledSetting:Z

.field private mGeoDetectionRunInBackgroundEnabled:Z

.field private mGeoDetectionSupported:Z

.field private mLocationEnabledSetting:Z

.field private mTelephonyDetectionSupported:Z

.field private mTelephonyFallbackSupported:Z

.field private mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedMetricsCollectionEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoDetectionRunInBackgroundEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyFallbackSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 341
    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .registers 3
    .param p1, "toCopy"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmUserId(Lcom/android/server/timezonedetector/ConfigurationInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 348
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 349
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmTelephonyDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    .line 350
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmTelephonyFallbackSupported(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    .line 351
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmGeoDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    .line 352
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmGeoDetectionRunInBackgroundEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 353
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmEnhancedMetricsCollectionEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    .line 354
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmAutoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    .line 355
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmLocationEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    .line 356
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->-$$Nest$fgetmGeoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    .line 357
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 3

    .line 437
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;Lcom/android/server/timezonedetector/ConfigurationInternal-IA;)V

    return-object v0
.end method

.method public setAutoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 414
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    .line 415
    return-object p0
.end method

.method public setEnhancedMetricsCollectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 406
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    .line 407
    return-object p0
.end method

.method public setGeoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 430
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    .line 431
    return-object p0
.end method

.method public setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 379
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    .line 380
    return-object p0
.end method

.method public setGeoDetectionRunInBackgroundEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 398
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 399
    return-object p0
.end method

.method public setLocationEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 422
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    .line 423
    return-object p0
.end method

.method public setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 371
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    .line 372
    return-object p0
.end method

.method public setTelephonyFallbackSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 388
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    .line 389
    return-object p0
.end method

.method public setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "configAllowed"    # Z

    .line 363
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 364
    return-object p0
.end method
