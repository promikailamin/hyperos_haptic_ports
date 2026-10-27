.class public Lcom/android/server/notification/NotificationAttentionHelper$2;
.super Ljava/lang/Thread;
.source "NotificationAttentionHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    .line 887
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 892
    :try_start_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmAudioManager(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 894
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 895
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    goto :goto_28

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_6c

    :catch_25
    move-exception v0

    move-object p0, v0

    goto :goto_52

    .line 897
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;Landroid/os/Binder;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/net/Uri;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationAttentionHelper;)F

    move-result v7

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4e} :catch_25
    .catchall {:try_start_4 .. :try_end_4e} :catchall_22

    .line 905
    :cond_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 903
    :goto_52
    :try_start_52
    const-string v0, "NotifAttentionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed playInCallNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_22

    .line 905
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    throw p0
.end method
