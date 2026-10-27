.class public Lcom/android/server/profcollect/ProfcollectForwardingService$2;
.super Landroid/content/BroadcastReceiver;
.source "ProfcollectForwardingService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 105
    const-string p0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_10

    .line 106
    sput-boolean p1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsBatteryLow:Z

    return-void

    .line 107
    :cond_10
    const-string p0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 108
    sput-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsBatteryLow:Z

    return-void

    .line 109
    :cond_20
    const-string p0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 114
    sput-boolean p1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    return-void

    .line 115
    :cond_2f
    const-string p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 120
    sput-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    return-void

    .line 121
    :cond_3e
    const-string p0, "com.android.server.profcollect.UPLOAD_PROFILES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 125
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsSelfService()Lcom/android/server/profcollect/ProfcollectForwardingService;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$smcreateAndUploadReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void

    .line 126
    :cond_52
    const-string p0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 127
    const-string p0, "adb"

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 129
    const-string p0, "connected"

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 134
    sput-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    :cond_6e
    return-void
.end method
