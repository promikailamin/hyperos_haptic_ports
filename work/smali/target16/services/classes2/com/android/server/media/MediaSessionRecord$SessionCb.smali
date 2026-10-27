.class public Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# instance fields
.field public final mCb:Landroid/media/session/ISessionCallback;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .registers 3

    .line 1826
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IIZI)V
    .registers 14

    .line 2108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:adjustVolume"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_32

    .line 2111
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    const/16 p3, 0x3e8

    invoke-interface {p1, p0, p2, p3, p5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;III)V

    return-void

    .line 2114
    :cond_32
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5, p5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;III)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    move-object p0, v0

    .line 2117
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in adjustVolume."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;
    .registers 3

    .line 2133
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public fastForward(Ljava/lang/String;II)V
    .registers 12

    .line 2052
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:fastForward"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2056
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in fastForward."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public next(Ljava/lang/String;II)V
    .registers 12

    .line 2030
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:next"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2034
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in next."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public pause(Ljava/lang/String;II)V
    .registers 12

    .line 2008
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:pause"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2012
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in pause."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .registers 12

    .line 1951
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:play"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1953
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 1955
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in play."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    .line 1963
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:playFromMediaId"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1965
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1967
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in playFromMediaId."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public playFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    .line 1975
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:playFromSearch"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1977
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1979
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in playFromSearch."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public playFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14

    .line 1986
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:playFromUri"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1988
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1990
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in playFromUri."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prepare(Ljava/lang/String;II)V
    .registers 12

    .line 1905
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:prepare"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 1909
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in prepare."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    .line 1917
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:prepareFromMediaId"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1919
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1921
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in prepareFromMediaId."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    .line 1929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:prepareFromSearch"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1931
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1933
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in prepareFromSearch."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14

    .line 1940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:prepareFromUri"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1942
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1944
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in prepareFromUri."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public previous(Ljava/lang/String;II)V
    .registers 12

    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:previous"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2045
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in previous."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public rate(Ljava/lang/String;IILandroid/media/Rating;)V
    .registers 13

    .line 2085
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:rate"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2087
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5, p4}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2089
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in rate."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public rewind(Ljava/lang/String;II)V
    .registers 12

    .line 2063
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:rewind"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2067
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in rewind."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public seekTo(Ljava/lang/String;IIJ)V
    .registers 14

    .line 2074
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:seekTo"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 2076
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IIJ)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 2078
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in seekTo."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 8

    .line 1884
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p6}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    move-object p0, v0

    .line 1886
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in sendCommand."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 15

    .line 1893
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSessionRecord:custom-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1894
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v7, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v5

    move p3, v6

    move-object p1, v7

    .line 1896
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    move-object p0, v0

    .line 1898
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in sendCustomAction."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;)Z
    .registers 15

    .line 1856
    :try_start_0
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1859
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v7, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_4c
    move-object v7, p1

    move v5, p2

    move v6, p3

    :goto_4f
    if-eqz p4, :cond_6d

    .line 1863
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1864
    invoke-virtual {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x3e8

    .line 1863
    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_76

    .line 1866
    :cond_6d
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 1867
    invoke-virtual {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object p0

    .line 1866
    invoke-interface {p1, v7, v5, v6, p0}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_76} :catch_78

    :goto_76
    const/4 p0, 0x1

    return p0

    :catch_78
    move-exception v0

    move-object p0, v0

    .line 1871
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in sendMediaRequest."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1833
    :try_start_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1836
    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v5

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_52
    if-eqz p4, :cond_75

    .line 1840
    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1841
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    move-object v1, v4

    const/16 v4, 0x3e8

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 1840
    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_88

    .line 1843
    :cond_75
    iget-object v11, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 1844
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v16, p6

    move-object/from16 v17, p7

    .line 1843
    invoke-interface/range {v11 .. v17}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_88} :catch_8a

    :goto_88
    const/4 v0, 0x1

    return v0

    :catch_8a
    move-exception v0

    .line 1848
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setPlaybackSpeed(Ljava/lang/String;IIF)V
    .registers 13

    .line 2096
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:setPlaybackSpeed"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2098
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5, p4}, Landroid/media/session/ISessionCallback;->onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2100
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in setPlaybackSpeed."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;III)V
    .registers 13

    .line 2124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:setVolumeTo"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2126
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5, p4}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(Ljava/lang/String;III)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2128
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in setVolumeTo."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public skipToTrack(Ljava/lang/String;IIJ)V
    .registers 14

    .line 1997
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:skipToTrack"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move p2, v4

    move p3, v5

    move-object p1, v6

    .line 1999
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IIJ)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 2001
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in skipToTrack"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public stop(Ljava/lang/String;II)V
    .registers 12

    .line 2019
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaSessionRecord:stop"

    move-object v6, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2021
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v5}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    move-object p0, v0

    .line 2023
    const-string p1, "MediaSessionRecord"

    const-string p2, "Remote failure in stop."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
