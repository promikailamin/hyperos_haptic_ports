.class Lcom/android/server/utils/quota/QuotaTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/QuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/utils/quota/QuotaTracker;

    .line 113
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 116
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 121
    if-eqz p2, :cond_71

    const-string v0, "android.intent.extra.REPLACING"

    .line 122
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_71

    .line 125
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 127
    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received intent with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 130
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_72

    :cond_24
    goto :goto_39

    :sswitch_25
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v1

    goto :goto_3a

    :sswitch_2f
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_3a

    :goto_39
    move v2, v3

    :goto_3a
    packed-switch v2, :pswitch_data_7c

    goto :goto_70

    .line 138
    :pswitch_3e
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_49
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {v3, v1}, Lcom/android/server/utils/quota/QuotaTracker;->-$$Nest$monUserRemovedLocked(Lcom/android/server/utils/quota/QuotaTracker;I)V

    .line 141
    monitor-exit v2

    goto :goto_70

    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw v3

    .line 132
    .end local v1    # "userId":I
    :pswitch_53
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_5e
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/android/server/utils/quota/QuotaTracker$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 135
    monitor-exit v2

    .line 136
    goto :goto_70

    .line 135
    :catchall_6d
    move-exception v3

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_6d

    throw v3

    .line 144
    .end local v1    # "uid":I
    :goto_70
    return-void

    .line 123
    .end local v0    # "action":Ljava/lang/String;
    :cond_71
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        -0x7ad942ef -> :sswitch_2f
        0x5e33a4ad -> :sswitch_25
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_3e
    .end packed-switch
.end method
