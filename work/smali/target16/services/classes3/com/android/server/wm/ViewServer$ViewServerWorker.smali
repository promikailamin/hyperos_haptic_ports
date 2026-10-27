.class public Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
.implements Lcom/android/server/wm/WindowManagerInternal$WindowFocusChangeListener;


# instance fields
.field public mClient:Ljava/net/Socket;

.field public mNeedFocusedWindowUpdate:Z

.field public mNeedWindowListUpdate:Z

.field public final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .registers 3

    .line 217
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 220
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    return-void
.end method


# virtual methods
.method public focusChanged(Landroid/os/IBinder;)V
    .registers 2

    .line 291
    monitor-enter p0

    const/4 p1, 0x1

    .line 292
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 294
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public run()V
    .registers 8

    .line 225
    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 227
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_c8
    .catchall {:try_start_3 .. :try_end_15} :catchall_c6

    .line 229
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    .line 237
    const-string v3, ""

    goto :goto_38

    :catchall_25
    move-exception v0

    move-object v1, v2

    goto/16 :goto_e1

    :catch_29
    move-exception v1

    goto/16 :goto_cc

    :cond_2c
    const/4 v4, 0x0

    .line 239
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v4

    .line 244
    :goto_38
    const-string v4, "PROTOCOL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3e} :catch_29
    .catchall {:try_start_15 .. :try_end_3e} :catchall_25

    const-string v5, "4"

    if-eqz v4, :cond_49

    .line 245
    :try_start_42
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/server/wm/ViewServer;->-$$Nest$smwriteValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_9b

    .line 246
    :cond_49
    const-string v4, "SERVER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 247
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/server/wm/ViewServer;->-$$Nest$smwriteValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_9b

    .line 248
    :cond_58
    const-string v4, "LIST"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 249
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v3}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_9b

    .line 250
    :cond_6d
    const-string v4, "GET_FOCUS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 251
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v3}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_9b

    .line 252
    :cond_82
    const-string v4, "AUTOLIST"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 253
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v3

    goto :goto_9b

    .line 255
    :cond_8f
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :goto_9b
    if-nez v3, :cond_b1

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred with the command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_b1} :catch_29
    .catchall {:try_start_42 .. :try_end_b1} :catchall_25

    .line 267
    :cond_b1
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    :goto_b9
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz p0, :cond_e0

    .line 275
    :goto_bd
    :try_start_bd
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_e0

    :catch_c1
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e0

    :catchall_c6
    move-exception v0

    goto :goto_e1

    :catch_c8
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 263
    :goto_cc
    :try_start_cc
    const-string v3, "Connection error: "

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_25

    if-eqz v2, :cond_db

    .line 267
    :try_start_d3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_db

    :catch_d7
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    :cond_db
    :goto_db
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz p0, :cond_e0

    goto :goto_bd

    :cond_e0
    :goto_e0
    return-void

    :goto_e1
    if-eqz v1, :cond_eb

    .line 267
    :try_start_e3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception v1

    .line 270
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    :cond_eb
    :goto_eb
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz p0, :cond_f7

    .line 275
    :try_start_ef
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_f7

    :catch_f3
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :cond_f7
    :goto_f7
    throw v0
.end method

.method public final windowManagerAutolistLoop()Z
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v0}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v0}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowFocusChangeListener(Lcom/android/server/wm/WindowManagerInternal$WindowFocusChangeListener;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    :try_start_14
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_95
    .catchall {:try_start_14 .. :try_end_24} :catchall_7c

    .line 303
    :cond_24
    :goto_24
    :try_start_24
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_66

    .line 306
    monitor-enter p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_57
    .catchall {:try_start_24 .. :try_end_2b} :catchall_54

    .line 307
    :goto_2b
    :try_start_2b
    iget-boolean v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v1, :cond_39

    iget-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v3, :cond_39

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2b

    :catchall_37
    move-exception v1

    goto :goto_64

    :cond_39
    const/4 v3, 0x0

    if-eqz v1, :cond_40

    .line 311
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    move v1, v0

    goto :goto_41

    :cond_40
    move v1, v3

    .line 314
    :goto_41
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v4, :cond_48

    .line 315
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    move v3, v0

    .line 318
    :cond_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_37

    if-eqz v1, :cond_59

    .line 320
    :try_start_4b
    const-string v1, "LIST UPDATE\n"

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_59

    :catchall_54
    move-exception v0

    move-object v1, v2

    goto :goto_7d

    :catch_57
    move-object v1, v2

    goto :goto_95

    :cond_59
    :goto_59
    if-eqz v3, :cond_24

    .line 324
    const-string v1, "ACTION_FOCUS UPDATE\n"

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_63} :catch_57
    .catchall {:try_start_4b .. :try_end_63} :catchall_54

    goto :goto_24

    .line 318
    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_37

    :try_start_65
    throw v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_57
    .catchall {:try_start_65 .. :try_end_66} :catchall_54

    .line 333
    :cond_66
    :try_start_66
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    .line 338
    :catch_69
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowFocusChangeListener(Lcom/android/server/wm/WindowManagerInternal$WindowFocusChangeListener;)V

    goto :goto_9b

    :catchall_7c
    move-exception v0

    :goto_7d
    if-eqz v1, :cond_82

    .line 333
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_82

    .line 338
    :catch_82
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowFocusChangeListener(Lcom/android/server/wm/WindowManagerInternal$WindowFocusChangeListener;)V

    .line 340
    throw v0

    :catch_95
    :goto_95
    if-eqz v1, :cond_69

    .line 333
    :try_start_97
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_69

    goto :goto_69

    :goto_9b
    return v0
.end method

.method public windowsChanged()V
    .registers 2

    .line 284
    monitor-enter p0

    const/4 v0, 0x1

    .line 285
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 287
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
