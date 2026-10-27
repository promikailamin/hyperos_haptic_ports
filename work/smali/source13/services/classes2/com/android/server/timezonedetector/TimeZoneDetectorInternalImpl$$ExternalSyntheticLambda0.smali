.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->lambda$suggestGeolocationTimeZone$0$com-android-server-timezonedetector-TimeZoneDetectorInternalImpl(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method
