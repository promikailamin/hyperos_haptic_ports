.class public final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# static fields
.field public static final DREAMING_DELIVERY_GROUP_KEY:Ljava/lang/String;

.field public static final DREAMING_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field public final mCloseNotificationShadeOptions:Landroid/os/Bundle;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field public final mDreamingStartedIntent:Landroid/content/Intent;

.field public final mDreamingStartedStoppedOptions:Landroid/os/Bundle;

.field public final mDreamingStoppedIntent:Landroid/content/Intent;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPreviousDreams:Ljava/util/ArrayList;

.field public final mResetScreenTimeoutOnUnexpectedDreamExit:Z

.field public mSentStartBroadcast:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetScreenTimeoutOnUnexpectedDreamExit(Lcom/android/server/dreams/DreamController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mattach(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDreamStarted(Lcom/android/server/dreams/DreamController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->onDreamStarted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetScreenTimeout(Lcom/android/server/dreams/DreamController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->resetScreenTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopPreviousDreams(Lcom/android/server/dreams/DreamController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->stopPreviousDreams()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .registers 7

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->createDreamingStartedStoppedOptions()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    .line 113
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 116
    const-class p2, Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityTaskManager;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 117
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 119
    const-string/jumbo v0, "reason"

    const-string v1, "dream"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p2

    .line 123
    invoke-virtual {p2, p3, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 p3, 0x2

    .line 125
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeOptions:Landroid/os/Bundle;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110242

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    return-void
.end method


# virtual methods
.method public final attach(Landroid/service/dreams/IDreamService;)V
    .registers 6

    .line 413
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 415
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 417
    iget-object v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-boolean v2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iget-boolean v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    invoke-static {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmDreamingStartedCallback(Lcom/android/server/dreams/DreamController$DreamRecord;)Landroid/os/IRemoteCallback;

    move-result-object v0

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p1

    .line 420
    const-string v0, "DreamController"

    const-string v1, "The dream service died unexpectedly."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 421
    const-string v0, "attach failed"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    return-void
.end method

.method public bringDreamToFront()Z
    .registers 4

    .line 286
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez p0, :cond_a

    goto :goto_17

    .line 291
    :cond_a
    :try_start_a
    invoke-interface {p0}, Landroid/service/dreams/IDreamService;->comeToFront()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 294
    const-string v1, "DreamController"

    const-string v2, "Error asking dream to come to the front"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return v0
.end method

.method public final createDreamingStartedStoppedOptions()Landroid/os/Bundle;
    .registers 3

    .line 137
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 149
    sget-object v0, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String;

    sget-object v1, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 153
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public dreamIsFrontmost()Z
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->dreamIsFrontmost()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 157
    const-string v0, "Dreamland:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_cf

    .line 159
    const-string v0, "  mCurrentDream:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsPreviewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWakingGently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d4

    .line 169
    :cond_cf
    const-string v0, "  mCurrentDream: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    :goto_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSentStartBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onDreamStarted()V
    .registers 6

    .line 432
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    if-nez v0, :cond_22

    .line 433
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/server/dreams/DreamController$Listener;->onDreamStarted(Landroid/os/Binder;)V

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    :cond_22
    return-void
.end method

.method public final resetScreenTimeout()V
    .registers 5

    .line 268
    const-string v0, "DreamController"

    const-string v1, "Resetting screen timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 270
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method public setDreamAppTask(Landroid/os/Binder;Landroid/app/IAppTask;)V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_10

    iget-object v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mAppTask:Landroid/app/IAppTask;

    if-eqz v1, :cond_d

    goto :goto_10

    .line 250
    :cond_d
    iput-object p2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mAppTask:Landroid/app/IAppTask;

    return-void

    .line 239
    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal dream activity start. mCurrentDream.mToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", illegal dreamToken = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Ending this dream activity."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DreamController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_37
    invoke-interface {p2}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    .line 245
    :catch_3b
    const-string p0, "Unable to stop illegal dream activity."

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDreamIsObscured(Z)V
    .registers 2

    .line 254
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz p0, :cond_7

    .line 255
    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fputmDreamIsObscured(Lcom/android/server/dreams/DreamController$DreamRecord;Z)V

    :cond_7
    return-void
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 22

    move/from16 v6, p5

    .line 178
    const-string v8, "Unable to bind dream service: "

    const-string v9, "DreamController"

    const-string/jumbo v0, "startDream"

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 181
    :try_start_f
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting dream: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPreviewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v12, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 189
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 p1, 0x1

    if-eqz v12, :cond_85

    .line 191
    iget-object v2, v12, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 196
    const-string/jumbo v0, "restarting same dream"

    invoke-virtual {p0, p1, v0, v12}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    goto :goto_85

    :catchall_7c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_111

    .line 198
    :cond_80
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fputmDreamStartTime(Lcom/android/server/dreams/DreamController$DreamRecord;J)V

    .line 203
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 204
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v2, :cond_99

    const/16 v2, 0xdf

    goto :goto_9b

    :cond_99
    const/16 v2, 0xde

    .line 203
    :goto_9b
    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 206
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.service.dreams.DreamService"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x800000

    .line 208
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 p2, p7

    .line 209
    invoke-static {v2, p2}, Landroid/service/dreams/DreamService;->setDreamOverlayComponent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    :try_end_b2
    .catchall {:try_start_f .. :try_end_b2} :catchall_7c

    .line 211
    :try_start_b2
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    const v4, 0x4000001

    invoke-virtual {p2, v2, v0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_e2

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string p2, "bindService failed"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/SecurityException; {:try_start_b2 .. :try_end_db} :catch_df
    .catchall {:try_start_b2 .. :try_end_db} :catchall_7c

    .line 228
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_df
    move-exception v0

    move-object p2, v0

    goto :goto_f5

    .line 224
    :cond_e2
    :try_start_e2
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean p1, p2, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 225
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopUnconnectedDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f1
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_7c

    .line 228
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 219
    :goto_f5
    :try_start_f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const-string/jumbo p2, "unable to bind service: SecExp."

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_f5 .. :try_end_10d} :catchall_7c

    .line 228
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_111
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 229
    throw p0
.end method

.method public stopDream(ZLjava/lang/String;)V
    .registers 4

    .line 281
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->stopPreviousDreams()V

    .line 282
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    return-void
.end method

.method public final stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 12

    .line 306
    const-string v0, "DreamController"

    if-nez p3, :cond_5

    return-void

    .line 310
    :cond_5
    const-string/jumbo v1, "stopDream"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_39

    .line 313
    :try_start_10
    iget-boolean p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_36

    if-eqz p1, :cond_18

    .line 392
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 317
    :cond_18
    :try_start_18
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_36

    .line 321
    :try_start_1f
    invoke-static {p3, p2}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fputmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;Ljava/lang/String;)V

    .line 322
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 323
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopStubbornDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v4, 0x1388

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_32} :catch_39
    .catchall {:try_start_1f .. :try_end_32} :catchall_36

    .line 392
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_36
    move-exception p0

    goto/16 :goto_12f

    .line 332
    :catch_39
    :cond_39
    :try_start_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping dream: name="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPreviewMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDoze="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7c

    const-string p2, ""

    goto :goto_96

    .line 338
    :cond_7c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(from \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 340
    iget-boolean p2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz p2, :cond_a9

    const/16 p2, 0xdf

    goto :goto_ab

    :cond_a9
    const/16 p2, 0xde

    .line 339
    :goto_ab
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 341
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 342
    iget-boolean p2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz p2, :cond_b7

    const-string p2, "dozing_minutes"

    goto :goto_b9

    :cond_b7
    const-string p2, "dreaming_minutes"

    .line 343
    :goto_b9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmDreamStartTime(Lcom/android/server/dreams/DreamController$DreamRecord;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 341
    invoke-static {p1, p2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 346
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopUnconnectedDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopStubbornDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_de
    .catchall {:try_start_39 .. :try_end_de} :catchall_36

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_f0

    .line 351
    :try_start_e2
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e5} :catch_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_36

    .line 357
    :catch_e5
    :try_start_e5
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p3, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_ee
    .catch Ljava/util/NoSuchElementException; {:try_start_e5 .. :try_end_ee} :catch_ee
    .catchall {:try_start_e5 .. :try_end_ee} :catchall_36

    .line 361
    :catch_ee
    :try_start_ee
    iput-object v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 364
    :cond_f0
    iget-boolean p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz p1, :cond_f9

    .line 365
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 367
    :cond_f9
    invoke-virtual {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    .line 370
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne p3, p1, :cond_12b

    .line 371
    iput-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 373
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    if-eqz p1, :cond_113

    .line 374
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 376
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 379
    :cond_113
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz p1, :cond_124

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mAppTask:Landroid/app/IAppTask;
    :try_end_119
    .catchall {:try_start_ee .. :try_end_119} :catchall_36

    if-eqz p1, :cond_124

    .line 382
    :try_start_11b
    invoke-interface {p1}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_11e} :catch_11f
    .catch Ljava/lang/RuntimeException; {:try_start_11b .. :try_end_11e} :catch_11f
    .catchall {:try_start_11b .. :try_end_11e} :catchall_36

    goto :goto_124

    .line 384
    :catch_11f
    :try_start_11f
    const-string p1, "Unable to stop dream activity."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_124
    :goto_124
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {p0, p1}, Lcom/android/server/dreams/DreamController$Listener;->onDreamStopped(Landroid/os/Binder;)V
    :try_end_12b
    .catchall {:try_start_11f .. :try_end_12b} :catchall_36

    .line 392
    :cond_12b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_12f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 393
    throw p0
.end method

.method public final stopPreviousDreams()V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    .line 405
    :cond_9
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v2, 0x1

    const-string/jumbo v3, "stop previous dream"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_26
    :goto_26
    return-void
.end method
