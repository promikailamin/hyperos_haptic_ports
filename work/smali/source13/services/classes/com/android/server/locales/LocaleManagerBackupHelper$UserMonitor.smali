.class final Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LocaleManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 414
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 416
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 417
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$fgetmStagedDataLock(Lcom/android/server/locales/LocaleManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_26

    .line 418
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {v3, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$mdeleteStagedDataLocked(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V

    .line 419
    monitor-exit v2

    goto :goto_25

    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_24
    throw v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_26

    .line 423
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "userId":I
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_25
    :goto_25
    goto :goto_2e

    .line 421
    :catch_26
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocaleManagerBkpHelper"

    const-string v2, "Exception in user monitor."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method
