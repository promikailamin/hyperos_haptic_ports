.class public final Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.super Ljava/lang/Object;
.source "MetricsTimeZoneDetectorState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;,
        Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$DetectionMode;
    }
.end annotation


# static fields
.field public static final DETECTION_MODE_GEO:I = 0x2

.field public static final DETECTION_MODE_MANUAL:I = 0x1

.field public static final DETECTION_MODE_TELEPHONY:I = 0x3

.field public static final DETECTION_MODE_UNKNOWN:I


# instance fields
.field private final mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field private final mDeviceTimeZoneId:Ljava/lang/String;

.field private final mDeviceTimeZoneIdOrdinal:I

.field private final mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

.field private final mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

.field private final mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;


# direct methods
.method private constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal;ILjava/lang/String;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)V
    .registers 8
    .param p1, "configurationInternal"    # Lcom/android/server/timezonedetector/ConfigurationInternal;
    .param p2, "deviceTimeZoneIdOrdinal"    # I
    .param p3, "deviceTimeZoneId"    # Ljava/lang/String;
    .param p4, "latestManualSuggestion"    # Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .param p5, "latestTelephonySuggestion"    # Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .param p6, "latestGeolocationSuggestion"    # Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ConfigurationInternal;

    iput-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 75
    iput p2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 76
    iput-object p3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 78
    iput-object p5, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 79
    iput-object p6, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 80
    return-void
.end method

.method public static create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 23
    .param p1, "configurationInternal"    # Lcom/android/server/timezonedetector/ConfigurationInternal;
    .param p2, "deviceTimeZoneId"    # Ljava/lang/String;
    .param p3, "latestManualSuggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .param p4, "latestTelephonySuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .param p5, "latestGeolocationSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/timezonedetector/ConfigurationInternal;",
            "Ljava/lang/String;",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            "Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            ")",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;"
        }
    .end annotation

    .line 94
    .local p0, "tzIdOrdinalGenerator":Lcom/android/server/timezonedetector/OrdinalGenerator;, "Lcom/android/server/timezonedetector/OrdinalGenerator<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isEnhancedMetricsCollectionEnabled()Z

    move-result v1

    .line 95
    .local v1, "includeZoneIds":Z
    if-eqz v1, :cond_b

    move-object/from16 v6, p2

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    move-object v6, v2

    .line 96
    .local v6, "metricDeviceTimeZoneId":Ljava/lang/String;
    :goto_d
    nop

    .line 97
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    move-result v2

    .line 98
    .local v2, "deviceTimeZoneIdOrdinal":I
    nop

    .line 99
    move-object/from16 v10, p3

    invoke-static {v0, v10, v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v11

    .line 101
    .local v11, "latestCanonicalManualSuggestion":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    nop

    .line 102
    move-object/from16 v12, p4

    invoke-static {v0, v12, v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v13

    .line 104
    .local v13, "latestCanonicalTelephonySuggestion":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    nop

    .line 105
    move-object/from16 v14, p5

    invoke-static {v0, v14, v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v15

    .line 108
    .local v15, "latestCanonicalGeolocationSuggestion":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    new-instance v16, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move v5, v2

    move-object v7, v11

    move-object v8, v13

    move-object v9, v15

    invoke-direct/range {v3 .. v9}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal;ILjava/lang/String;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)V

    return-object v16
.end method

.method private static createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 8
    .param p1, "manualSuggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .param p2, "includeFullZoneIds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            "Z)",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;"
        }
    .end annotation

    .line 257
    .local p0, "zoneIdOrdinalGenerator":Lcom/android/server/timezonedetector/OrdinalGenerator;, "Lcom/android/server/timezonedetector/OrdinalGenerator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 258
    return-object v0

    .line 261
    :cond_4
    invoke-virtual {p1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "suggestionZoneId":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_10

    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    .line 263
    .local v0, "metricZoneIds":[Ljava/lang/String;
    :cond_10
    new-array v3, v3, [I

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v2

    move-object v2, v3

    .line 264
    .local v2, "zoneIdOrdinals":[I
    invoke-static {v0, v2}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createCertain([Ljava/lang/String;[I)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    return-object v3
.end method

.method private static createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 8
    .param p1, "telephonySuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .param p2, "includeFullZoneIds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;",
            "Z)",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;"
        }
    .end annotation

    .line 272
    .local p0, "zoneIdOrdinalGenerator":Lcom/android/server/timezonedetector/OrdinalGenerator;, "Lcom/android/server/timezonedetector/OrdinalGenerator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 273
    return-object v0

    .line 275
    :cond_4
    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "suggestionZoneId":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 277
    invoke-static {}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createUncertain()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v0

    return-object v0

    .line 279
    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_17

    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    .line 280
    .local v0, "metricZoneIds":[Ljava/lang/String;
    :cond_17
    new-array v3, v3, [I

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v2

    move-object v2, v3

    .line 281
    .local v2, "zoneIdOrdinals":[I
    invoke-static {v0, v2}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createCertain([Ljava/lang/String;[I)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    return-object v3
.end method

.method private static createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 7
    .param p1, "geolocationSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .param p2, "includeFullZoneIds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            "Z)",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;"
        }
    .end annotation

    .line 289
    .local p0, "zoneIdOrdinalGenerator":Lcom/android/server/timezonedetector/OrdinalGenerator;, "Lcom/android/server/timezonedetector/OrdinalGenerator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 290
    return-object v0

    .line 293
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "zoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_f

    .line 295
    invoke-static {}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createUncertain()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v0

    return-object v0

    .line 297
    :cond_f
    if-eqz p2, :cond_1a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 298
    .local v0, "metricZoneIds":[Ljava/lang/String;
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinals(Ljava/util/List;)[I

    move-result-object v2

    .line 299
    .local v2, "zoneIdOrdinals":[I
    invoke-static {v0, v2}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createCertain([Ljava/lang/String;[I)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 219
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 220
    return v0

    .line 222
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 225
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 226
    .local v2, "that":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    iget v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    iget v4, v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 227
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v4, v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 228
    invoke-virtual {v3, v4}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    iget-object v4, v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 229
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    iget-object v4, v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 230
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    iget-object v4, v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 231
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 226
    :goto_4f
    return v0

    .line 223
    .end local v2    # "that":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    :cond_50
    :goto_50
    return v1
.end method

.method public getAutoDetectionEnabledSetting()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledSetting()Z

    move-result v0

    return v0
.end method

.method public getDetectionMode()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 171
    const/4 v0, 0x0

    return v0

    .line 169
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 167
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 165
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method public getDeviceTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTimeZoneIdOrdinal()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    return v0
.end method

.method public getGeoDetectionEnabledSetting()Z
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result v0

    return v0
.end method

.method public getGeoDetectionRunInBackgroundEnabled()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v0

    return v0
.end method

.method public getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-object v0
.end method

.method public getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-object v0
.end method

.method public getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-object v0
.end method

.method public getUserLocationEnabledSetting()Z
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getLocationEnabledSetting()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 236
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnhancedMetricsCollectionEnabled()Z
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isEnhancedMetricsCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isGeoDetectionSupported()Z
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isTelephonyDetectionSupported()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isTelephonyTimeZoneFallbackSupported()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetricsTimeZoneDetectorState{mConfigurationInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceTimeZoneIdOrdinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceTimeZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatestManualSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatestTelephonySuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatestGeolocationSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
