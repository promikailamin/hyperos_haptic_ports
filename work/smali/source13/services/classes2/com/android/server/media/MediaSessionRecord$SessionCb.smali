.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;

    .line 1197
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 1199
    return-void
.end method

.method private createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1536
    return-object v0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IIZI)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "direction"    # I

    .line 1508
    :try_start_0
    const-string v0, "MediaSessionRecord:adjustVolume"

    .line 1509
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:adjustVolume"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1511
    if-eqz p4, :cond_34

    .line 1512
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/16 v4, 0x3e8

    invoke-interface {v1, v2, v3, v4, p5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;III)V

    goto :goto_39

    .line 1515
    :cond_34
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3, p5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;III)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1519
    .end local v0    # "reason":Ljava/lang/String;
    :goto_39
    goto :goto_42

    .line 1517
    :catch_3a
    move-exception v0

    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method

.method public fastForward(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1448
    :try_start_0
    const-string v0, "MediaSessionRecord:fastForward"

    .line 1449
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:fastForward"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1454
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1452
    :catch_22
    move-exception v0

    .line 1453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public next(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1418
    :try_start_0
    const-string v0, "MediaSessionRecord:next"

    .line 1419
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:next"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;II)V

    .line 1423
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V

    .line 1424
    invoke-static {}, Lcom/android/server/audio/FocusRequesterStub;->get()Lcom/android/server/audio/FocusRequesterStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/audio/FocusRequesterStub;->notifyFocusChange(ILandroid/os/Handler;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_48

    .line 1428
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_50

    .line 1426
    :catch_48
    move-exception v0

    .line 1427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in next."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public pause(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1396
    :try_start_0
    const-string v0, "MediaSessionRecord:pause"

    .line 1397
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:pause"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1402
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1400
    :catch_22
    move-exception v0

    .line 1401
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1329
    :try_start_0
    const-string v0, "MediaSessionRecord:play"

    .line 1330
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:play"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;II)V

    .line 1334
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V

    .line 1335
    invoke-static {}, Lcom/android/server/audio/FocusRequesterStub;->get()Lcom/android/server/audio/FocusRequesterStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/audio/FocusRequesterStub;->notifyFocusChange(ILandroid/os/Handler;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_48

    .line 1339
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_50

    .line 1337
    :catch_48
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1345
    :try_start_2
    const-string v0, "MediaSessionRecord:playFromMediaId"

    .line 1346
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:playFromMediaId"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1350
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    .line 1353
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_4c

    .line 1351
    :catch_44
    move-exception v0

    .line 1352
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in playFromMediaId."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1359
    :try_start_2
    const-string v0, "MediaSessionRecord:playFromSearch"

    .line 1360
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:playFromSearch"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1364
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    .line 1367
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_4c

    .line 1365
    :catch_44
    move-exception v0

    .line 1366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in playFromSearch."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1368
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public playFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1372
    :try_start_2
    const-string v0, "MediaSessionRecord:playFromUri"

    .line 1373
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:playFromUri"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 1377
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    .line 1380
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_4c

    .line 1378
    :catch_44
    move-exception v0

    .line 1379
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in playFromUri."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public prepare(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1283
    :try_start_0
    const-string v0, "MediaSessionRecord:prepare"

    .line 1284
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:prepare"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1289
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1287
    :catch_22
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1290
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1295
    :try_start_2
    const-string v0, "MediaSessionRecord:prepareFromMediaId"

    .line 1296
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:prepareFromMediaId"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_31

    .line 1301
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_39

    .line 1299
    :catch_31
    move-exception v0

    .line 1300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in prepareFromMediaId."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1307
    :try_start_2
    const-string v0, "MediaSessionRecord:prepareFromSearch"

    .line 1308
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:prepareFromSearch"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_31

    .line 1313
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_39

    .line 1311
    :catch_31
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in prepareFromSearch."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1318
    :try_start_2
    const-string v0, "MediaSessionRecord:prepareFromUri"

    .line 1319
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:prepareFromUri"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_31

    .line 1324
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_39

    .line 1322
    :catch_31
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in prepareFromUri."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1325
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method public previous(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1433
    :try_start_0
    const-string v0, "MediaSessionRecord:previous"

    .line 1434
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:previous"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;II)V

    .line 1438
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V

    .line 1439
    invoke-static {}, Lcom/android/server/audio/FocusRequesterStub;->get()Lcom/android/server/audio/FocusRequesterStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/audio/FocusRequesterStub;->notifyFocusChange(ILandroid/os/Handler;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_48

    .line 1443
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_50

    .line 1441
    :catch_48
    move-exception v0

    .line 1442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in previous."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1444
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public rate(Ljava/lang/String;IILandroid/media/Rating;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rating"    # Landroid/media/Rating;

    .line 1485
    :try_start_0
    const-string v0, "MediaSessionRecord:rate"

    .line 1486
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:rate"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1491
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1489
    :catch_22
    move-exception v0

    .line 1490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in rate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1492
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public rewind(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1459
    :try_start_0
    const-string v0, "MediaSessionRecord:rewind"

    .line 1460
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:rewind"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1465
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1463
    :catch_22
    move-exception v0

    .line 1464
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1466
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public seekTo(Ljava/lang/String;IIJ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pos"    # J

    move-object/from16 v1, p0

    .line 1470
    :try_start_2
    const-string v0, "MediaSessionRecord:seekTo"

    .line 1471
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:seekTo"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-wide/from16 v14, p4

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IIJ)V

    .line 1475
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V

    .line 1476
    invoke-static {}, Lcom/android/server/audio/FocusRequesterStub;->get()Lcom/android/server/audio/FocusRequesterStub;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/audio/FocusRequesterStub;->notifyFocusChange(ILandroid/os/Handler;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_54} :catch_55

    .line 1480
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_5d

    .line 1478
    :catch_55
    move-exception v0

    .line 1479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in seekTo."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5d
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "command"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;
    .param p6, "cb"    # Landroid/os/ResultReceiver;

    move-object/from16 v1, p0

    .line 1260
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionRecord:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_46

    move-object/from16 v9, p4

    :try_start_f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1261
    .local v16, "reason":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v10

    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v11

    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p1

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_43} :catch_44

    .line 1266
    .end local v16    # "reason":Ljava/lang/String;
    goto :goto_50

    .line 1264
    :catch_44
    move-exception v0

    goto :goto_49

    :catch_46
    move-exception v0

    move-object/from16 v9, p4

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    :goto_49
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in sendCommand."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 1272
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionRecord:custom-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_44

    move-object/from16 v8, p4

    :try_start_f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1273
    .local v15, "reason":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v10

    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_41} :catch_42

    .line 1278
    .end local v15    # "reason":Ljava/lang/String;
    goto :goto_4e

    .line 1276
    :catch_42
    move-exception v0

    goto :goto_47

    :catch_44
    move-exception v0

    move-object/from16 v8, p4

    .line 1277
    .local v0, "e":Landroid/os/RemoteException;
    :goto_47
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in sendCustomAction."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1232
    :try_start_0
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1234
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1235
    .local v7, "reason":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1238
    .end local v7    # "reason":Ljava/lang/String;
    :cond_4f
    if-eqz p4, :cond_6d

    .line 1239
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/16 v4, 0x3e8

    .line 1240
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1239
    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_76

    .line 1242
    :cond_6d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 1243
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v1

    .line 1242
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1246
    :goto_76
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8f

    .line 1247
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8f} :catch_91

    .line 1250
    :cond_8f
    const/4 v0, 0x1

    return v0

    .line 1251
    :catch_91
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "sequenceId"    # I
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 1204
    :try_start_0
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1206
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1207
    .local v7, "reason":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1210
    .end local v7    # "reason":Ljava/lang/String;
    :cond_4f
    if-eqz p4, :cond_6d

    .line 1211
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/16 v4, 0x3e8

    .line 1212
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    .line 1211
    move v6, p6

    move-object v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_7b

    .line 1214
    :cond_6d
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 1215
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    .line 1214
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    .line 1218
    :goto_7b
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_94

    .line 1219
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(II)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_94} :catch_96

    .line 1222
    :cond_94
    const/4 v0, 0x1

    return v0

    .line 1223
    :catch_96
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setPlaybackSpeed(Ljava/lang/String;IIF)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "speed"    # F

    .line 1496
    :try_start_0
    const-string v0, "MediaSessionRecord:setPlaybackSpeed"

    .line 1497
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:setPlaybackSpeed"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1502
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1500
    :catch_22
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in setPlaybackSpeed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;III)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "value"    # I

    .line 1524
    :try_start_0
    const-string v0, "MediaSessionRecord:setVolumeTo"

    .line 1525
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:setVolumeTo"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(Ljava/lang/String;III)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1530
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1528
    :catch_22
    move-exception v0

    .line 1529
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public skipToTrack(Ljava/lang/String;IIJ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "id"    # J

    move-object/from16 v1, p0

    .line 1385
    :try_start_2
    const-string v0, "MediaSessionRecord:skipToTrack"

    .line 1386
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaSessionRecord:skipToTrack"

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-wide/from16 v14, p4

    invoke-interface/range {v10 .. v15}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IIJ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2e} :catch_2f

    .line 1391
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_37

    .line 1389
    :catch_2f
    move-exception v0

    .line 1390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionRecord"

    const-string v3, "Remote failure in skipToTrack"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public stop(Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1407
    :try_start_0
    const-string v0, "MediaSessionRecord:stop"

    .line 1408
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaSessionRecord:stop"

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1413
    .end local v0    # "reason":Ljava/lang/String;
    goto :goto_2a

    .line 1411
    :catch_22
    move-exception v0

    .line 1412
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method
