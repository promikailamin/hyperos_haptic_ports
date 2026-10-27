.class public Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WindowManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/view/IWindowManager;

.field private final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 69
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 72
    return-void
.end method

.method private dumpLocalWindowAsync(ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "encoded"    # Z
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 559
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method private dumpRemoteWindowLocked(ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "encoded"    # Z
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 550
    const-string v1, "DUMP_ENCODED"

    invoke-interface {p2, v1, v0, p3}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_e

    .line 552
    :cond_9
    const-string v1, "DUMP"

    invoke-interface {p2, v1, v0, p3}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 554
    :goto_e
    return-void
.end method

.method private getDisplayId(Ljava/lang/String;)I
    .registers 8
    .param p1, "opt"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "displayId":I
    const-string v1, "-d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, p1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "option":Ljava/lang/String;
    :goto_f
    if-eqz v2, :cond_59

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 178
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1f} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1f} :catch_21

    move v0, v1

    .line 183
    :goto_20
    goto :goto_59

    .line 181
    :catch_21
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_59

    .line 179
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3d
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_20

    .line 185
    :cond_59
    :goto_59
    return v0
.end method

.method static synthetic lambda$runDumpViewCapture$2(Ljava/lang/String;Ljava/lang/String;[Lcom/android/internal/os/ByteTransferPipe;Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "windowName"    # Ljava/lang/String;
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "pip"    # [Lcom/android/internal/os/ByteTransferPipe;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 660
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, "pipe":Lcom/android/internal/os/ByteTransferPipe;
    :try_start_11
    new-instance v1, Lcom/android/internal/os/ByteTransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V

    move-object v0, v1

    .line 664
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const-string v2, "CAPTURE"

    .line 665
    invoke-virtual {v0}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 664
    invoke-interface {v1, v2, p1, v3}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 666
    const/4 v1, 0x0

    aput-object v0, p2, v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_25} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_25} :catch_26

    .line 671
    goto :goto_2c

    .line 667
    :catch_26
    move-exception v1

    .line 668
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2c

    .line 669
    invoke-virtual {v0}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    .line 673
    .end local v0    # "pipe":Lcom/android/internal/os/ByteTransferPipe;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2c
    :goto_2c
    return-void
.end method

.method private parseDimension(Ljava/lang/String;I)I
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 378
    const-string/jumbo v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 381
    :cond_19
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 384
    :try_start_21
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_27} :catch_28

    .line 387
    .local v0, "density":I
    goto :goto_2c

    .line 385
    .end local v0    # "density":I
    :catch_28
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v2, 0xa0

    move v0, v2

    .line 388
    .local v0, "density":I
    :goto_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xa0

    return v1

    .line 391
    .end local v0    # "density":I
    :cond_3e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private printDisplayUserRotation(Ljava/io/PrintWriter;I)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayUserRotation(I)I

    move-result v0

    .line 435
    .local v0, "displayUserRotation":I
    if-gez v0, :cond_13

    .line 436
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: check logcat for more details."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    const/4 v1, -0x1

    return v1

    .line 439
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 440
    const-string v1, "free"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    return v2

    .line 443
    :cond_22
    const-string v1, "lock "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 445
    return v2
.end method

.method private printFixedToUserRotation(Ljava/io/PrintWriter;I)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getFixedToUserRotation(I)I

    move-result v0

    .line 488
    .local v0, "fixedToUserRotationMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_28

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: check logcat for more details."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    const/4 v1, -0x1

    return v1

    .line 496
    :pswitch_15
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    return v1

    .line 493
    :pswitch_1b
    const-string v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    return v1

    .line 490
    :pswitch_21
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1b
        :pswitch_15
    .end packed-switch
.end method

.method private printFoldedArea(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 325
    .local v0, "foldedArea":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 326
    const-string v1, "Folded area: none"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    .line 328
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folded area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    :goto_4a
    return-void
.end method

.method private printInitialDisplayDensity(Ljava/io/PrintWriter;I)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    .line 275
    .local v0, "initialDensity":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v1

    .line 276
    .local v1, "baseDensity":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    if-eq v0, v1, :cond_3a

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 284
    .end local v0    # "initialDensity":I
    .end local v1    # "baseDensity":I
    :cond_3a
    goto :goto_52

    .line 280
    :catch_3b
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_52
    return-void
.end method

.method private printInitialDisplaySize(Ljava/io/PrintWriter;I)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I

    .line 189
    const-string/jumbo v0, "x"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 190
    .local v1, "initialSize":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 193
    .local v2, "baseSize":Landroid/graphics/Point;
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 194
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Physical size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_61} :catch_62

    .line 203
    :cond_61
    goto :goto_79

    .line 199
    :catch_62
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_79
    return-void
.end method

.method private printMultiWindowConfigHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 832
    const-string v0, "  set-multi-window-config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const-string v0, "    Sets options to determine if activity should be shown in multi window:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    const-string v0, "      --supportsNonResizable [configValue]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    const-string v0, "        Whether the device supports non-resizable activity in multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    const-string v0, "        -1: The device doesn\'t support non-resizable in multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const-string v0, "         0: The device supports non-resizable in multi window only if"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    const-string v0, "            this is a large screen device."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    const-string v0, "         1: The device always supports non-resizable in multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    const-string v0, "      --respectsActivityMinWidthHeight [configValue]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    const-string v0, "        Whether the device checks the activity min width/height to determine "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    const-string v0, "        if it can be shown in multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    const-string v0, "        -1: The device ignores the activity min width/height when determining"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    const-string v0, "            if it can be shown in multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    const-string v0, "         0: If this is a small screen, the device compares the activity min"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    const-string v0, "            width/height with the min multi window modes dimensions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const-string v0, "            the device supports to determine if the activity can be shown in"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    const-string v0, "            multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    const-string v0, "         1: The device always compare the activity min width/height with the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    const-string v0, "            min multi window dimensions the device supports to determine if"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    const-string v0, "            the activity can be shown in multi window."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    const-string v0, "  get-multi-window-config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    const-string v0, "    Prints values of the multi window config options."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    const-string v0, "  reset-multi-window-config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    const-string v0, "    Resets overrides to default values of the multi window config options."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method private runDismissKeyguard(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method private runDisplayDensity(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "densityStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, "displayId":I
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 293
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    .line 294
    return v2

    .line 295
    :cond_f
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 296
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    .line 297
    return v2

    .line 298
    :cond_1b
    const-string/jumbo v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 299
    const/4 v3, -0x1

    .local v3, "density":I
    goto :goto_3b

    .line 302
    .end local v3    # "density":I
    :cond_26
    const/4 v3, -0x1

    :try_start_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2b} :catch_4a

    .line 306
    .local v4, "density":I
    nop

    .line 307
    const/16 v5, 0x48

    if-ge v4, v5, :cond_3a

    .line 308
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: density must be >= 72"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    return v3

    .line 307
    :cond_3a
    move v3, v4

    .line 313
    .end local v4    # "density":I
    .restart local v3    # "density":I
    :goto_3b
    const/4 v4, -0x2

    if-lez v3, :cond_44

    .line 314
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1, v3, v4}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    goto :goto_49

    .line 317
    :cond_44
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1, v4}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 320
    :goto_49
    return v2

    .line 303
    .end local v3    # "density":I
    :catch_4a
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    return v3
.end method

.method private runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "areaStr":Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 336
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 337
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFoldedArea(Ljava/io/PrintWriter;)V

    .line 338
    return v2

    .line 339
    :cond_10
    const-string/jumbo v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 340
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_5f

    .line 342
    :cond_1d
    const-string v3, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 344
    .local v3, "flattenedPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 345
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_38

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const/4 v2, -0x1

    return v2

    .line 349
    :cond_38
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 350
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 349
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    .end local v3    # "flattenedPattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :goto_5f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 354
    return v2
.end method

.method private runDisplayScaling(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "scalingStr":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    goto :goto_2a

    .line 362
    :cond_17
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 363
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 369
    :goto_2a
    return v2

    .line 366
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const/4 v1, -0x1

    return v1
.end method

.method private runDisplaySize(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "size":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "displayId":I
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 211
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    .line 212
    return v2

    .line 213
    :cond_f
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 214
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    .line 215
    return v2

    .line 216
    :cond_1b
    const-string/jumbo v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_27

    .line 217
    move v3, v4

    .local v3, "h":I
    .local v4, "w":I
    goto :goto_4c

    .line 219
    .end local v3    # "h":I
    .end local v4    # "w":I
    :cond_27
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 220
    .local v3, "div":I
    if-lez v3, :cond_78

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_38

    goto :goto_78

    .line 224
    :cond_38
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "wstr":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "hstr":Ljava/lang/String;
    :try_start_42
    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v7

    .line 228
    .local v7, "w":I
    invoke-direct {p0, v6, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v4
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4a} :catch_5c

    .line 232
    .local v4, "h":I
    move v3, v4

    move v4, v7

    .line 235
    .end local v5    # "wstr":Ljava/lang/String;
    .end local v6    # "hstr":Ljava/lang/String;
    .end local v7    # "w":I
    .local v3, "h":I
    .local v4, "w":I
    :goto_4c
    if-ltz v4, :cond_56

    if-ltz v3, :cond_56

    .line 236
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1, v4, v3}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V

    goto :goto_5b

    .line 238
    :cond_56
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 240
    :goto_5b
    return v2

    .line 229
    .end local v4    # "w":I
    .local v3, "div":I
    .restart local v5    # "wstr":Ljava/lang/String;
    .restart local v6    # "hstr":Ljava/lang/String;
    :catch_5c
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: bad number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    return v4

    .line 221
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "wstr":Ljava/lang/String;
    .end local v6    # "hstr":Ljava/lang/String;
    :cond_78
    :goto_78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    return v4
.end method

.method private runDisplayUserRotation(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 401
    :cond_c
    const-string v2, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 406
    :cond_20
    move-object v2, v1

    .line 407
    .local v2, "lockMode":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 408
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(Ljava/io/PrintWriter;I)I

    move-result v3

    return v3

    .line 411
    :cond_28
    const-string v3, "free"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 412
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 413
    return v4

    .line 416
    :cond_37
    const-string v3, "lock"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, -0x1

    if-nez v3, :cond_4a

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: argument needs to be either -d, free or lock."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    return v5

    .line 421
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_57

    :try_start_50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_58

    .line 427
    :catch_55
    move-exception v3

    goto :goto_5e

    .line 424
    :cond_57
    move v3, v5

    .line 425
    .local v3, "rotation":I
    :goto_58
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0, v3}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_5d} :catch_55

    .line 426
    return v4

    .line 428
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :goto_5e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    return v5
.end method

.method private runDumpViewCapture()I
    .registers 9

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runDumpViewCapture()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 648
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "windowName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "viewName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_58

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_58

    .line 654
    :cond_23
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/internal/os/ByteTransferPipe;

    .line 656
    .local v2, "pip":[Lcom/android/internal/os/ByteTransferPipe;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    check-cast v4, Ljava/io/FileOutputStream;

    .line 657
    .local v4, "out":Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 659
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v7, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/android/internal/os/ByteTransferPipe;)V

    invoke-virtual {v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 674
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 677
    :try_start_44
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    move-result-object v5

    .line 678
    .local v5, "data":[B
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_4f

    .line 681
    .end local v5    # "data":[B
    nop

    .line 682
    return v3

    .line 679
    :catch_4f
    move-exception v3

    .line 680
    .local v3, "e":Ljava/io/IOException;
    const/4 v5, -0x1

    return v5

    .line 674
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 651
    .end local v2    # "pip":[Lcom/android/internal/os/ByteTransferPipe;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_58
    :goto_58
    return v3

    .line 645
    .end local v0    # "windowName":Ljava/lang/String;
    .end local v1    # "viewName":Ljava/lang/String;
    :cond_59
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DUMP permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runDumpVisibleWindowViews(Ljava/io/PrintWriter;)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runDumpVisibleWindowViews()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 580
    const/4 v0, 0x1

    .line 581
    .local v0, "encode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "args":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "--noEncode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 583
    const/4 v0, 0x0

    .line 587
    :cond_21
    const/4 v2, 0x0

    :try_start_22
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_99

    .line 588
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_2b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v4, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;>;"
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_8f

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 590
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v6

    .line 591
    .local v6, "recentTasks":Lcom/android/server/wm/RecentTasks;
    if-eqz v6, :cond_47

    .line 592
    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v7

    goto :goto_48

    .line 593
    :cond_47
    const/4 v7, -0x1

    :goto_48
    nop

    .line 595
    .local v7, "recentsComponentUid":I
    move v8, v0

    .line 598
    .local v8, "finalEncode":Z
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v10, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v7, v8, v4}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;IZLjava/util/ArrayList;)V

    invoke-virtual {v9, v10, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 623
    .end local v6    # "recentTasks":Lcom/android/server/wm/RecentTasks;
    .end local v7    # "recentsComponentUid":I
    .end local v8    # "finalEncode":Z
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_89

    :try_start_57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 624
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_8f

    .line 627
    .local v6, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;"
    :try_start_6a
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/ByteTransferPipe;

    invoke-virtual {v7}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    move-result-object v7
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_72} :catch_83
    .catchall {:try_start_6a .. :try_end_72} :catchall_8f

    .line 631
    .local v7, "data":[B
    nop

    .line 632
    :try_start_73
    new-instance v8, Ljava/util/zip/ZipEntry;

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 633
    invoke-virtual {v3, v7}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_8f

    .line 634
    .end local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;"
    .end local v7    # "data":[B
    goto :goto_5e

    .line 628
    .restart local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;"
    :catch_83
    move-exception v7

    .line 630
    .local v7, "e":Ljava/io/IOException;
    goto :goto_5e

    .line 635
    .end local v4    # "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;>;"
    .end local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;"
    .end local v7    # "e":Ljava/io/IOException;
    :cond_85
    :try_start_85
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_99

    .line 637
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_b4

    .line 623
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;>;"
    :catchall_89
    move-exception v6

    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "encode":Z
    .end local v1    # "args":Ljava/lang/String;
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerShellCommand;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v6
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    .line 587
    .end local v4    # "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/os/ByteTransferPipe;>;>;"
    .restart local v0    # "encode":Z
    .restart local v1    # "args":Ljava/lang/String;
    .restart local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerShellCommand;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_8f
    move-exception v4

    :try_start_90
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v5

    :try_start_95
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "encode":Z
    .end local v1    # "args":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerShellCommand;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_98
    throw v4
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_99} :catch_99

    .line 635
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "encode":Z
    .restart local v1    # "args":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerShellCommand;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_99
    move-exception v3

    .line 636
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error fetching dump "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b4
    return v2

    .line 576
    .end local v0    # "encode":Z
    .end local v1    # "args":Ljava/lang/String;
    :cond_b5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DUMP permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runFixedToUserRotation(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "arg":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 452
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(Ljava/io/PrintWriter;I)I

    .line 453
    return v2

    .line 456
    :cond_c
    const-string v3, "-d"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_20
    if-nez v1, :cond_27

    .line 462
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 466
    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_7a

    :cond_2f
    goto :goto_4e

    :sswitch_30
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v3, "disabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_4f

    :sswitch_44
    const-string v3, "enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v2

    goto :goto_4f

    :goto_4e
    move v3, v4

    :goto_4f
    packed-switch v3, :pswitch_data_88

    .line 477
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: expecting enabled, disabled or default, but we get "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    return v4

    .line 474
    :pswitch_6d
    const/4 v3, 0x0

    .line 475
    .local v3, "fixedToUserRotation":I
    goto :goto_73

    .line 471
    .end local v3    # "fixedToUserRotation":I
    :pswitch_6f
    const/4 v3, 0x1

    .line 472
    .restart local v3    # "fixedToUserRotation":I
    goto :goto_73

    .line 468
    .end local v3    # "fixedToUserRotation":I
    :pswitch_71
    const/4 v3, 0x2

    .line 469
    .restart local v3    # "fixedToUserRotation":I
    nop

    .line 482
    :goto_73
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v0, v3}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V

    .line 483
    return v2

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x5ff074bf -> :sswitch_44
        0x10263a7c -> :sswitch_3a
        0x5c13d641 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_71
        :pswitch_6f
        :pswitch_6d
    .end packed-switch
.end method

.method private runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 536
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 539
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getIgnoreOrientationRequest(I)Z

    move-result v2

    .line 540
    .local v2, "ignoreOrientationRequest":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreOrientationRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const/4 v3, 0x0

    return v3
.end method

.method private runGetMultiWindowConfig(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supports non-resizable in multi window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Respects activity min width/height in multi window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 744
    const/4 v0, 0x0

    return v0

    .line 743
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private runGetWindowMonitor(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 169
    invoke-static {}, Lcom/android/server/wm/MiuiWindowMonitorStub;->getInstance()Lcom/android/server/wm/MiuiWindowMonitorStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiWindowMonitorStub;->dump(Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method private runMiuiLogging(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "enable-text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "disable-text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 156
    const-string v1, "Error: wrong args , must be enable-text or disable-text"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const/4 v1, -0x1

    return v1

    .line 159
    :cond_1b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 161
    .local v1, "enable":Z
    :goto_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "config":Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->enableWmsDebugConfig(Ljava/lang/String;Z)V

    goto :goto_1f

    .line 165
    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method private runReset(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 764
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 767
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v2, -0x2

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 770
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 776
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V

    .line 782
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setIgnoreOrientationRequest(IZ)V

    .line 785
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()I

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset all settings for displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    return v2
.end method

.method private runResetMultiWindowConfig()I
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 750
    .local v0, "supportsNonResizable":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 752
    .local v1, "respectsActivityMinWidthHeight":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 753
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 754
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 756
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 757
    const/4 v2, 0x0

    return v2

    .line 756
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private runSetBlurDisabled(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_3e

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blur supported on device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blur enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    invoke-virtual {v3}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    return v1

    .line 252
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_a2

    :cond_46
    goto :goto_70

    :sswitch_47
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x2

    goto :goto_71

    :sswitch_51
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    move v2, v1

    goto :goto_71

    :sswitch_5c
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_71

    :sswitch_66
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x3

    goto :goto_71

    :goto_70
    move v2, v3

    :goto_71
    packed-switch v2, :pswitch_data_b4

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: expected true, 1, false, 0, but got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    return v3

    .line 259
    :pswitch_8f
    const/4 v2, 0x0

    .line 260
    .local v2, "disableBlur":Z
    goto :goto_93

    .line 255
    .end local v2    # "disableBlur":Z
    :pswitch_91
    const/4 v2, 0x1

    .line 256
    .restart local v2    # "disableBlur":Z
    nop

    .line 266
    :goto_93
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 267
    nop

    .line 266
    const-string v4, "disable_window_blurs"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    return v1

    :sswitch_data_a2
    .sparse-switch
        0x30 -> :sswitch_66
        0x31 -> :sswitch_5c
        0x36758e -> :sswitch_51
        0x5cb1923 -> :sswitch_47
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_91
        :pswitch_91
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method private runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 508
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 509
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 513
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_76

    :cond_22
    goto :goto_4c

    :sswitch_23
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x2

    goto :goto_4d

    :sswitch_2d
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v3

    goto :goto_4d

    :sswitch_38
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_4d

    :sswitch_42
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x3

    goto :goto_4d

    :goto_4c
    move v2, v4

    :goto_4d
    packed-switch v2, :pswitch_data_88

    .line 523
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: expecting true, 1, false, 0, but we get "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    return v4

    .line 520
    :pswitch_6b
    const/4 v2, 0x0

    .line 521
    .local v2, "ignoreOrientationRequest":Z
    goto :goto_6f

    .line 516
    .end local v2    # "ignoreOrientationRequest":Z
    :pswitch_6d
    const/4 v2, 0x1

    .line 517
    .restart local v2    # "ignoreOrientationRequest":Z
    nop

    .line 528
    :goto_6f
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v0, v2}, Landroid/view/IWindowManager;->setIgnoreOrientationRequest(IZ)V

    .line 529
    return v3

    nop

    :sswitch_data_76
    .sparse-switch
        0x30 -> :sswitch_42
        0x31 -> :sswitch_38
        0x36758e -> :sswitch_2d
        0x5cb1923 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6d
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method private runSetMultiWindowConfig()I
    .registers 7

    .line 687
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 688
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: No arguments provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    :cond_f
    const/4 v0, 0x0

    .line 691
    .local v0, "result":I
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_63

    .line 692
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_68

    :cond_23
    goto :goto_37

    :sswitch_24
    const-string v2, "--respectsActivityMinWidthHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v4, "--supportsNonResizable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_38

    :goto_37
    move v2, v3

    :goto_38
    packed-switch v2, :pswitch_data_72

    .line 701
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unrecognized multi window option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    return v3

    .line 698
    :pswitch_56
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetRespectsActivityMinWidthHeightMultiWindow()I

    move-result v2

    add-int/2addr v0, v2

    .line 699
    goto :goto_62

    .line 695
    :pswitch_5c
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetSupportsNonResizableMultiWindow()I

    move-result v2

    add-int/2addr v0, v2

    .line 696
    nop

    .line 705
    .end local v1    # "arg":Ljava/lang/String;
    :goto_62
    goto :goto_10

    .line 706
    :cond_63
    if-nez v0, :cond_66

    goto :goto_67

    :cond_66
    move v2, v3

    :goto_67
    return v2

    :sswitch_data_68
    .sparse-switch
        0x5883cca2 -> :sswitch_2e
        0x662a2b37 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_56
    .end packed-switch
.end method

.method private runSetRespectsActivityMinWidthHeightMultiWindow()I
    .registers 5

    .line 724
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: a config value of [-1, 0, 1] must be provided as an argument for respectsActivityMinWidthHeightMultiWindow"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    const/4 v1, -0x1

    return v1

    .line 730
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 731
    .local v1, "configValue":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 732
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 733
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 734
    const/4 v2, 0x0

    return v2

    .line 733
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private runSetSupportsNonResizableMultiWindow()I
    .registers 5

    .line 710
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 712
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: a config value of [-1, 0, 1] must be provided as an argument for supportsNonResizableMultiWindow"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const/4 v1, -0x1

    return v1

    .line 716
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 717
    .local v1, "configValue":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 718
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 719
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 720
    const/4 v2, 0x0

    return v2

    .line 719
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method


# virtual methods
.method synthetic lambda$dumpLocalWindowAsync$0$com-android-server-wm-WindowManagerShellCommand(ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "encoded"    # Z
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerShellCommand;->dumpRemoteWindowLocked(ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_e
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    .line 567
    goto :goto_12

    .line 568
    :catchall_c
    move-exception v1

    goto :goto_17

    .line 563
    :catch_e
    move-exception v1

    .line 566
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 569
    return-void

    .line 568
    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$runDumpVisibleWindowViews$1$com-android-server-wm-WindowManagerShellCommand(IZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "recentsComponentUid"    # I
    .param p2, "finalEncode"    # Z
    .param p3, "requestList"    # Ljava/util/ArrayList;
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 599
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 600
    .local v0, "isRecents":Z
    :goto_9
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_40

    .line 601
    :cond_11
    const/4 v1, 0x0

    .line 603
    .local v1, "pipe":Lcom/android/internal/os/ByteTransferPipe;
    :try_start_12
    new-instance v2, Lcom/android/internal/os/ByteTransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V

    move-object v1, v2

    .line 607
    invoke-virtual {v1}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 608
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isClientLocal()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 609
    iget-object v3, p4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->dumpLocalWindowAsync(ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2d

    .line 611
    :cond_28
    iget-object v3, p4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->dumpRemoteWindowLocked(ZLandroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    .line 614
    :goto_2d
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_38} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_38} :catch_3a

    .line 620
    nop

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_40

    .line 615
    :catch_3a
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_40

    .line 618
    invoke-virtual {v1}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    .line 622
    .end local v1    # "pipe":Lcom/android/internal/os/ByteTransferPipe;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_40
    :goto_40
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 76
    if-nez p1, :cond_7

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 81
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1ee

    :cond_13
    goto/16 :goto_fe

    :sswitch_15
    const-string/jumbo v2, "scaling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto/16 :goto_ff

    :sswitch_21
    const-string v2, "fixed-to-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    goto/16 :goto_ff

    :sswitch_2d
    const-string v2, "density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto/16 :goto_ff

    :sswitch_38
    const-string/jumbo v2, "reset-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xf

    goto/16 :goto_ff

    :sswitch_45
    const-string v2, "logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    goto/16 :goto_ff

    :sswitch_50
    const-string/jumbo v2, "miui-window-leak-monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x13

    goto/16 :goto_ff

    :sswitch_5d
    const-string/jumbo v2, "user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x7

    goto/16 :goto_ff

    :sswitch_69
    const-string/jumbo v2, "miuilogging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x12

    goto/16 :goto_ff

    :sswitch_76
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x10

    goto/16 :goto_ff

    :sswitch_83
    const-string/jumbo v2, "set-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xd

    goto/16 :goto_ff

    :sswitch_90
    const-string/jumbo v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_ff

    :sswitch_9c
    const-string v2, "dismiss-keyguard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_ff

    :sswitch_a6
    const-string v2, "folded-area"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    goto :goto_ff

    :sswitch_b0
    const-string v2, "dump-view-capture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xc

    goto :goto_ff

    :sswitch_bb
    const-string v2, "dump-visible-window-views"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xb

    goto :goto_ff

    :sswitch_c6
    const-string v2, "disable-blur"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x11

    goto :goto_ff

    :sswitch_d1
    const-string/jumbo v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto :goto_ff

    :sswitch_dc
    const-string/jumbo v2, "set-ignore-orientation-request"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x9

    goto :goto_ff

    :sswitch_e8
    const-string v2, "get-ignore-orientation-request"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    goto :goto_ff

    :sswitch_f3
    const-string v2, "get-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xe

    goto :goto_ff

    :goto_fe
    move v2, v1

    :goto_ff
    packed-switch v2, :pswitch_data_240

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1d5

    .line 141
    :pswitch_108
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetWindowMonitor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 139
    :pswitch_10d
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runMiuiLogging(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 136
    :pswitch_112
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBlurDisabled(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 134
    :pswitch_117
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runReset(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 132
    :pswitch_11c
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()I

    move-result v1

    return v1

    .line 130
    :pswitch_121
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetMultiWindowConfig(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 128
    :pswitch_126
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetMultiWindowConfig()I

    move-result v1

    return v1

    .line 125
    :pswitch_12b
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDumpViewCapture()I

    move-result v1

    return v1

    .line 122
    :pswitch_130
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDumpVisibleWindowViews(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 120
    :pswitch_135
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 118
    :pswitch_13a
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 116
    :pswitch_13f
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runFixedToUserRotation(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 114
    :pswitch_144
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayUserRotation(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 98
    :pswitch_149
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "args":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result v3
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_155} :catch_1d6

    .line 100
    .local v3, "result":I
    if-eqz v3, :cond_1b2

    .line 102
    nop

    .line 103
    :try_start_158
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_160} :catch_197
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_160} :catch_1d6

    .line 104
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not handled, calling status bar with args: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-class v5, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 107
    invoke-interface {v5, v2, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_185
    .catchall {:try_start_160 .. :try_end_185} :catchall_18b

    .line 108
    if-eqz v4, :cond_18a

    :try_start_187
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18a} :catch_197
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_18a} :catch_1d6

    .line 110
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_18a
    goto :goto_1b2

    .line 102
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_18b
    move-exception v5

    if-eqz v4, :cond_196

    :try_start_18e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_192

    goto :goto_196

    :catchall_192
    move-exception v6

    :try_start_193
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "args":[Ljava/lang/String;
    .end local v3    # "result":I
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerShellCommand;
    .end local p1    # "cmd":Ljava/lang/String;
    :cond_196
    :goto_196
    throw v5
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_197} :catch_197
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_197} :catch_1d6

    .line 108
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "args":[Ljava/lang/String;
    .restart local v3    # "result":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerShellCommand;
    .restart local p1    # "cmd":Ljava/lang/String;
    :catch_197
    move-exception v4

    .line 109
    .local v4, "e":Ljava/io/IOException;
    :try_start_198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to handle logging command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1b2
    :goto_1b2
    return v3

    .line 96
    .end local v2    # "args":[Ljava/lang/String;
    .end local v3    # "result":I
    :pswitch_1b3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 91
    :pswitch_1bc
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDismissKeyguard(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 89
    :pswitch_1c1
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayScaling(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 87
    :pswitch_1c6
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 85
    :pswitch_1cb
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 83
    :pswitch_1d0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_1d4
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_1d4} :catch_1d6

    return v1

    .line 144
    :goto_1d5
    return v1

    .line 146
    :catch_1d6
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_1ee
    .sparse-switch
        -0x74c7d6cc -> :sswitch_f3
        -0x6d06f812 -> :sswitch_e8
        -0x64eeec9e -> :sswitch_dc
        -0x3f9f2f3e -> :sswitch_d1
        -0x3d8c3fd4 -> :sswitch_c6
        -0x3c7b3dfb -> :sswitch_bb
        -0x1780d8a9 -> :sswitch_b0
        -0x14126e26 -> :sswitch_a6
        -0xdad5077 -> :sswitch_9c
        0x35e001 -> :sswitch_90
        0x58b5840 -> :sswitch_83
        0x6761d4f -> :sswitch_76
        0xa88702f -> :sswitch_69
        0xb3ebb40 -> :sswitch_5d
        0xb74b790 -> :sswitch_50
        0x1466cb5f -> :sswitch_45
        0x4fab00ad -> :sswitch_38
        0x5c8c94e8 -> :sswitch_2d
        0x5e693ca7 -> :sswitch_21
        0x71e5fb87 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_1d0
        :pswitch_1cb
        :pswitch_1c6
        :pswitch_1c1
        :pswitch_1bc
        :pswitch_1b3
        :pswitch_149
        :pswitch_144
        :pswitch_13f
        :pswitch_13a
        :pswitch_135
        :pswitch_130
        :pswitch_12b
        :pswitch_126
        :pswitch_121
        :pswitch_11c
        :pswitch_117
        :pswitch_112
        :pswitch_10d
        :pswitch_108
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 793
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 794
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Window manager (window) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    const-string v1, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    const-string v1, "    Return or override display size."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const-string v1, "  density [reset|DENSITY] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    const-string v1, "    Return or override display density."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    const-string v1, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    const-string v1, "    Return or override folded area."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const-string v1, "  scaling [off|auto] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string v1, "    Set display scaling mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    const-string v1, "  dismiss-keyguard"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    const-string v1, "  disable-blur [true|1|false|0]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    const-string v1, "  user-rotation [-d DISPLAY_ID] [free|lock] [rotation]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v1, "    Print or set user rotation mode and user rotation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string v1, "  dump-visible-window-views"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    const-string v1, "    Dumps the encoded view hierarchies of visible windows"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const-string v1, "  fixed-to-user-rotation [-d DISPLAY_ID] [enabled|disabled|default]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v1, "    Print or set rotating display for app requested orientation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    const-string v1, "  set-ignore-orientation-request [-d DISPLAY_ID] [true|1|false|0]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v1, "  get-ignore-orientation-request [-d DISPLAY_ID] "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const-string v1, "    If app requested orientation should be ignored."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printMultiWindowConfigHelp(Ljava/io/PrintWriter;)V

    .line 821
    const-string v1, "  reset [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v1, "    Reset all override settings."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_a1

    .line 824
    const-string v1, "  tracing (start | stop)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const-string v1, "    Start or stop window tracing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string v1, "  logging (start | stop | enable | disable | enable-text | disable-text)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string v1, "    Logging settings."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    :cond_a1
    return-void
.end method
