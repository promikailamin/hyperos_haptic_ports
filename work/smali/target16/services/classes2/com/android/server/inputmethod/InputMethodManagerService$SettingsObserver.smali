.class public Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public static synthetic $r8$lambda$mQmSTFVnGJd3yiYBSOIRUFkZ6p8(Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;ILandroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->lambda$onChange$0(ILandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 451
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 452
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onChange$0(ILandroid/net/Uri;)V
    .registers 3

    .line 479
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->onChangeInternal(Landroid/net/Uri;I)V

    return-void
.end method

.method public onChange(ZLjava/util/Collection;II)V
    .registers 5

    .line 479
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;I)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onChangeInternal(Landroid/net/Uri;I)V
    .registers 8

    .line 483
    const-string v0, "high_touch_polling_rate_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 485
    const-string v1, "high_touch_sensitivity_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    const-string v2, "feature_touch_hovering"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 489
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 490
    :try_start_15
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurrentImeUserId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v4

    if-eq v4, p2, :cond_29

    .line 491
    monitor-exit v3

    return-void

    :catchall_27
    move-exception p0

    goto :goto_4e

    .line 493
    :cond_29
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 494
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateTouchPollingRate(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto :goto_4c

    .line 495
    :cond_35
    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 496
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateTouchSensitivity(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto :goto_4c

    .line 497
    :cond_41
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 498
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateTouchHovering(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 500
    :cond_4c
    :goto_4c
    monitor-exit v3

    return-void

    :goto_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_27

    throw p0
.end method

.method public registerContentObserverForAllUsers()V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmLineageHardware(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 459
    const-string v1, "high_touch_polling_rate_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 463
    :cond_22
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmLineageHardware(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 465
    const-string v1, "high_touch_sensitivity_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 469
    :cond_3b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmLineageHardware(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object v1

    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 470
    const-string v1, "feature_touch_hovering"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    :cond_54
    return-void
.end method
