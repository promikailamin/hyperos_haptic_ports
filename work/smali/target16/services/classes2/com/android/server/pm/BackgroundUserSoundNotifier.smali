.class public Lcom/android/server/pm/BackgroundUserSoundNotifier;
.super Ljava/lang/Object;
.source "BackgroundUserSoundNotifier.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "BackgroundUserSoundNotifier"


# instance fields
.field mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

.field mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field public mNotificationClientUids:Ljava/util/Set;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field public final mSystemUserContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/pm/BackgroundUserSoundNotifier;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdismissNotification(Lcom/android/server/pm/BackgroundUserSoundNotifier;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->dismissNotification(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    .line 80
    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    .line 81
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 82
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createNotificationChannel()V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->setupFocusControlAudioPolicy()V

    return-void
.end method


# virtual methods
.method public createNotification(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/Notification;
    .registers 10

    const v0, 0x10401b7

    .line 307
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 311
    const-string v0, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 312
    const-string v1, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 313
    const-string v2, "com.android.server.ACTION_DISMISS_NOTIFICATION"

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 316
    new-instance v2, Landroid/app/Notification$Action$Builder;

    const v3, 0x10401b4

    .line 317
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 318
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 319
    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v5, 0x10401b5

    .line 320
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 321
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 323
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-string v5, "bg_user_sound_channel"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x10803bc

    .line 325
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 326
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "reminder"

    .line 327
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 328
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 329
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x106001c

    .line 330
    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 331
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 332
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 333
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 335
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 337
    iget-object p3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_a3

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    .line 338
    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    .line 337
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result p0

    if-nez p0, :cond_a3

    const/4 p0, 0x2

    .line 339
    new-array p0, p0, [Landroid/app/Notification$Action;

    aput-object v2, p0, v0

    aput-object v1, p0, v4

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_aa

    .line 341
    :cond_a3
    new-array p0, v4, [Landroid/app/Notification$Action;

    aput-object v2, p0, v0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 344
    :goto_aa
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final createNotificationChannel()V
    .registers 5

    .line 91
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "BackgroundUserSound"

    const/4 v2, 0x4

    const-string v3, "bg_user_sound_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 94
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 4

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    const-string p1, "com.android.server.EXTRA_CLIENT_UID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const/high16 p1, 0x4000000

    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final dismissNotification(I)V
    .registers 4

    .line 276
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public dismissNotificationIfNecessary(I)V
    .registers 3

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;

    move-result-object v0

    if-nez v0, :cond_18

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->isNotificationShown(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->dismissNotification(I)V

    .line 265
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;
    .registers 4

    if-ltz p1, :cond_26

    .line 287
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getFocusStack()Ljava/util/List;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_26

    .line 289
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    if-ne v1, p1, :cond_23

    .line 290
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioFocusInfo;

    return-object p0

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioPolicyFocusListener()Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    return-object p0
.end method

.method public final isNotificationShown(I)Z
    .registers 2

    .line 348
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public muteAlarmSounds(I)V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_34

    .line 198
    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 199
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    if-ne v2, p1, :cond_14

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 200
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlayerProxy;->stop()V

    goto :goto_14

    .line 205
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 207
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioPolicy;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;)V

    :cond_3f
    return-void
.end method

.method public notifyForegroundUserAboutSoundIfNecessary(Landroid/media/AudioFocusInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    goto/16 :goto_7f

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    .line 221
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 223
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    .line 224
    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    goto :goto_38

    .line 225
    :cond_32
    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 226
    :goto_38
    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-eqz v1, :cond_7f

    .line 229
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 230
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->isNotificationShown(I)Z

    move-result v3

    if-nez v3, :cond_7f

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7f

    .line 239
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v4

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createNotification(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object p0

    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    .line 241
    invoke-virtual {v2, v3, v4, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final registerReceiver(Landroid/app/ActivityManager;)V
    .registers 4

    .line 147
    new-instance v0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;-><init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;Landroid/app/ActivityManager;)V

    .line 182
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    const-string v1, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "com.android.server.ACTION_DISMISS_NOTIFICATION"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final setupFocusControlAudioPolicy()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->registerReceiver(Landroid/app/ActivityManager;)V

    .line 105
    new-instance v0, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;-><init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    .line 106
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 109
    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setAudioPolicyFocusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 113
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p0

    if-eqz p0, :cond_55

    .line 116
    sget-object v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register the service\'s focus control audio policy, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method
