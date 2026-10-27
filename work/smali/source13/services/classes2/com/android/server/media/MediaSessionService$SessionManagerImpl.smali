.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field private mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaKeyEventHandler(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartVoiceInput(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 1194
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1199
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 1201
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2499
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    return-void
.end method

.method private dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "suggestedStream"    # I
    .param p7, "direction"    # I
    .param p8, "flags"    # I
    .param p9, "musicOnly"    # Z

    .line 2231
    move-object/from16 v10, p0

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_25

    .line 2232
    :cond_17
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    :goto_25
    move-object v14, v0

    .line 2234
    .local v14, "session":Lcom/android/server/media/MediaSessionRecordImpl;
    const/4 v0, 0x0

    .line 2235
    .local v0, "preferSuggestedStream":Z
    invoke-direct {v10, v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 2236
    invoke-static {v11, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2237
    const/4 v0, 0x1

    move v15, v0

    goto :goto_38

    .line 2239
    :cond_37
    move v15, v0

    .end local v0    # "preferSuggestedStream":Z
    .local v15, "preferSuggestedStream":Z
    :goto_38
    const-string v0, ", preferSuggestedStream="

    const-string v1, ". flags="

    const-string v3, " by "

    const-string v4, "MediaSessionService"

    if-eqz v14, :cond_92

    if-eqz v15, :cond_45

    goto :goto_92

    .line 2287
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjusting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", suggestedStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecordImpl;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    goto/16 :goto_10d

    .line 2241
    :cond_92
    :goto_92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjusting suggestedStream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    if-eqz p9, :cond_ea

    const/4 v0, 0x3

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nothing is playing on the music stream. Skipping volume event, flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    return-void

    .line 2258
    :cond_ea
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v9

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v10, v8

    move/from16 v8, p8

    move-object v11, v9

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2294
    :goto_10d
    return-void
.end method

.method private dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 29
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    .line 2298
    move-object/from16 v1, p0

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v14, p5

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/media/MediaSession2Record;

    if-eqz v0, :cond_17

    .line 2301
    return-void

    .line 2303
    :cond_17
    const/4 v0, 0x0

    .line 2304
    .local v0, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v2, 0x0

    .line 2306
    .local v2, "mediaButtonReceiverHolder":Lcom/android/server/media/MediaButtonReceiverHolder;
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 2307
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v3

    invoke-virtual {v3, v14, v10, v11}, Lcom/android/server/media/MediaKeyDispatcher;->getMediaSession(Landroid/view/KeyEvent;IZ)Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2309
    .local v3, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v3, :cond_33

    .line 2310
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 2313
    :cond_33
    if-nez v0, :cond_51

    .line 2314
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v4

    invoke-virtual {v4, v14, v10, v11}, Lcom/android/server/media/MediaKeyDispatcher;->getMediaButtonReceiver(Landroid/view/KeyEvent;IZ)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2316
    .local v4, "pi":Landroid/app/PendingIntent;
    if-eqz v4, :cond_51

    .line 2317
    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    .line 2318
    const-string v6, ""

    invoke-static {v5, v4, v6}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(ILandroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v2

    .line 2324
    .end local v3    # "token":Landroid/media/session/MediaSession$Token;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :cond_51
    if-nez v0, :cond_76

    if-nez v2, :cond_76

    .line 2325
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 2327
    if-nez v0, :cond_72

    .line 2328
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v2

    move-object v13, v0

    move-object/from16 v21, v2

    goto :goto_79

    .line 2327
    :cond_72
    move-object v13, v0

    move-object/from16 v21, v2

    goto :goto_79

    .line 2333
    :cond_76
    move-object v13, v0

    move-object/from16 v21, v2

    .end local v0    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v2    # "mediaButtonReceiverHolder":Lcom/android/server/media/MediaButtonReceiverHolder;
    .local v13, "session":Lcom/android/server/media/MediaSessionRecord;
    .local v21, "mediaButtonReceiverHolder":Lcom/android/server/media/MediaButtonReceiverHolder;
    :goto_79
    const/4 v0, -0x1

    const-string v12, "MediaSessionService"

    if-eqz v13, :cond_fe

    .line 2335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    if-eqz p6, :cond_a5

    .line 2338
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    .line 2341
    :cond_a5
    nop

    .line 2342
    if-eqz p6, :cond_ae

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :cond_ae
    move v8, v0

    iget-object v9, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 2341
    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 2346
    :try_start_bf
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 2348
    .local v2, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v3

    iget v4, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-interface {v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(I)V

    .line 2349
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 2350
    invoke-virtual {v13}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    .line 2349
    invoke-interface {v3, v14, v4, v5}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_f3} :catch_f4

    .line 2351
    .end local v2    # "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    goto :goto_d1

    .line 2352
    :catch_f4
    move-exception v0

    .line 2353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to send callback"

    invoke-static {v12, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2354
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_fa
    move-object v4, v13

    move-object v2, v14

    goto/16 :goto_192

    .line 2355
    :cond_fe
    if-eqz v21, :cond_190

    .line 2356
    if-eqz p6, :cond_107

    .line 2357
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    .line 2360
    :cond_107
    if-eqz v11, :cond_115

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_117

    :cond_115
    move-object/from16 v15, p1

    .line 2361
    .local v15, "callingPackageName":Ljava/lang/String;
    :goto_117
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v2

    .line 2363
    if-eqz p6, :cond_125

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :cond_125
    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v18

    .line 2365
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaButtonReceiverFgsAllowlistDurationMs()J

    move-result-wide v19

    .line 2361
    move-object v3, v12

    move-object/from16 v12, v21

    move-object v4, v13

    .end local v13    # "session":Lcom/android/server/media/MediaSessionRecord;
    .local v4, "session":Lcom/android/server/media/MediaSessionRecord;
    move-object v13, v2

    move-object v2, v14

    move-object/from16 v14, p5

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/media/MediaButtonReceiverHolder;->send(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;J)Z

    move-result v5

    .line 2366
    .local v5, "sent":Z
    if-eqz v5, :cond_192

    .line 2367
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2369
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v0

    .line 2370
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2369
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_159
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_192

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 2373
    .local v8, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    :try_start_166
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget v9, v8, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-interface {v0, v9}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(I)V

    .line 2374
    iget-object v0, v8, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    const/4 v9, 0x0

    invoke-interface {v0, v2, v6, v9}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_175} :catch_176

    .line 2377
    goto :goto_18f

    .line 2375
    :catch_176
    move-exception v0

    .line 2376
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed notify key event dispatch, uid="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, v8, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2378
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v8    # "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    :goto_18f
    goto :goto_159

    .line 2355
    .end local v4    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "sent":Z
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v15    # "callingPackageName":Ljava/lang/String;
    .restart local v13    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_190
    move-object v4, v13

    move-object v2, v14

    .line 2381
    .end local v13    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v4    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_192
    :goto_192
    return-void
.end method

.method private dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "keyEvent"    # Landroid/view/KeyEvent;
    .param p7, "stream"    # I
    .param p8, "musicOnly"    # Z

    .line 1874
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1875
    .local v0, "down":Z
    :goto_b
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_12

    move v1, v2

    .line 1876
    .local v1, "up":Z
    :cond_12
    const/4 v3, 0x0

    .line 1877
    .local v3, "direction":I
    const/4 v4, 0x0

    .line 1878
    .local v4, "isMute":Z
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_76

    goto :goto_22

    .line 1886
    :sswitch_1c
    const/4 v4, 0x1

    goto :goto_22

    .line 1883
    :sswitch_1e
    const/4 v3, -0x1

    .line 1884
    goto :goto_22

    .line 1880
    :sswitch_20
    const/4 v3, 0x1

    .line 1881
    nop

    .line 1889
    :goto_22
    if-nez v0, :cond_26

    if-eqz v1, :cond_74

    .line 1890
    :cond_26
    const/16 v5, 0x1000

    .line 1891
    .local v5, "flags":I
    if-nez p8, :cond_31

    .line 1893
    if-eqz v1, :cond_2f

    .line 1894
    or-int/lit8 v5, v5, 0x14

    goto :goto_31

    .line 1896
    :cond_2f
    or-int/lit8 v5, v5, 0x11

    .line 1900
    :cond_31
    :goto_31
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-le v6, v2, :cond_39

    .line 1901
    or-int/lit16 v5, v5, 0x4000

    .line 1904
    :cond_39
    if-eqz v3, :cond_54

    .line 1906
    if-eqz v1, :cond_3e

    .line 1907
    const/4 v3, 0x0

    .line 1909
    :cond_3e
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    move v13, v3

    move v14, v5

    move/from16 v15, p8

    invoke-direct/range {v6 .. v15}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    goto :goto_74

    .line 1911
    :cond_54
    if-eqz v4, :cond_74

    .line 1912
    if-eqz v0, :cond_74

    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_74

    .line 1913
    const/16 v13, 0x65

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    move v14, v5

    move/from16 v15, p8

    invoke-direct/range {v6 .. v15}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 1919
    .end local v5    # "flags":I
    :cond_74
    :goto_74
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        0x18 -> :sswitch_20
        0x19 -> :sswitch_1e
        0xa4 -> :sswitch_1c
    .end sparse-switch
.end method

.method private handleIncomingUser(IIILjava/lang/String;)I
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2173
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2174
    .local v0, "callingUserId":I
    if-ne p3, v0, :cond_b

    .line 2175
    return p3

    .line 2178
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 2180
    .local v1, "canInteractAcrossUsersFull":Z
    :goto_1c
    if-eqz v1, :cond_2c

    .line 2181
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne p3, v2, :cond_2b

    .line 2182
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    return v2

    .line 2184
    :cond_2b
    return p3

    .line 2187
    :cond_2c
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission denied while calling from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Need to run as either the calling user id ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), or with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " permission"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private hasEnabledNotificationListener(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "callingUserId"    # I
    .param p2, "controllerPackageName"    # Ljava/lang/String;
    .param p3, "controllerUid"    # I

    .line 2194
    const-string v0, "MediaSessionService"

    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2195
    .local v1, "controllerUserId":I
    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    .line 2197
    return v2

    .line 2203
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2205
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2203
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 2206
    .local v3, "actualControllerUid":I
    if-eq p3, v3, :cond_28

    .line 2207
    const-string v4, "Failed to check enabled notification listener. Package name and UID doesn\'t match"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_27} :catch_60

    .line 2209
    return v2

    .line 2215
    .end local v3    # "actualControllerUid":I
    :cond_28
    nop

    .line 2217
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 2218
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 2217
    invoke-virtual {v3, p2, v4}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2219
    const/4 v0, 0x1

    return v0

    .line 2221
    :cond_3b
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_5f

    .line 2222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") doesn\'t have an enabled notification listener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_5f
    return v2

    .line 2211
    :catch_60
    move-exception v3

    .line 2212
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Failed to check enabled notification listener. Package name doesn\'t exist"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    return v2
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .line 2434
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2435
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2434
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v3, 0x1

    :cond_1b
    return v3
.end method

.method private isValidLocalStreamType(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 2440
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isVoiceKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 2429
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHasFeatureLeanback(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x55

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private startVoiceInput(Z)V
    .registers 10
    .param p1, "needWakeLock"    # Z

    .line 2385
    const-string v0, "MediaSessionService"

    const-string/jumbo v1, "startVoiceAssistant start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-static {}, Lcom/android/server/media/MediaSessionServiceStub;->get()Lcom/android/server/media/MediaSessionServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/media/MediaSessionServiceStub;->startVoiceAssistant(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2387
    const-string/jumbo v1, "startVoiceAssistant success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    return-void

    .line 2391
    :cond_1f
    const/4 v1, 0x0

    .line 2397
    .local v1, "voiceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 2398
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v4

    goto :goto_48

    :cond_47
    move v3, v5

    .line 2399
    .local v3, "isLocked":Z
    :goto_48
    if-nez v3, :cond_5f

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2400
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2401
    const-string/jumbo v4, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 2403
    :cond_5f
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 2404
    if-eqz v3, :cond_76

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    .line 2405
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_76

    goto :goto_77

    :cond_76
    move v4, v5

    .line 2404
    :goto_77
    const-string v5, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2406
    const-string/jumbo v4, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :goto_82
    if-eqz p1, :cond_8d

    .line 2410
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2413
    :cond_8d
    nop

    .line 2414
    const/high16 v4, 0x10800000

    :try_start_90
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2416
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_ae

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voiceIntent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_ae
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_90 .. :try_end_b9} :catch_c7
    .catchall {:try_start_90 .. :try_end_b9} :catchall_c5

    .line 2422
    if-eqz p1, :cond_e2

    .line 2423
    :goto_bb
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_e2

    .line 2422
    :catchall_c5
    move-exception v0

    goto :goto_e3

    .line 2419
    :catch_c7
    move-exception v4

    .line 2420
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    :try_start_c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_c8 .. :try_end_de} :catchall_c5

    .line 2422
    nop

    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    if-eqz p1, :cond_e2

    .line 2423
    goto :goto_bb

    .line 2426
    :cond_e2
    :goto_e2
    return-void

    .line 2422
    :goto_e3
    if-eqz p1, :cond_ee

    .line 2423
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2425
    :cond_ee
    throw v0
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 2151
    const/4 v0, 0x0

    .line 2152
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 2155
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2156
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0, p4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 2159
    :cond_c
    invoke-direct {p0, p3, p4, p2, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v1

    .line 2162
    .local v1, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, v0, p3, p4, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 2163
    return v1
.end method


# virtual methods
.method public addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 12
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 1566
    if-nez p1, :cond_a

    .line 1567
    const-string v0, "MediaSessionService"

    const-string v1, "addOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void

    .line 1570
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1571
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1572
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1573
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1575
    .local v3, "token":J
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1579
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_9a

    .line 1580
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1581
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_72

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v2, :cond_3c

    goto :goto_72

    .line 1586
    :cond_3c
    invoke-virtual {v6, p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->addOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V

    .line 1587
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The MediaKeyEventDispatchedListener ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is added by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1588
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1587
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    nop

    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_2d .. :try_end_6d} :catchall_8f

    .line 1591
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1592
    nop

    .line 1593
    return-void

    .line 1582
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_72
    :goto_72
    :try_start_72
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can add the listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_72 .. :try_end_8b} :catchall_8f

    .line 1591
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1584
    return-void

    .line 1589
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_8f
    move-exception v6

    :try_start_90
    monitor-exit v5
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :try_start_91
    throw v6

    .line 1576
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userId":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :cond_92
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "MEDIA_CONTENT_CONTROL permission is required to  add MediaKeyEventDispatchedListener"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    throw v5
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_9a

    .line 1591
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userId":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :catchall_9a
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1592
    throw v5
.end method

.method public addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V
    .registers 14
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1631
    if-nez p1, :cond_a

    .line 1632
    const-string v0, "MediaSessionService"

    const-string v1, "addOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    return-void

    .line 1636
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1637
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1638
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1639
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1640
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1642
    .local v4, "token":J
    :try_start_1e
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p2, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1643
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p2, v0, v1, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1645
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_8e

    .line 1646
    :try_start_2f
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v7

    .line 1647
    .local v7, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v7, :cond_6e

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v8

    if-eq v8, v3, :cond_3e

    goto :goto_6e

    .line 1652
    :cond_3e
    invoke-virtual {v7, p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->addOnMediaKeyEventSessionChangedListenerLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V

    .line 1653
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The MediaKeyEventSessionChangedListener ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is added by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    nop

    .end local v7    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_2f .. :try_end_69} :catchall_8b

    .line 1657
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    nop

    .line 1659
    return-void

    .line 1648
    .restart local v7    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_6e
    :goto_6e
    :try_start_6e
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the full user can add the listener, userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    monitor-exit v6
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_8b

    .line 1657
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1650
    return-void

    .line 1655
    .end local v7    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_8b
    move-exception v7

    :try_start_8c
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_8d
    throw v7
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 1657
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_8e
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    throw v6
.end method

.method public addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .registers 13
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;
    .param p2, "userId"    # I

    .line 1386
    if-nez p1, :cond_a

    .line 1387
    const-string v0, "MediaSessionService"

    const-string v1, "addSession2TokensListener: listener is null, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return-void

    .line 1390
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1391
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1392
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1396
    .local v2, "token":J
    const/4 v4, 0x0

    :try_start_17
    invoke-direct {p0, v0, v1, p2, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v4

    .line 1397
    .local v4, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_50

    .line 1398
    :try_start_22
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v6

    .line 1399
    .local v6, "index":I
    if-ltz v6, :cond_36

    .line 1400
    const-string v7, "MediaSessionService"

    const-string v8, "addSession2TokensListener: listener is already added, ignoring"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_4d

    .line 1408
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    return-void

    .line 1404
    :cond_36
    :try_start_36
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v8, v9, p1, v4}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1406
    nop

    .end local v6    # "index":I
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_4d

    .line 1408
    .end local v4    # "resolvedUserId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    nop

    .line 1410
    return-void

    .line 1406
    .restart local v4    # "resolvedUserId":I
    :catchall_4d
    move-exception v6

    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    .end local p2    # "userId":I
    :try_start_4f
    throw v6
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 1408
    .end local v4    # "resolvedUserId":I
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    .restart local p2    # "userId":I
    :catchall_50
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    throw v4
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 22
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_e

    .line 1337
    const-string v0, "MediaSessionService"

    const-string v2, "addSessionsListener: listener is null, ignoring"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void

    .line 1340
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1341
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1342
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1345
    .local v12, "token":J
    move-object/from16 v14, p2

    move/from16 v15, p3

    :try_start_1e
    invoke-direct {v1, v14, v15, v10, v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v6

    .line 1346
    .local v6, "resolvedUserId":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_79

    .line 1347
    :try_start_29
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v9}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    move v8, v0

    .line 1348
    .local v8, "index":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_3f

    .line 1349
    const-string v0, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    monitor-exit v16
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_76

    .line 1363
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1350
    return-void

    .line 1352
    :cond_3f
    :try_start_3f
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v7, v10

    move/from16 v17, v8

    .end local v8    # "index":I
    .local v17, "index":I
    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_76

    move-object v2, v0

    .line 1355
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_50
    invoke-interface/range {p1 .. p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_58} :catch_69
    .catchall {:try_start_50 .. :try_end_58} :catchall_76

    .line 1359
    nop

    .line 1360
    :try_start_59
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    nop

    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v17    # "index":I
    monitor-exit v16
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_76

    .line 1363
    .end local v6    # "resolvedUserId":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    nop

    .line 1365
    return-void

    .line 1356
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .restart local v6    # "resolvedUserId":I
    .restart local v17    # "index":I
    :catch_69
    move-exception v0

    .line 1357
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6a
    const-string v3, "MediaSessionService"

    const-string v4, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    monitor-exit v16
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_76

    .line 1363
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1358
    return-void

    .line 1361
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v17    # "index":I
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v16
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    .end local v10    # "pid":I
    .end local v11    # "uid":I
    .end local v12    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IActiveSessionsListener;
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "userId":I
    :try_start_78
    throw v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    .line 1363
    .end local v6    # "resolvedUserId":I
    .restart local v10    # "pid":I
    .restart local v11    # "uid":I
    .restart local v12    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IActiveSessionsListener;
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "userId":I
    :catchall_79
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    throw v0
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1222
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1223
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1225
    .local v13, "token":J
    :try_start_10
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v10, v12}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_58
    .catchall {:try_start_10 .. :try_end_15} :catchall_54

    .line 1226
    move/from16 v15, p5

    :try_start_17
    invoke-direct {v1, v11, v12, v15, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v5

    .line 1227
    .local v5, "resolvedUserId":I
    if-eqz p2, :cond_4a

    .line 1230
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v11

    move v4, v12

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1232
    .local v0, "session":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v0, :cond_42

    .line 1235
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_33} :catch_52
    .catchall {:try_start_17 .. :try_end_33} :catchall_64

    .line 1236
    .local v2, "sessionBinder":Landroid/media/session/ISession;
    if-eqz v2, :cond_3a

    .line 1239
    nop

    .line 1244
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    return-object v2

    .line 1237
    :cond_3a
    :try_start_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid session record"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "cb":Landroid/media/session/ISessionCallback;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "sessionInfo":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v3

    .line 1233
    .end local v2    # "sessionBinder":Landroid/media/session/ISession;
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "sessionInfo":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :cond_42
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to create a new session record"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "cb":Landroid/media/session/ISessionCallback;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "sessionInfo":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v2

    .line 1228
    .end local v0    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "sessionInfo":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Controller callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "cb":Landroid/media/session/ISessionCallback;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "sessionInfo":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_52} :catch_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_64

    .line 1240
    .end local v5    # "resolvedUserId":I
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "sessionInfo":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :catch_52
    move-exception v0

    goto :goto_5b

    .line 1244
    :catchall_54
    move-exception v0

    move/from16 v15, p5

    goto :goto_65

    .line 1240
    :catch_58
    move-exception v0

    move/from16 v15, p5

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    :goto_5b
    :try_start_5b
    const-string v2, "MediaSessionService"

    const-string v3, "Exception in creating a new session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    nop

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "cb":Landroid/media/session/ISessionCallback;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "sessionInfo":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v0
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_64

    .line 1244
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "sessionInfo":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :catchall_64
    move-exception v0

    :goto_65
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    throw v0
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "suggestedStream"    # I
    .param p4, "delta"    # I
    .param p5, "flags"    # I

    .line 1992
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1993
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1994
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1996
    .local v13, "token":J
    move-object/from16 v15, p0

    :try_start_e
    iget-object v0, v15, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_31

    .line 1997
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v11

    move v5, v12

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    :try_start_25
    invoke-direct/range {v1 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 1999
    monitor-exit v16
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2e

    .line 2001
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    nop

    .line 2003
    return-void

    .line 1999
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v16
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "suggestedStream":I
    .end local p4    # "delta":I
    .end local p5    # "flags":I
    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 2001
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "suggestedStream":I
    .restart local p4    # "delta":I
    .restart local p5    # "flags":I
    :catchall_31
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    throw v0
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "needWakeLock"    # Z

    .line 1458
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    if-eqz v11, :cond_164

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_164

    .line 1463
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1464
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1465
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1467
    .local v14, "token":J
    :try_start_1e
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_15f

    if-eqz v0, :cond_70

    .line 1468
    :try_start_22
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_69

    move-object/from16 v9, p1

    :try_start_31
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_67

    move/from16 v8, p2

    :try_start_51
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 1522
    :catchall_67
    move-exception v0

    goto :goto_6c

    :catchall_69
    move-exception v0

    move-object/from16 v9, p1

    :goto_6c
    move/from16 v8, p2

    goto/16 :goto_160

    .line 1467
    :cond_70
    move-object/from16 v9, p1

    move/from16 v8, p2

    .line 1472
    :goto_74
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_85

    .line 1475
    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_51 .. :try_end_81} :catchall_15f

    .line 1522
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    return-void

    .line 1481
    :cond_85
    :try_start_85
    invoke-static {}, Lcom/android/server/media/MediaSessionServiceStub;->get()Lcom/android/server/media/MediaSessionServiceStub;

    move-result-object v0

    invoke-interface {v0, v13, v11}, Lcom/android/server/media/MediaSessionServiceStub;->notifyPowerKeeperKeyEvent(ILandroid/view/KeyEvent;)V

    .line 1484
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_93
    .catchall {:try_start_85 .. :try_end_93} :catchall_15f

    .line 1485
    :try_start_93
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    move/from16 v17, v0

    .line 1486
    .local v17, "isGlobalPriorityActive":Z
    if-eqz v17, :cond_ad

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_ad

    .line 1489
    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    monitor-exit v16
    :try_end_a9
    .catchall {:try_start_93 .. :try_end_a9} :catchall_15c

    .line 1522
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1491
    return-void

    .line 1493
    :cond_ad
    if-nez v17, :cond_135

    .line 1494
    :try_start_af
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 1496
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to the media key listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_af .. :try_end_d9} :catchall_15c

    .line 1500
    :try_start_d9
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(I)V

    .line 1503
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    new-instance v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v12

    move v5, v13

    move/from16 v6, p2

    move-object/from16 v19, v7

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver-IA;)V

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_111} :catch_116
    .catchall {:try_start_d9 .. :try_end_111} :catchall_15c

    .line 1506
    :try_start_111
    monitor-exit v16
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_15c

    .line 1522
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1506
    return-void

    .line 1507
    :catch_116
    move-exception v0

    .line 1508
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_117
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_135
    if-eqz v17, :cond_147

    .line 1514
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_156

    .line 1517
    :cond_147
    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1520
    .end local v17    # "isGlobalPriorityActive":Z
    :goto_156
    monitor-exit v16
    :try_end_157
    .catchall {:try_start_117 .. :try_end_157} :catchall_15c

    .line 1522
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    nop

    .line 1524
    return-void

    .line 1520
    :catchall_15c
    move-exception v0

    :try_start_15d
    monitor-exit v16
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "asSystemService":Z
    .end local p3    # "keyEvent":Landroid/view/KeyEvent;
    .end local p4    # "needWakeLock":Z
    :try_start_15e
    throw v0
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15f

    .line 1522
    .restart local v12    # "pid":I
    .restart local v13    # "uid":I
    .restart local v14    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "asSystemService":Z
    .restart local p3    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p4    # "needWakeLock":Z
    :catchall_15f
    move-exception v0

    :goto_160
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    throw v0

    .line 1459
    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    :cond_164
    :goto_164
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void
.end method

.method public dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1540
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1541
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1542
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1544
    .local v13, "token":J
    :try_start_10
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_96

    .line 1545
    :try_start_17
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1547
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v10, p1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sessionToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v9, p2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    if-nez v0, :cond_7a

    .line 1552
    const-string v3, "MediaSessionService"

    const-string v4, "Failed to find session to dispatch key event."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v3, 0x0

    monitor-exit v15
    :try_end_76
    .catchall {:try_start_17 .. :try_end_76} :catchall_93

    .line 1559
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    return v3

    .line 1555
    :cond_7a
    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    move v5, v11

    move v6, v12

    move-object/from16 v8, p2

    move/from16 v9, v16

    move-object/from16 v10, v17

    :try_start_8a
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v3

    monitor-exit v15
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_93

    .line 1559
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1555
    return v3

    .line 1557
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v15
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "keyEvent":Landroid/view/KeyEvent;
    .end local p3    # "sessionToken":Landroid/media/session/MediaSession$Token;
    :try_start_95
    throw v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    .line 1559
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p3    # "sessionToken":Landroid/media/session/MediaSession$Token;
    :catchall_96
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1560
    throw v0
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "asSystemService"    # Z
    .param p4, "keyEvent"    # Landroid/view/KeyEvent;
    .param p5, "stream"    # I
    .param p6, "musicOnly"    # Z

    .line 1835
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    if-eqz v11, :cond_d8

    .line 1836
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_20

    .line 1837
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_20

    .line 1838
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_20

    goto/16 :goto_d8

    .line 1843
    :cond_20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1844
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1845
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1848
    .local v14, "token":J
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", opPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", musicOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, p6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :try_start_94
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_d3

    .line 1856
    :try_start_9b
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1857
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    move v5, v13

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_ca

    .line 1862
    :cond_b7
    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Ljava/lang/String;IZ)V

    .line 1865
    :goto_ca
    monitor-exit v16
    :try_end_cb
    .catchall {:try_start_9b .. :try_end_cb} :catchall_d0

    .line 1867
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    nop

    .line 1869
    return-void

    .line 1865
    :catchall_d0
    move-exception v0

    :try_start_d1
    monitor-exit v16
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "asSystemService":Z
    .end local p4    # "keyEvent":Landroid/view/KeyEvent;
    .end local p5    # "stream":I
    .end local p6    # "musicOnly":Z
    :try_start_d2
    throw v0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    .line 1867
    .restart local v12    # "pid":I
    .restart local v13    # "uid":I
    .restart local v14    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "asSystemService":Z
    .restart local p4    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p5    # "stream":I
    .restart local p6    # "musicOnly":Z
    :catchall_d3
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    throw v0

    .line 1839
    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    :cond_d8
    :goto_d8
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    return-void
.end method

.method public dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1936
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1937
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1938
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1940
    .local v14, "token":J
    :try_start_10
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_fc

    .line 1941
    :try_start_17
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1943
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", opPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, p2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sessionToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    if-nez v0, :cond_b2

    .line 1949
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find session to dispatch key event, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Fallbacks to the default handling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/4 v6, 0x1

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    move v5, v13

    move-object/from16 v7, p3

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1953
    monitor-exit v16
    :try_end_ae
    .catchall {:try_start_17 .. :try_end_ae} :catchall_f9

    .line 1985
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    return-void

    .line 1955
    :cond_b2
    :try_start_b2
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_102

    goto :goto_f3

    .line 1976
    :pswitch_ba
    const/16 v17, 0x1014

    .line 1979
    .local v17, "flags":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x1014

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    move v5, v13

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    goto :goto_f3

    .line 1957
    .end local v17    # "flags":I
    :pswitch_cc
    const/4 v1, 0x0

    .line 1958
    .local v1, "direction":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_10a

    move/from16 v17, v1

    goto :goto_e3

    .line 1966
    :sswitch_d7
    const/16 v1, 0x65

    move/from16 v17, v1

    goto :goto_e3

    .line 1963
    :sswitch_dc
    const/4 v1, -0x1

    .line 1964
    move/from16 v17, v1

    goto :goto_e3

    .line 1960
    :sswitch_e0
    const/4 v1, 0x1

    .line 1961
    move/from16 v17, v1

    .line 1969
    .end local v1    # "direction":I
    .local v17, "direction":I
    :goto_e3
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    move v5, v13

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 1972
    nop

    .line 1983
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    .end local v17    # "direction":I
    :goto_f3
    monitor-exit v16
    :try_end_f4
    .catchall {:try_start_b2 .. :try_end_f4} :catchall_f9

    .line 1985
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1986
    nop

    .line 1987
    return-void

    .line 1983
    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit v16
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "keyEvent":Landroid/view/KeyEvent;
    .end local p4    # "sessionToken":Landroid/media/session/MediaSession$Token;
    :try_start_fb
    throw v0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    .line 1985
    .restart local v12    # "pid":I
    .restart local v13    # "uid":I
    .restart local v14    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p4    # "sessionToken":Landroid/media/session/MediaSession$Token;
    :catchall_fc
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1986
    throw v0

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_ba
    .end packed-switch

    :sswitch_data_10a
    .sparse-switch
        0x18 -> :sswitch_e0
        0x19 -> :sswitch_dc
        0xa4 -> :sswitch_d7
    .end sparse-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2044
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v0, v1, p2}, Lcom/android/server/media/MediaServerUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2046
    :cond_f
    const-string v0, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2049
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2050
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessions listeners."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global priority session is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 2053
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2055
    :cond_6d
    const-string v1, "User Records:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2057
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7d
    if-ge v2, v1, :cond_93

    .line 2058
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2057
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 2060
    .end local v2    # "i":I
    :cond_93
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2061
    .end local v1    # "count":I
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_1e .. :try_end_a5} :catchall_ab

    .line 2062
    const-string v0, ""

    invoke-static {p2, v0}, Lcom/android/server/media/MediaSessionDeviceConfig;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2063
    return-void

    .line 2061
    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1271
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1272
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1273
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1274
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1275
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1277
    .local v4, "token":J
    :try_start_14
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p1, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1278
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p1, v0, v1, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1281
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_68

    .line 1282
    :try_start_25
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v7

    .line 1283
    .local v7, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    const/4 v8, 0x0

    if-nez v7, :cond_4b

    .line 1284
    const-string v9, "MediaSessionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No matching user record to get the media key event session, userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_65

    .line 1296
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1286
    return-object v8

    .line 1288
    :cond_4b
    :try_start_4b
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v9

    move-object v7, v9

    .line 1289
    .local v7, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_65

    .line 1290
    :try_start_51
    instance-of v6, v7, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v6, :cond_60

    .line 1291
    move-object v6, v7

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_68

    .line 1296
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    return-object v6

    .line 1294
    :cond_60
    nop

    .line 1296
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    return-object v8

    .line 1289
    .end local v7    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    :catchall_65
    move-exception v7

    :try_start_66
    monitor-exit v6
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_67
    throw v7
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    .line 1296
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_68
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    throw v6
.end method

.method public getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1302
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1303
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1304
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1305
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1306
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1308
    .local v4, "token":J
    :try_start_14
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p1, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1309
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, p1, v0, v1, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1312
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_7a

    .line 1313
    :try_start_25
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v7

    .line 1314
    .local v7, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v7, :cond_4c

    .line 1315
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No matching user record to get the media key event session package , userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v8, ""

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_77

    .line 1329
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1317
    return-object v8

    .line 1319
    :cond_4c
    :try_start_4c
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v8

    .line 1320
    .local v8, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v9, v8, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v9, :cond_5d

    .line 1321
    invoke-interface {v8}, Lcom/android/server/media/MediaSessionRecordImpl;->getPackageName()Ljava/lang/String;

    move-result-object v9

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_77

    .line 1329
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1321
    return-object v9

    .line 1323
    :cond_5d
    :try_start_5d
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v9

    if-eqz v9, :cond_70

    .line 1324
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object v9

    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_77

    .line 1329
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    return-object v9

    .line 1326
    .end local v7    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_70
    :try_start_70
    monitor-exit v6
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_77

    .line 1327
    :try_start_71
    const-string v6, ""
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_7a

    .line 1329
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    return-object v6

    .line 1326
    .end local v8    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    :catchall_77
    move-exception v7

    :try_start_78
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_79
    throw v7
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 1329
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_7a
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    throw v6
.end method

.method public getSessionPolicies(Landroid/media/session/MediaSession$Token;)I
    .registers 5
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .line 2122
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2123
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 2124
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v1, :cond_15

    .line 2125
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result v2

    monitor-exit v0

    return v2

    .line 2127
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_15
    monitor-exit v0

    .line 2128
    const/4 v0, 0x0

    return v0

    .line 2127
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation

    .line 1250
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1251
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1252
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1255
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1256
    .local v4, "resolvedUserId":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_44

    .line 1258
    :try_start_1c
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetActiveSessionsLocked(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object v7

    .line 1259
    .local v7, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    .line 1260
    .local v9, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    nop

    .end local v9    # "record":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_26

    .line 1262
    .end local v7    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    :cond_3b
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_41

    .line 1263
    nop

    .line 1265
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1263
    return-object v5

    .line 1262
    :catchall_41
    move-exception v7

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    :try_start_43
    throw v7
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 1265
    .end local v4    # "resolvedUserId":I
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :catchall_44
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1266
    throw v4
.end method

.method public hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 2108
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1c

    .line 2109
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    .line 2110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2108
    :goto_1c
    return v0
.end method

.method public hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 2115
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1c

    .line 2116
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;

    move-result-object v0

    .line 2117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2115
    :goto_1c
    return v0
.end method

.method public isGlobalPriorityActive()Z
    .registers 3

    .line 2037
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2038
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2039
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "controllerPackageName"    # Ljava/lang/String;
    .param p2, "controllerPid"    # I
    .param p3, "controllerUid"    # I

    .line 2076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2077
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2078
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2088
    .local v2, "token":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4, p2, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2089
    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasEnabledNotificationListener(ILjava/lang/String;I)Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_26

    if-eqz v4, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v4, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v4, 0x1

    .line 2092
    :goto_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    return v4

    .line 2092
    :catchall_26
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    throw v4
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1207
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1209
    .local v9, "packageNames":[Ljava/lang/String;
    if-eqz v9, :cond_1c

    array-length v0, v9

    if-lez v0, :cond_1c

    .line 1210
    const/4 v0, 0x0

    aget-object v0, v9, v0

    goto :goto_1e

    .line 1211
    :cond_1c
    const-string v0, "com.android.shell"

    :goto_1e
    move-object v10, v0

    .line 1214
    .local v10, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/media/MediaShellCommand;

    invoke-direct {v0, v10}, Lcom/android/server/media/MediaShellCommand;-><init>(Ljava/lang/String;)V

    .line 1215
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1216
    return-void
.end method

.method public registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 9
    .param p1, "rvc"    # Landroid/media/IRemoteSessionCallback;

    .line 2007
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2008
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2009
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2010
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2012
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 2013
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_27

    .line 2015
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    nop

    .line 2017
    monitor-exit v4

    .line 2018
    return-void

    .line 2015
    :catchall_27
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    nop

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "rvc":Landroid/media/IRemoteSessionCallback;
    throw v5

    .line 2017
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "rvc":Landroid/media/IRemoteSessionCallback;
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v5
.end method

.method public removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 12
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 1598
    if-nez p1, :cond_b

    .line 1599
    const-string v0, "MediaSessionService"

    const-string/jumbo v1, "removeOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void

    .line 1602
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1603
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1604
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1605
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1607
    .local v3, "token":J
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1611
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_9b

    .line 1612
    :try_start_2e
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1613
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_73

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v2, :cond_3d

    goto :goto_73

    .line 1618
    :cond_3d
    invoke-virtual {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->removeOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    .line 1619
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The MediaKeyEventDispatchedListener ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is removed by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1620
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1619
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    nop

    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_2e .. :try_end_6e} :catchall_90

    .line 1623
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1624
    nop

    .line 1625
    return-void

    .line 1614
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_73
    :goto_73
    :try_start_73
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can remove the listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_90

    .line 1623
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1616
    return-void

    .line 1621
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_90
    move-exception v6

    :try_start_91
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :try_start_92
    throw v6

    .line 1608
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userId":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :cond_93
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "MEDIA_CONTENT_CONTROL permission is required to  remove MediaKeyEventDispatchedListener"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    throw v5
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_9b

    .line 1623
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userId":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :catchall_9b
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1624
    throw v5
.end method

.method public removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .registers 12
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    .line 1664
    if-nez p1, :cond_b

    .line 1665
    const-string v0, "MediaSessionService"

    const-string/jumbo v1, "removeOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    return-void

    .line 1670
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1671
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1672
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1673
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1675
    .local v3, "token":J
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_8b

    .line 1676
    :try_start_26
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1677
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_6b

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v2, :cond_35

    goto :goto_6b

    .line 1682
    :cond_35
    invoke-virtual {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    .line 1683
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The MediaKeyEventSessionChangedListener ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is removed by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1684
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1683
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    nop

    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_88

    .line 1687
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1688
    nop

    .line 1689
    return-void

    .line 1678
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_6b
    :goto_6b
    :try_start_6b
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can remove the listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_88

    .line 1687
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1680
    return-void

    .line 1685
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_88
    move-exception v6

    :try_start_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    :try_start_8a
    throw v6
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    .line 1687
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "userId":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    :catchall_8b
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1688
    throw v5
.end method

.method public removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .registers 11
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;

    .line 1414
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1415
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1416
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1419
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3c

    .line 1420
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v5

    .line 1421
    .local v5, "index":I
    if-ltz v5, :cond_33

    .line 1422
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v6

    .line 1423
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_39

    .line 1425
    .local v6, "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_start_27
    iget-object v7, v6, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v7}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_32
    .catchall {:try_start_27 .. :try_end_31} :catchall_39

    .line 1428
    goto :goto_33

    .line 1426
    :catch_32
    move-exception v7

    .line 1430
    .end local v5    # "index":I
    .end local v6    # "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_39

    .line 1432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    nop

    .line 1434
    return-void

    .line 1430
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    :try_start_3b
    throw v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 1432
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    :catchall_3c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    throw v4
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1371
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 1372
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 1373
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2a

    .line 1375
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1c
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 1378
    goto :goto_28

    .line 1376
    :catch_27
    move-exception v3

    .line 1380
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v0

    .line 1381
    return-void

    .line 1380
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2098
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$minstantiateCustomDispatcher(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V

    .line 2099
    return-void
.end method

.method public setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$minstantiateCustomProvider(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V

    .line 2104
    return-void
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 13
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyListener;

    .line 1753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1754
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1755
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1758
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_101

    .line 1764
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_109

    .line 1765
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1766
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1767
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_e1

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_39

    goto/16 :goto_e1

    .line 1772
    :cond_39
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    if-eqz v7, :cond_70

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_70

    .line 1773
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_21 .. :try_end_6c} :catchall_fe

    .line 1803
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    return-void

    .line 1779
    :cond_70
    :try_start_70
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 1780
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    .line 1782
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1783
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1782
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7
    :try_end_a6
    .catchall {:try_start_70 .. :try_end_a6} :catchall_fe

    if-eqz v7, :cond_db

    .line 1787
    :try_start_a8
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b9} :catch_ba
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_fe

    .line 1799
    goto :goto_db

    .line 1796
    :catch_ba
    move-exception v7

    .line 1797
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_bb
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 1801
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_db
    :goto_db
    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_bb .. :try_end_dc} :catchall_fe

    .line 1803
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1804
    nop

    .line 1805
    return-void

    .line 1768
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_e1
    :goto_e1
    :try_start_e1
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the media key listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    monitor-exit v4
    :try_end_fa
    .catchall {:try_start_e1 .. :try_end_fa} :catchall_fe

    .line 1803
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    return-void

    .line 1801
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_fe
    move-exception v5

    :try_start_ff
    monitor-exit v4
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    :try_start_100
    throw v5

    .line 1761
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    :cond_101
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    throw v4
    :try_end_109
    .catchall {:try_start_100 .. :try_end_109} :catchall_109

    .line 1803
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    :catchall_109
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1804
    throw v4
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 13
    .param p1, "listener"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1693
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1694
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1695
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1698
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_fd

    .line 1705
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_105

    .line 1706
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1707
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1708
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_dd

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_39

    goto/16 :goto_dd

    .line 1713
    :cond_39
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    if-eqz v7, :cond_70

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_70

    .line 1715
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_21 .. :try_end_6c} :catchall_fa

    .line 1747
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    return-void

    .line 1722
    :cond_70
    :try_start_70
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 1723
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    .line 1725
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1726
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1725
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7
    :try_end_a2
    .catchall {:try_start_70 .. :try_end_a2} :catchall_fa

    if-eqz v7, :cond_d7

    .line 1730
    :try_start_a4
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_b5} :catch_b6
    .catchall {:try_start_a4 .. :try_end_b5} :catchall_fa

    .line 1743
    goto :goto_d7

    .line 1739
    :catch_b6
    move-exception v7

    .line 1740
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_b7
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 1745
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_d7
    :goto_d7
    monitor-exit v4
    :try_end_d8
    .catchall {:try_start_b7 .. :try_end_d8} :catchall_fa

    .line 1747
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    nop

    .line 1749
    return-void

    .line 1709
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_dd
    :goto_dd
    :try_start_dd
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_dd .. :try_end_f6} :catchall_fa

    .line 1747
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    return-void

    .line 1745
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_fa
    move-exception v5

    :try_start_fb
    monitor-exit v4
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :try_start_fc
    throw v5

    .line 1701
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :cond_fd
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    throw v4
    :try_end_105
    .catchall {:try_start_fc .. :try_end_105} :catchall_105

    .line 1747
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :catchall_105
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    throw v4
.end method

.method public setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    .registers 9
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "policies"    # I

    .line 2133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2135
    .local v0, "callingIdentityToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_32

    .line 2136
    :try_start_b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v3

    .line 2137
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    .line 2138
    .local v4, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v3, :cond_29

    if-eqz v4, :cond_29

    .line 2139
    invoke-virtual {v3, p2}, Lcom/android/server/media/MediaSessionRecord;->setSessionPolicies(I)V

    .line 2140
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 2142
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    .end local v4    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2f

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2142
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v0    # "callingIdentityToken":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "token":Landroid/media/session/MediaSession$Token;
    .end local p2    # "policies":I
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 2144
    .restart local v0    # "callingIdentityToken":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "token":Landroid/media/session/MediaSession$Token;
    .restart local p2    # "policies":I
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    throw v2
.end method

.method public unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 9
    .param p1, "rvc"    # Landroid/media/IRemoteSessionCallback;

    .line 2022
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2023
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2024
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2025
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2027
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 2028
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_27

    .line 2030
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    nop

    .line 2032
    monitor-exit v4

    .line 2033
    return-void

    .line 2030
    :catchall_27
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    nop

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "rvc":Landroid/media/IRemoteSessionCallback;
    throw v5

    .line 2032
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "rvc":Landroid/media/IRemoteSessionCallback;
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v5
.end method
