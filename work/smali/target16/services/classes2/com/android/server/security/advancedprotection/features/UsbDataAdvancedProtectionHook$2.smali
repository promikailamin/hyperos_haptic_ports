.class public Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;
.super Ljava/lang/Object;
.source "UsbDataAdvancedProtectionHook.java"

# interfaces
.implements Landroid/app/KeyguardManager$KeyguardLockedStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V
    .registers 2

    .line 764
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardLockedStateChanged(Z)V
    .registers 4

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onKeyguardLockedStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedProtectionUsb"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3c

    .line 769
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 770
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcleanUpNotificationHandlerTasks(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    .line 771
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcurrentUserIsGuest(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 772
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)Z

    .line 773
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fputmIsAfterFirstUnlock(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V

    :cond_3b
    return-void

    .line 776
    :cond_3c
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)Z

    return-void
.end method
