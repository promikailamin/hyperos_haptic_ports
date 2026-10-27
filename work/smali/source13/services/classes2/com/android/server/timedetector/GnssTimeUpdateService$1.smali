.class Lcom/android/server/timedetector/GnssTimeUpdateService$1;
.super Ljava/lang/Object;
.source "GnssTimeUpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/GnssTimeUpdateService;->requestGnssTimeUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 126
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 14
    .param p1, "location"    # Landroid/location/Location;

    .line 129
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetD()Z

    move-result v0

    const-string v1, "GnssTimeUpdateService"

    if-eqz v0, :cond_e

    .line 130
    const-string/jumbo v0, "onLocationChanged()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_e
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationManagerInternal(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    .line 136
    .local v0, "locationTime":Landroid/location/LocationTime;
    if-eqz v0, :cond_20

    .line 137
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$msuggestGnssTime(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationTime;)V

    goto :goto_2b

    .line 139
    :cond_20
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetD()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 140
    const-string v2, "getGnssTimeMillis() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v2}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fputmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationListener;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    new-instance v2, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fputmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetGNSS_TIME_UPDATE_ALARM_INTERVAL()Ljava/time/Duration;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 161
    .local v1, "next":J
    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v3}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v3}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v10

    .line 166
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 161
    const-string v9, "GnssTimeUpdateService"

    move-wide v7, v1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 167
    return-void
.end method
