.class public Lcom/android/server/media/MediaShellCommand;
.super Landroid/os/ShellCommand;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaShellCommand$ControllerMonitor;,
        Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    }
.end annotation


# static fields
.field private static sMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private static sThread:Landroid/app/ActivityThread;


# instance fields
.field private mErrorWriter:Ljava/io/PrintWriter;

.field private mInput:Ljava/io/InputStream;

.field private final mPackageName:Ljava/lang/String;

.field private mSessionService:Landroid/media/session/ISessionManager;

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInput(Lcom/android/server/media/MediaShellCommand;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mInput:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private runDispatch()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "cmd":Ljava/lang/String;
    const-string/jumbo v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 167
    const/16 v2, 0x7e

    .local v2, "keycode":I
    goto/16 :goto_88

    .line 168
    .end local v2    # "keycode":I
    :cond_13
    const-string/jumbo v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 169
    const/16 v2, 0x7f

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 170
    .end local v2    # "keycode":I
    :cond_1f
    const-string/jumbo v2, "play-pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 171
    const/16 v2, 0x55

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 172
    .end local v2    # "keycode":I
    :cond_2b
    const-string/jumbo v2, "mute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 173
    const/16 v2, 0x5b

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 174
    .end local v2    # "keycode":I
    :cond_37
    const-string v2, "headsethook"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 175
    const/16 v2, 0x4f

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 176
    .end local v2    # "keycode":I
    :cond_42
    const-string/jumbo v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 177
    const/16 v2, 0x56

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 178
    .end local v2    # "keycode":I
    :cond_4e
    const-string/jumbo v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 179
    const/16 v2, 0x57

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 180
    .end local v2    # "keycode":I
    :cond_5a
    const-string/jumbo v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 181
    const/16 v2, 0x58

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 182
    .end local v2    # "keycode":I
    :cond_66
    const-string/jumbo v2, "rewind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 183
    const/16 v2, 0x59

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 184
    .end local v2    # "keycode":I
    :cond_72
    const-string/jumbo v2, "record"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 185
    const/16 v2, 0x82

    .restart local v2    # "keycode":I
    goto :goto_88

    .line 186
    .end local v2    # "keycode":I
    :cond_7e
    const-string v2, "fast-forward"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 187
    const/16 v2, 0x5a

    .line 192
    .restart local v2    # "keycode":I
    :goto_88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 193
    .local v16, "now":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x101

    move-object v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v16

    move v9, v2

    move-object/from16 v19, v1

    move-object v1, v15

    .end local v1    # "cmd":Ljava/lang/String;
    .local v19, "cmd":Ljava/lang/String;
    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {v0, v1}, Lcom/android/server/media/MediaShellCommand;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 195
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v15, 0x101

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {v0, v1}, Lcom/android/server/media/MediaShellCommand;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 197
    return-void

    .line 189
    .end local v2    # "keycode":I
    .end local v16    # "now":J
    .end local v19    # "cmd":Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/String;
    :cond_b4
    move-object/from16 v19, v1

    .end local v1    # "cmd":Ljava/lang/String;
    .restart local v19    # "cmd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown dispatch code \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    .end local v19    # "cmd":Ljava/lang/String;
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private runListSessions()V
    .registers 7

    .line 347
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Sessions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :try_start_7
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_4e

    .line 351
    .local v2, "controller":Landroid/media/session/MediaController;
    if-eqz v2, :cond_4c

    .line 353
    :try_start_20
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4a} :catch_4e

    .line 357
    goto :goto_4c

    .line 355
    :catch_4b
    move-exception v3

    .line 359
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :cond_4c
    :goto_4c
    goto :goto_12

    .line 362
    .end local v0    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_4d
    goto :goto_56

    .line 360
    :catch_4e
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    const-string v2, "***Error listing sessions***"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_56
    return-void
.end method

.method private runMonitor()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 135
    const-string v1, "Error: must include a session id"

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 136
    return-void

    .line 139
    :cond_c
    const/4 v1, 0x0

    .line 141
    .local v1, "success":Z
    :try_start_d
    sget-object v2, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_3f

    .line 144
    .local v4, "controller":Landroid/media/session/MediaController;
    if-eqz v4, :cond_3c

    :try_start_26
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 145
    new-instance v5, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    invoke-direct {v5, p0, v4}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;-><init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V

    .line 147
    .local v5, "monitor":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    invoke-virtual {v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->run()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_38} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_38} :catch_3f

    .line 148
    const/4 v1, 0x1

    .line 149
    goto :goto_3e

    .line 151
    .end local v5    # "monitor":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    :catch_3a
    move-exception v5

    goto :goto_3d

    .line 153
    :cond_3c
    nop

    .line 154
    .end local v4    # "controller":Landroid/media/session/MediaController;
    :goto_3d
    goto :goto_18

    .line 157
    .end local v2    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_3e
    :goto_3e
    goto :goto_5c

    .line 155
    :catch_3f
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***Error monitoring session*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5c
    if-nez v1, :cond_76

    .line 159
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No session found with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    :cond_76
    return-void
.end method

.method private runVolume()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    invoke-static {p0}, Lcom/android/server/media/VolumeCtrl;->run(Lcom/android/server/media/MediaShellCommand;)V

    .line 369
    return-void
.end method

.method private sendMediaKey(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 129
    goto :goto_a

    .line 128
    :catch_9
    move-exception v0

    .line 130
    :goto_a
    return-void
.end method


# virtual methods
.method log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 67
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mInput:Ljava/io/InputStream;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 72
    :cond_1d
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "media_session"

    if-nez v0, :cond_3a

    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    .line 75
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    nop

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    sput-object v2, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 79
    .end local v0    # "context":Landroid/content/Context;
    :cond_3a
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    .line 81
    if-eqz v0, :cond_a1

    .line 87
    const/4 v0, -0x1

    :try_start_47
    const-string v1, "dispatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 88
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runDispatch()V

    goto :goto_78

    .line 89
    :cond_53
    const-string v1, "list-sessions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 90
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runListSessions()V

    goto :goto_78

    .line 91
    :cond_5f
    const-string/jumbo v1, "monitor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 92
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runMonitor()V

    goto :goto_78

    .line 93
    :cond_6c
    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 94
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runVolume()V

    .line 102
    :goto_78
    nop

    .line 103
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_7b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_97} :catch_98

    .line 97
    return v0

    .line 99
    :catch_98
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 101
    return v0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t connect to media session service; is the system running?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onHelp()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "usage: media_session [subcommand] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session dispatch KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session list-sessions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session monitor <tag>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session volume [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 114
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session dispatch: dispatch a media key to the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                KEY may be: play, pause, play-pause, mute, headsethook,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                stop, next, previous, rewind, record, fast-forward."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session list-sessions: print a list of the current sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session monitor: monitor updates to the specified session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                       Use the tag from list-sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media_session volume:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 122
    return-void
.end method

.method showError(Ljava/lang/String;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->onHelp()V

    .line 205
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    return-void
.end method
