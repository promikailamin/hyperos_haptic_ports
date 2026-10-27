.class public Lcom/android/server/notification/TimeToLiveHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeToLiveHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/TimeToLiveHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/TimeToLiveHelper;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_68

    .line 176
    :cond_7
    const-string v0, "com.android.server.notification.TimeToLiveHelper"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 178
    iget-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object p1, p1, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 179
    :try_start_14
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v0, v0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v0, v0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 181
    const-string v1, "key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 183
    invoke-static {}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Alarm triggered but wasn\'t the earliest we were tracking"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_66

    .line 186
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-static {v1, p2}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$mremoveMatchingEntry(Lcom/android/server/notification/TimeToLiveHelper;Ljava/lang/String;)V

    .line 187
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    const/4 p2, 0x0

    .line 189
    :goto_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_42

    if-eqz p2, :cond_5c

    .line 191
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-static {p0}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$fgetmNm(Lcom/android/server/notification/TimeToLiveHelper;)Lcom/android/server/notification/NotificationManagerPrivate;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/notification/NotificationManagerPrivate;->timeoutNotification(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_5c
    invoke-static {}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Alarm triggered but should have been cleaned up already"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :goto_66
    :try_start_66
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_42

    throw p0

    :cond_68
    :goto_68
    return-void
.end method
