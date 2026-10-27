.class Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;
.super Landroid/database/ContentObserver;
.source "DeviceActivityMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    iput-object p3, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "unused"    # Z

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "state":I
    if-nez v0, :cond_f

    .line 61
    iget-object v1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-static {v1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->-$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 65
    .end local v0    # "state":I
    :cond_f
    goto :goto_19

    .line 63
    :catch_10
    move-exception v0

    .line 64
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "time_zone_detector"

    const-string v2, "Unable to read airplane mode state"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_19
    return-void
.end method
