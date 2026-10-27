.class public final Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "InputMethodManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 6328
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6329
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    .line 6336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6338
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 6340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6341
    throw p0
.end method

.method public final onCommandWithSystemIdentity(Ljava/lang/String;)I
    .registers 7

    .line 6347
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v1, "tracing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    const-string v2, "ime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6375
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6351
    :cond_1d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6352
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_ec

    :goto_32
    move v0, v4

    goto/16 :goto_99

    :sswitch_35
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_32

    :cond_3e
    const/16 v0, 0x8

    goto/16 :goto_99

    :sswitch_42
    const-string/jumbo v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_32

    :cond_4c
    const/4 v0, 0x7

    goto :goto_99

    :sswitch_4e
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_32

    :cond_57
    const/4 v0, 0x6

    goto :goto_99

    :sswitch_59
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_32

    :cond_62
    const/4 v0, 0x5

    goto :goto_99

    :sswitch_64
    const-string/jumbo v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_32

    :cond_6e
    const/4 v0, 0x4

    goto :goto_99

    :sswitch_70
    const-string v0, "-h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_32

    :cond_79
    const/4 v0, 0x3

    goto :goto_99

    :sswitch_7b
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto :goto_32

    :cond_84
    const/4 v0, 0x2

    goto :goto_99

    :sswitch_86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_32

    :cond_8d
    move v0, v2

    goto :goto_99

    :sswitch_8f
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_32

    :cond_98
    move v0, v3

    :goto_99
    packed-switch v0, :pswitch_data_112

    .line 6370
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 6362
    :pswitch_b5
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0

    .line 6366
    :pswitch_bc
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6358
    :pswitch_c3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6364
    :pswitch_ca
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6356
    :pswitch_d1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()I

    move-result p0

    return p0

    .line 6368
    :pswitch_d6
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6360
    :pswitch_dd
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0

    .line 6349
    :cond_e4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    nop

    :sswitch_data_ec
    .sparse-switch
        -0x4d6ada7d -> :sswitch_8f
        -0x3f9f2f3e -> :sswitch_86
        0x0 -> :sswitch_7b
        0x5db -> :sswitch_70
        0x1bc62 -> :sswitch_64
        0x30cf41 -> :sswitch_59
        0x32b09e -> :sswitch_4e
        0x6761d4f -> :sswitch_42
        0x639e22e8 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_d6
        :pswitch_d1
        :pswitch_d1
        :pswitch_ca
        :pswitch_d1
        :pswitch_c3
        :pswitch_bc
        :pswitch_b5
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 6382
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 6383
    :try_start_4
    const-string v0, "InputMethodManagerService commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6384
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6385
    const-string v0, "    Prints this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6386
    const-string v0, "  dump [options]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6387
    const-string v0, "    Synonym of dumpsys."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6388
    const-string v0, "  ime <command> [options]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6389
    const-string v0, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6390
    const-string v0, "  tracing <command>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6391
    const-string v0, "    start: Start tracing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6392
    const-string v0, "    stop : Stop tracing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6393
    const-string v0, "    help : Show help."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3f

    .line 6394
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_3f
    move-exception v0

    if-eqz p0, :cond_4a

    .line 6382
    :try_start_42
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    throw v0
.end method

.method public final onImeCommandHelp()I
    .registers 6

    .line 6400
    const-string v0, "--user <USER_ID>: Specify which user to enable."

    const-string v1, " Assumes the current user if not specified."

    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 6401
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v3, "  "

    const/16 v4, 0x64

    invoke-direct {v2, p0, v3, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 6402
    :try_start_11
    const-string p0, "ime <command>:"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6403
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6405
    const-string p0, "list [-a] [-s]"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6406
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6407
    const-string/jumbo p0, "prints all enabled input methods."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6408
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6409
    const-string p0, "-a: see all input methods"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6410
    const-string p0, "-s: only a single summary line of each"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6411
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6412
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6414
    const-string p0, "enable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6415
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6416
    const-string p0, "allows the given input method ID to be used."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6417
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6418
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6419
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6420
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6421
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6423
    const-string p0, "disable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6424
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6425
    const-string p0, "disallows the given input method ID to be used."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6426
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6427
    const-string p0, "--user <USER_ID>: Specify which user to disable."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6428
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6429
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6430
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6432
    const-string/jumbo p0, "set [--user <USER_ID>] <ID>"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6433
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6434
    const-string/jumbo p0, "switches to the given input method ID."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6435
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6436
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6437
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6438
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6439
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6441
    const-string/jumbo p0, "reset [--user <USER_ID>]"

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6442
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6443
    const-string/jumbo p0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6445
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6446
    const-string p0, "--user <USER_ID>: Specify which user to reset."

    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6447
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6448
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6450
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6452
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_b5
    .catchall {:try_start_11 .. :try_end_b5} :catchall_ba

    .line 6453
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    const/4 p0, 0x0

    return p0

    :catchall_ba
    move-exception p0

    .line 6400
    :try_start_bb
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_c3

    :catchall_bf
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c3
    throw p0
.end method
