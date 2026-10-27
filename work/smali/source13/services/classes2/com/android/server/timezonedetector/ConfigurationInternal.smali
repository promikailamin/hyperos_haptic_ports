.class public final Lcom/android/server/timezonedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;,
        Lcom/android/server/timezonedetector/ConfigurationInternal$DetectionMode;
    }
.end annotation


# static fields
.field public static final DETECTION_MODE_GEO:I = 0x2

.field public static final DETECTION_MODE_MANUAL:I = 0x1

.field public static final DETECTION_MODE_TELEPHONY:I = 0x3

.field public static final DETECTION_MODE_UNKNOWN:I


# instance fields
.field private final mAutoDetectionEnabledSetting:Z

.field private final mEnhancedMetricsCollectionEnabled:Z

.field private final mGeoDetectionEnabledSetting:Z

.field private final mGeoDetectionRunInBackgroundEnabled:Z

.field private final mGeoDetectionSupported:Z

.field private final mLocationEnabledSetting:Z

.field private final mTelephonyDetectionSupported:Z

.field private final mTelephonyFallbackSupported:Z

.field private final mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedMetricsCollectionEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoDetectionRunInBackgroundEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyFallbackSupported(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/timezonedetector/ConfigurationInternal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    return p0
.end method

.method private constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmTelephonyDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 71
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmGeoDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 72
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmTelephonyFallbackSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 73
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmGeoDetectionRunInBackgroundEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 74
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmEnhancedMetricsCollectionEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 75
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmAutoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 77
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmUserId(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 78
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 79
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmLocationEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 80
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmGeoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;Lcom/android/server/timezonedetector/ConfigurationInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V

    return-void
.end method

.method private asCapabilities()Landroid/app/time/TimeZoneCapabilities;
    .registers 10

    .line 199
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 200
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 202
    .local v1, "builder":Landroid/app/time/TimeZoneCapabilities$Builder;
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isUserConfigAllowed()Z

    move-result v2

    .line 206
    .local v2, "allowConfigDateTime":Z
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v3

    .line 209
    .local v3, "deviceHasAutoTimeZoneDetection":Z
    if-nez v3, :cond_18

    .line 210
    const/16 v4, 0xa

    .local v4, "configureAutoDetectionEnabledCapability":I
    goto :goto_1f

    .line 211
    .end local v4    # "configureAutoDetectionEnabledCapability":I
    :cond_18
    if-nez v2, :cond_1d

    .line 212
    const/16 v4, 0x14

    .restart local v4    # "configureAutoDetectionEnabledCapability":I
    goto :goto_1f

    .line 214
    .end local v4    # "configureAutoDetectionEnabledCapability":I
    :cond_1d
    const/16 v4, 0x28

    .line 216
    .restart local v4    # "configureAutoDetectionEnabledCapability":I
    :goto_1f
    invoke-virtual {v1, v4}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v5

    .line 223
    .local v5, "deviceHasLocationTimeZoneDetection":Z
    if-nez v5, :cond_2b

    .line 224
    const/16 v6, 0xa

    .local v6, "configureGeolocationDetectionEnabledCapability":I
    goto :goto_3b

    .line 225
    .end local v6    # "configureGeolocationDetectionEnabledCapability":I
    :cond_2b
    iget-boolean v6, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-eqz v6, :cond_39

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getLocationEnabledSetting()Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_39

    .line 228
    :cond_36
    const/16 v6, 0x28

    .restart local v6    # "configureGeolocationDetectionEnabledCapability":I
    goto :goto_3b

    .line 226
    .end local v6    # "configureGeolocationDetectionEnabledCapability":I
    :cond_39
    :goto_39
    const/16 v6, 0x1e

    .line 230
    .restart local v6    # "configureGeolocationDetectionEnabledCapability":I
    :goto_3b
    invoke-virtual {v1, v6}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 238
    if-nez v2, :cond_43

    .line 239
    const/16 v7, 0x14

    .local v7, "suggestManualTimeZoneCapability":I
    goto :goto_4e

    .line 240
    .end local v7    # "suggestManualTimeZoneCapability":I
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 241
    const/16 v7, 0x1e

    .restart local v7    # "suggestManualTimeZoneCapability":I
    goto :goto_4e

    .line 243
    .end local v7    # "suggestManualTimeZoneCapability":I
    :cond_4c
    const/16 v7, 0x28

    .line 245
    .restart local v7    # "suggestManualTimeZoneCapability":I
    :goto_4e
    invoke-virtual {v1, v7}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSuggestManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 247
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v8

    return-object v8
.end method

.method private asConfiguration()Landroid/app/time/TimeZoneConfiguration;
    .registers 3

    .line 252
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 252
    return-object v0
.end method


# virtual methods
.method public createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 4

    .line 194
    new-instance v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 276
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 277
    return v0

    .line 279
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    .line 282
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 283
    .local v2, "that":Lcom/android/server/timezonedetector/ConfigurationInternal;
    iget v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    if-ne v3, v4, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    .line 280
    .end local v2    # "that":Lcom/android/server/timezonedetector/ConfigurationInternal;
    :cond_54
    :goto_54
    return v1
.end method

.method public getAutoDetectionEnabledBehavior()Z
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getAutoDetectionEnabledSetting()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    return v0
.end method

.method public getDetectionMode()I
    .registers 2

    .line 169
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-nez v0, :cond_8

    .line 170
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getLocationEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 172
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 173
    const/4 v0, 0x2

    return v0

    .line 175
    :cond_1c
    const/4 v0, 0x3

    return v0
.end method

.method public getGeoDetectionEnabledSetting()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    return v0
.end method

.method getGeoDetectionRunInBackgroundEnabled()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    return v0
.end method

.method public getLocationEnabledSetting()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 297
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 298
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 299
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 300
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 297
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAutoDetectionSupported()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isEnhancedMetricsCollectionEnabled()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    return v0
.end method

.method public isGeoDetectionExecutionEnabled()Z
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 187
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getLocationEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-eqz v0, :cond_16

    .line 188
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 189
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 186
    :goto_1f
    return v0
.end method

.method public isGeoDetectionSupported()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    return v0
.end method

.method public isTelephonyDetectionSupported()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    return v0
.end method

.method public isTelephonyFallbackSupported()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    return v0
.end method

.method public isUserConfigAllowed()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    return v0
.end method

.method public merge(Landroid/app/time/TimeZoneConfiguration;)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 4
    .param p1, "newConfiguration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 264
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 265
    .local v0, "builder":Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 266
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 268
    :cond_12
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 269
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 271
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationInternal{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserConfigAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTelephonyDetectionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGeoDetectionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTelephonyFallbackSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGeoDetectionRunInBackgroundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnhancedMetricsCollectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoDetectionEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocationEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGeoDetectionEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
