.class public Lcom/android/server/UiModeManagerService$10;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 423
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 426
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 428
    :try_start_7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$msetupWizardCompleteForCurrentUser(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_46

    if-nez p1, :cond_46

    .line 429
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmSetupWizardComplete(Lcom/android/server/UiModeManagerService;Z)V

    .line 430
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmSetupWizardObserver(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;

    move-result-object v0

    .line 431
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 435
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 434
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateNightModeFromSettingsLocked(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 436
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_48

    .line 438
    :cond_46
    :goto_46
    monitor-exit p2

    return-void

    :goto_48
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_44

    throw p0
.end method
