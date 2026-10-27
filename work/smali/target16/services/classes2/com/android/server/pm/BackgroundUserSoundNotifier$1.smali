.class public Lcom/android/server/pm/BackgroundUserSoundNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundUserSoundNotifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

.field public final synthetic val$activityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;Landroid/app/ActivityManager;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->val$activityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 151
    const-string p1, "com.android.server.EXTRA_CLIENT_UID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, -0x1

    .line 155
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-static {v0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->-$$Nest$mdismissNotification(Lcom/android/server/pm/BackgroundUserSoundNotifier;I)V

    .line 167
    const-string v0, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 168
    iget-object p2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->muteAlarmSounds(I)V

    goto :goto_52

    .line 169
    :cond_25
    const-string v0, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 170
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-static {v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/BackgroundUserSoundNotifier;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-static {v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/BackgroundUserSoundNotifier;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 174
    :cond_4d
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->val$activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 177
    :cond_52
    :goto_52
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
