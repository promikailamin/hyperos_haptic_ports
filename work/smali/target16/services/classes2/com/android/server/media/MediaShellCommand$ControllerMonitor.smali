.class public Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
.super Ljava/lang/Object;
.source "MediaShellCommand.java"


# instance fields
.field public final mController:Landroid/media/session/MediaController;

.field public final mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

.field public final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Landroid/media/session/MediaController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmControllerCallback(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V
    .registers 3

    .line 264
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 266
    new-instance p2, Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-direct {p2, p1}, Lcom/android/server/media/MediaShellCommand$ControllerCallback;-><init>(Lcom/android/server/media/MediaShellCommand;)V

    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-void
.end method


# virtual methods
.method public final dispatchKeyCode(I)V
    .registers 15

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 340
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/16 v12, 0x101

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object p1, v0

    .line 342
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 345
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 346
    iget-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_24} :catch_25

    return-void

    .line 348
    :catch_25
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {p0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to dispatch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public printUsageMessage()V
    .registers 4

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2Monitoring session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...  available commands: play, pause, next, previous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_31

    .line 274
    :catch_26
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error trying to monitor session!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    :goto_31
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {p0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "(q)uit: finish monitoring"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 7

    .line 280
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 281
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;

    const-string v1, "MediaCb"

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;-><init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 294
    :try_start_d
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v2}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmInput(Lcom/android/server/media/MediaShellCommand;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    :goto_1d
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 300
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 301
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    goto/16 :goto_c8

    .line 303
    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3f

    const/4 v1, 0x0

    goto :goto_af

    .line 305
    :cond_3f
    const-string/jumbo v3, "q"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c8

    const-string/jumbo v3, "quit"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto/16 :goto_c8

    .line 307
    :cond_53
    const-string/jumbo v3, "play"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    const/16 v1, 0x7e

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ae

    :catchall_62
    move-exception v1

    goto/16 :goto_e9

    :catch_65
    move-exception v1

    goto :goto_d7

    .line 309
    :cond_67
    const-string/jumbo v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/16 v1, 0x7f

    .line 310
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ae

    .line 311
    :cond_76
    const-string/jumbo v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    const/16 v1, 0x57

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ae

    .line 313
    :cond_85
    const-string/jumbo v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    const/16 v1, 0x58

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ae

    .line 316
    :cond_94
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v3}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ae
    const/4 v1, 0x1

    .line 319
    :goto_af
    monitor-enter p0
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b0} :catch_65
    .catchall {:try_start_d .. :try_end_b0} :catchall_62

    if-eqz v1, :cond_c0

    .line 321
    :try_start_b2
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c0

    :catchall_be
    move-exception v1

    goto :goto_c6

    .line 323
    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 324
    monitor-exit p0

    goto/16 :goto_1d

    :goto_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_b2 .. :try_end_c7} :catchall_be

    :try_start_c7
    throw v1
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_c8} :catch_65
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_62

    .line 329
    :cond_c8
    :goto_c8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :try_start_cf
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d6} :catch_e8

    return-void

    .line 327
    :goto_d7
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_62

    .line 329
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :try_start_e1
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e8} :catch_e8

    :catch_e8
    return-void

    .line 329
    :goto_e9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :try_start_f0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f7} :catch_f7

    .line 335
    :catch_f7
    throw v1
.end method
