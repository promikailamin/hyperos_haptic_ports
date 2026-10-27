.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestManualTimeZone$1$com-android-server-timezonedetector-TimeZoneDetectorShellCommand()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method
