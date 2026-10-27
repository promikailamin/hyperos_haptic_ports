.class public Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public getHardwareRateLimiter(Lcom/android/server/locksettings/LskfIdentifier;)I
    .registers 2

    .line 700
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHardwareRateLimiter(Lcom/android/server/locksettings/LskfIdentifier;)I

    move-result p0

    return p0
.end method

.method public getTimeSinceBoot()Ljava/time/Duration;
    .registers 1

    .line 685
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmInjector(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getTimeSinceBoot()Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 5

    .line 695
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I
    .registers 2

    .line 675
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I

    move-result p0

    return p0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .registers 2

    .line 690
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;I)V
    .registers 3

    .line 680
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;I)V

    return-void
.end method
