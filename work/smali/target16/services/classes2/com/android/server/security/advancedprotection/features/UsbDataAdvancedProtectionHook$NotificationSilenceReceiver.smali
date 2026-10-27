.class public Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDataAdvancedProtectionHook.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V
    .registers 2

    .line 836
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 839
    const-string p1, "com.android.server.security.advancedprotection.features.silence"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 840
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmSilenceDataNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z

    move-result v0

    const-string/jumbo v1, "silence_data_notification"

    const/4 v2, 0x0

    .line 841
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fputmSilenceDataNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V

    .line 842
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmSilencePowerNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z

    move-result v0

    const-string/jumbo v1, "silence_power_notification"

    .line 843
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fputmSilencePowerNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V

    .line 844
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmContext(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x1040abb

    .line 845
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmContext(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040aba

    .line 846
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 844
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msendNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    :cond_4e
    return-void
.end method
