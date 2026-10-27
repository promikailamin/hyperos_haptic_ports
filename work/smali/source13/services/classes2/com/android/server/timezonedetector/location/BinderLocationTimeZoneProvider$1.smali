.class Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;
.super Ljava/lang/Object;
.source "BinderLocationTimeZoneProvider.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    .line 57
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderBound()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->-$$Nest$mhandleOnProviderBound(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V

    .line 67
    return-void
.end method

.method public onProviderUnbound()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    const-string/jumbo v1, "onProviderUnbound()"

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->handleTemporaryFailure(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onReportTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 3
    .param p1, "timeZoneProviderEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 61
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 62
    return-void
.end method
