.class public Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;
.super Landroid/database/ContentObserver;
.source "DeviceActivityMonitorImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

.field public final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    iput-object p3, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v0, "airplane_mode_on"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    .line 62
    iget-object p0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-static {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->-$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V

    return-void

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 64
    iget-object p0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-static {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->-$$Nest$mnotifyFlightStart(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    :try_end_18
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    :cond_18
    return-void

    :catch_19
    move-exception p0

    .line 67
    const-string/jumbo p1, "time_zone_detector"

    const-string v0, "Unable to read airplane mode state"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
