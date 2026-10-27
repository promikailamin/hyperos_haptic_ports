.class Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;
.super Ljava/lang/Object;
.source "TimeZoneDetectorService.java"

# interfaces
.implements Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

.field final synthetic val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    .line 90
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->this$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlightComplete()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->enableTelephonyTimeZoneFallback()V

    .line 94
    return-void
.end method
