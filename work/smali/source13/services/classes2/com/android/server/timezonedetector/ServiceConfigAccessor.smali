.class public interface abstract Lcom/android/server/timezonedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/ServiceConfigAccessor$ProviderMode;
    }
.end annotation


# static fields
.field public static final IS_NOT_SUPPORT_MODEM:Z

.field public static final IS_TABLET_SUPPORT_MODEM:Z

.field public static final PROVIDER_MODE_DISABLED:Ljava/lang/String; = "disabled"

.field public static final PROVIDER_MODE_ENABLED:Ljava/lang/String; = "enabled"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 74
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "ro.radio.noril"

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 75
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_26

    .line 76
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    sput-boolean v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->IS_TABLET_SUPPORT_MODEM:Z

    .line 77
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->IS_NOT_SUPPORT_MODEM:Z

    return-void
.end method


# virtual methods
.method public abstract addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract addLocationTimeZoneManagerConfigListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;
.end method

.method public abstract getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;
.end method

.method public abstract getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;
.end method

.method public abstract getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;
.end method

.method public abstract getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
.end method

.method public abstract getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
.end method

.method public abstract getRecordStateChangesForTests()Z
.end method

.method public abstract getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
.end method

.method public abstract getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
.end method

.method public abstract isGeoDetectionEnabledForUsersByDefault()Z
.end method

.method public abstract isGeoTimeZoneDetectionFeatureSupported()Z
.end method

.method public abstract isGeoTimeZoneDetectionFeatureSupportedInConfig()Z
.end method

.method public abstract isTelephonyTimeZoneDetectionFeatureSupported()Z
.end method

.method public abstract isTestPrimaryLocationTimeZoneProvider()Z
.end method

.method public abstract isTestSecondaryLocationTimeZoneProvider()Z
.end method

.method public abstract removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract resetVolatileTestConfig()V
.end method

.method public abstract setRecordStateChangesForTests(Z)V
.end method

.method public abstract setTestPrimaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
.end method

.method public abstract setTestSecondaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
.end method

.method public abstract updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
.end method
