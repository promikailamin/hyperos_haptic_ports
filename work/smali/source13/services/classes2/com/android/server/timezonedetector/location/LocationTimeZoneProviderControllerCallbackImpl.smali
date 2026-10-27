.class Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
.source "LocationTimeZoneProviderControllerCallbackImpl.java"


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .registers 2
    .param p1, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 34
    return-void
.end method


# virtual methods
.method suggest(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 3
    .param p1, "suggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 38
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 40
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 42
    .local v0, "timeZoneDetector":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 43
    return-void
.end method
