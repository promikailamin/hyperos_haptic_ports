.class public Lcom/android/server/utils/quota/QuotaTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QuotaTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 116
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_63

    .line 121
    const-string p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_63

    .line 125
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 127
    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Received intent with null action"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_63

    .line 132
    :cond_30
    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 133
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v1, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/android/server/utils/quota/QuotaTracker$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 135
    monitor-exit v1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4b

    throw p0

    .line 138
    :cond_4e
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 139
    iget-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object p2, p2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 140
    :try_start_59
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->-$$Nest$monUserRemovedLocked(Lcom/android/server/utils/quota/QuotaTracker;I)V

    .line 141
    monitor-exit p2

    return-void

    :catchall_60
    move-exception p0

    monitor-exit p2
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_60

    throw p0

    :cond_63
    :goto_63
    return-void
.end method
