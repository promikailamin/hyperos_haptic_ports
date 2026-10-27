.class public final Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;
.super Ljava/lang/Object;
.source "TimeZoneCanonicalizer.java"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TimeZoneFinder;->getCountryZonesFinder()Lcom/android/i18n/timezone/CountryZonesFinder;

    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/CountryZonesFinder;->findCanonicalTimeZoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    return-object p1

    :cond_f
    return-object p0
.end method
