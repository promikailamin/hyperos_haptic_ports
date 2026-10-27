.class Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
.super Ljava/lang/Object;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerMonitor"
.end annotation


# instance fields
.field private final mController:Landroid/media/session/MediaController;

.field private final mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Landroid/media/session/MediaController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerCallback(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V
    .registers 4
    .param p2, "controller"    # Landroid/media/session/MediaController;

    .line 257
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 259
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaShellCommand$ControllerCallback;-><init>(Lcom/android/server/media/MediaShellCommand;)V

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 260
    return-void
.end method

.method private dispatchKeyCode(I)V
    .registers 22
    .param p1, "keyCode"    # I

    .line 332
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 333
    .local v15, "now":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x101

    move-object v2, v0

    move-wide v3, v15

    move-wide v5, v15

    move/from16 v8, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v14, v0

    .line 335
    .local v14, "down":Landroid/view/KeyEvent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v17, 0x101

    move-object v2, v0

    move-wide/from16 v18, v15

    move-object v15, v14

    .end local v14    # "down":Landroid/view/KeyEvent;
    .local v15, "down":Landroid/view/KeyEvent;
    .local v18, "now":J
    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 338
    .local v2, "up":Landroid/view/KeyEvent;
    :try_start_27
    iget-object v0, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v0, v15}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 339
    iget-object v0, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_31} :catch_34

    .line 342
    move/from16 v5, p1

    goto :goto_53

    .line 340
    :catch_34
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v3}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to dispatch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_53
    return-void
.end method


# virtual methods
.method printUsageMessage()V
    .registers 4

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2Monitoring session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...  available commands: play, pause, next, previous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_28} :catch_29

    .line 268
    goto :goto_35

    .line 266
    :catch_29
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error trying to monitor session!"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_35
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "(q)uit: finish monitoring"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method run()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 274
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;

    const-string v1, "MediaCb"

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;-><init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;Ljava/lang/String;)V

    .line 284
    .local v0, "cbThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    :try_start_d
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v2}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmInput(Lcom/android/server/media/MediaShellCommand;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 288
    .local v1, "converter":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_1d
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v3}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 293
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v3}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 294
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-nez v3, :cond_38

    goto/16 :goto_c3

    .line 295
    :cond_38
    const/4 v3, 0x1

    .line 296
    .local v3, "addNewline":Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_41

    .line 297
    const/4 v3, 0x0

    goto :goto_ac

    .line 298
    :cond_41
    const-string/jumbo v5, "q"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c3

    const-string/jumbo v5, "quit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 299
    goto :goto_c3

    .line 300
    :cond_54
    const-string/jumbo v5, "play"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 301
    const/16 v5, 0x7e

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ac

    .line 302
    :cond_63
    const-string/jumbo v5, "pause"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 303
    const/16 v5, 0x7f

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ac

    .line 304
    :cond_72
    const-string/jumbo v5, "next"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 305
    const/16 v5, 0x57

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ac

    .line 306
    :cond_81
    const-string/jumbo v5, "previous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 307
    const/16 v5, 0x58

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_ac

    .line 309
    :cond_90
    iget-object v5, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v5}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :goto_ac
    monitor-enter p0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_ad} :catch_d4
    .catchall {:try_start_d .. :try_end_ad} :catchall_d2

    .line 313
    if-eqz v3, :cond_ba

    .line 314
    :try_start_af
    iget-object v5, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v5}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 317
    monitor-exit p0

    .line 318
    .end local v3    # "addNewline":Z
    goto/16 :goto_1d

    .line 317
    .restart local v3    # "addNewline":Z
    :catchall_c0
    move-exception v5

    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_af .. :try_end_c2} :catchall_c0

    .end local v0    # "cbThread":Landroid/os/HandlerThread;
    .end local p0    # "this":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    :try_start_c2
    throw v5
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c3} :catch_d4
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_d2

    .line 322
    .end local v1    # "converter":Ljava/io/InputStreamReader;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "addNewline":Z
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "cbThread":Landroid/os/HandlerThread;
    .restart local p0    # "this":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    :cond_c3
    :goto_c3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 324
    :try_start_ca
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d1} :catch_e7

    goto :goto_e6

    .line 322
    :catchall_d2
    move-exception v1

    goto :goto_ea

    .line 319
    :catch_d4
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d2

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 324
    :try_start_df
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e6} :catch_e7

    .line 327
    :goto_e6
    goto :goto_e9

    .line 325
    :catch_e7
    move-exception v1

    .line 328
    nop

    .line 329
    :goto_e9
    return-void

    .line 322
    :goto_ea
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 324
    :try_start_f1
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f8} :catch_f9

    .line 327
    goto :goto_fa

    .line 325
    :catch_f9
    move-exception v2

    .line 328
    :goto_fa
    throw v1
.end method
