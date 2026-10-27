.class public final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 418
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DockObserver"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 419
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 421
    :try_start_13
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p1}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_11d

    if-eqz p3, :cond_b6

    .line 422
    :try_start_1c
    array-length v2, p3

    if-eqz v2, :cond_b6

    const-string v2, "-a"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto/16 :goto_b6

    .line 430
    :cond_2c
    array-length v2, p3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_89

    const-string/jumbo v2, "set"

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 431
    aget-object v2, p3, v5

    const/4 v3, 0x2

    .line 432
    aget-object p3, p3, v3
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_5a

    .line 434
    :try_start_41
    const-string/jumbo v3, "state"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 435
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2, v5}, Lcom/android/server/DockObserver;->-$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V

    .line 436
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/server/DockObserver;->-$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_116

    :catchall_5a
    move-exception p0

    goto/16 :goto_11b

    .line 438
    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown set option: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_71} :catch_73
    .catchall {:try_start_41 .. :try_end_71} :catchall_5a

    goto/16 :goto_116

    .line 441
    :catch_73
    :try_start_73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_116

    .line 443
    :cond_89
    array-length v2, p3

    if-ne v2, v5, :cond_a6

    const-string/jumbo v2, "reset"

    aget-object p3, p3, v3

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a6

    .line 444
    iget-object p2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p2, v3}, Lcom/android/server/DockObserver;->-$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V

    .line 445
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/server/DockObserver;->-$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V

    goto :goto_116

    .line 447
    :cond_a6
    const-string p0, "Dump current dock state, or:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const-string p0, "  set state <value>"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string p0, "  reset"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_116

    .line 423
    :cond_b6
    :goto_b6
    const-string p3, "Current Dock Observer Service state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmUpdatesStopped(Lcom/android/server/DockObserver;)Z

    move-result p3

    if-eqz p3, :cond_c8

    .line 425
    const-string p3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    :cond_c8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  reported state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2}, Lcom/android/server/DockObserver;->-$$Nest$fgetmReportedDockState(Lcom/android/server/DockObserver;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  previous state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2}, Lcom/android/server/DockObserver;->-$$Nest$fgetmPreviousDockState(Lcom/android/server/DockObserver;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  actual state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    :goto_116
    monitor-exit p1
    :try_end_117
    .catchall {:try_start_73 .. :try_end_117} :catchall_5a

    .line 453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 451
    :goto_11b
    :try_start_11b
    monitor-exit p1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_5a

    :try_start_11c
    throw p0
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11d

    :catchall_11d
    move-exception p0

    .line 453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    throw p0
.end method
