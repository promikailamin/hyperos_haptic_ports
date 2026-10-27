.class public Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WindowManagerShellCommand.java"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mInterface:Landroid/view/IWindowManager;

.field public final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$T3ugGYAx3t3aCVayEDwrhYnPYYQ(Lcom/android/server/wm/WindowManagerShellCommand;Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerShellCommand;->lambda$dumpLocalWindowAsync$0(Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aS8nxT7ZSVg7suqFh6mOPqGsSSc(Lcom/android/server/wm/WindowManagerShellCommand;ILjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerShellCommand;->lambda$runDumpVisibleWindowViews$1(ILjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    .line 89
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 90
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method


# virtual methods
.method public final dumpLocalWindowAsync(Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 631
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDisplayId(Ljava/lang/String;)I
    .registers 4

    .line 178
    const-string v0, "-d"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_53

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 181
    :try_start_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p1

    goto :goto_22

    :catch_20
    move-exception p1

    goto :goto_3b

    .line 185
    :goto_22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 183
    :goto_3b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_53
    :goto_53
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$dumpLocalWindowAsync$0(Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 632
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 634
    :try_start_8
    const-string v0, "DUMP_ENCODED"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_11
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception p1

    goto :goto_1a

    :catch_11
    move-exception p1

    .line 638
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 640
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$runDumpVisibleWindowViews$1(ILjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 659
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 660
    :goto_9
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_41

    :cond_11
    const/4 p1, 0x0

    .line 663
    :try_start_12
    new-instance v0, Lcom/android/internal/os/ByteTransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_3c

    .line 664
    :try_start_17
    invoke-virtual {v0}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 665
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isClientLocal()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 666
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->dumpLocalWindowAsync(Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_30

    :catch_27
    move-object p1, v0

    goto :goto_3c

    .line 668
    :cond_29
    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const-string v2, "DUMP_ENCODED"

    invoke-interface {p0, v2, p1, v1}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 671
    :goto_30
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3b} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3b} :catch_27

    return-void

    :catch_3c
    :goto_3c
    if-eqz p1, :cond_41

    .line 675
    invoke-virtual {p1}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    :cond_41
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 96
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 100
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_192

    goto/16 :goto_178

    :sswitch_15
    const-string v2, "scaling"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayScaling(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :catch_22
    move-exception p0

    goto/16 :goto_17d

    .line 100
    :sswitch_25
    const-string v2, "fixed-to-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runFixedToUserRotation(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_32
    const-string v2, "density"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_3f
    const-string v2, "reset-freeze-recent-tasks"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetFreezeRecentTaskListReordering(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_4c
    const-string v2, "reset-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()I

    move-result p0

    return p0

    .line 100
    :sswitch_59
    const-string v2, "set-letterbox-style"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxStyle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_66
    const-string v2, "reset-letterbox-style"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetLetterboxStyle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_73
    const-string v2, "set-sandbox-display-apis"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSandboxDisplayApis(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_80
    const-string v2, "logging"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 117
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object p1

    .line 119
    instance-of v2, p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v2, :cond_9e

    .line 120
    check-cast p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    invoke-virtual {p1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p0

    if-eqz p0, :cond_9d

    .line 122
    const-string p1, "Not handled, please use `adb shell dumpsys activity service SystemUIService WMShell` if you are looking for ProtoLog in WMShell"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9d
    return p0

    .line 128
    :cond_9e
    const-string p0, "ProtoLog impl doesn\'t support handling commands"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 100
    :sswitch_a4
    const-string v2, "user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayUserRotation(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_b1
    const-string v2, "set-display-windowing-mode"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetDisplayWindowingMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_be
    const-string v2, "shell"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runWmShellCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_cb
    const-string v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runReset(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_d8
    const-string v2, "set-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 150
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetMultiWindowConfig()I

    move-result p0

    return p0

    .line 100
    :sswitch_e5
    const-string v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_f2
    const-string v2, "dismiss-keyguard"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDismissKeyguard(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_ff
    const-string v2, "get-display-windowing-mode"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetDisplayWindowingMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_10c
    const-string v2, "folded-area"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_119
    const-string v2, "dump-visible-window-views"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDumpVisibleWindowViews(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_126
    const-string v2, "disable-blur"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBlurDisabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_133
    const-string v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 115
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 100
    :sswitch_144
    const-string v2, "set-ignore-orientation-request"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_151
    const-string v2, "get-ignore-orientation-request"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_15e
    const-string v2, "get-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetMultiWindowConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 100
    :sswitch_16b
    const-string v2, "get-letterbox-style"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetLetterboxStyle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 168
    :cond_178
    :goto_178
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_17c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17c} :catch_22

    return p0

    .line 171
    :goto_17d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_192
    .sparse-switch
        -0x7753caae -> :sswitch_16b
        -0x74c7d6cc -> :sswitch_15e
        -0x6d06f812 -> :sswitch_151
        -0x64eeec9e -> :sswitch_144
        -0x3f9f2f3e -> :sswitch_133
        -0x3d8c3fd4 -> :sswitch_126
        -0x3c7b3dfb -> :sswitch_119
        -0x14126e26 -> :sswitch_10c
        -0xe8e7aa0 -> :sswitch_ff
        -0xdad5077 -> :sswitch_f2
        0x35e001 -> :sswitch_e5
        0x58b5840 -> :sswitch_d8
        0x6761d4f -> :sswitch_cb
        0x6855e30 -> :sswitch_be
        0x7a16ad4 -> :sswitch_b1
        0xb3ebb40 -> :sswitch_a4
        0x1466cb5f -> :sswitch_80
        0x14833995 -> :sswitch_73
        0x2b9fb14b -> :sswitch_66
        0x2ca8ca5e -> :sswitch_59
        0x4fab00ad -> :sswitch_4c
        0x579b8b94 -> :sswitch_3f
        0x5c8c94e8 -> :sswitch_32
        0x5e693ca7 -> :sswitch_25
        0x71e5fb87 -> :sswitch_15
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 3

    .line 1562
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1563
    const-string v1, "Window manager (window) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    const-string v1, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const-string v1, "    Return or override display size."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    const-string v1, "  density [reset|DENSITY] [-d DISPLAY_ID] [-u UNIQUE_ID] [-r]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    const-string v1, "    Return or override display density."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    const-string v1, "    Use option -r at the end to persist display size on resolution change."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    const-string v1, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    const-string v1, "    Return or override folded area."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    const-string v1, "  scaling [off|auto] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const-string v1, "    Set display scaling mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    const-string v1, "  dismiss-keyguard"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    const-string v1, "  disable-blur [true|1|false|0]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    const-string v1, "  user-rotation [-d DISPLAY_ID] [free|lock] [rotation]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    const-string v1, "    Print or set user rotation mode and user rotation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    const-string v1, "  dump-visible-window-views"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    const-string v1, "    Dumps the encoded view hierarchies of visible windows"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    const-string v1, "  fixed-to-user-rotation [-d DISPLAY_ID] [enabled|disabled|default"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    const-string v1, "      |enabled_if_no_auto_rotation]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    const-string v1, "    Print or set rotating display for app requested orientation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    const-string v1, "  set-ignore-orientation-request [-d DISPLAY_ID] [reset|true|1|false|0]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    const-string v1, "  get-ignore-orientation-request [-d DISPLAY_ID] "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    const-string v1, "    If app requested orientation should be ignored."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1589
    const-string v1, "  set-sandbox-display-apis [true|1|false|0]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    const-string v1, "    Sets override of Display APIs getRealSize / getRealMetrics to reflect "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    const-string v1, "    DisplayArea of the activity, or the window bounds if in letterbox or"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    const-string v1, "    Size Compat Mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printLetterboxHelp(Ljava/io/PrintWriter;)V

    .line 1595
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printMultiWindowConfigHelp(Ljava/io/PrintWriter;)V

    .line 1597
    const-string p0, "  reset-freeze-recent-tasks"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    const-string p0, "    Resets the spatial ordering of the recent tasks list"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    const-string p0, "  set-display-windowing-mode [-d DISPLAY_ID] [mode_id]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    const-string p0, "    As mode_id, use 0 for undefined, 5 for freeform, 1 for fullscreen"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    const-string p0, "  get-display-windowing-mode [-d DISPLAY_ID]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    const-string p0, "  reset [-d DISPLAY_ID]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    const-string p0, "    Reset all override settings."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    const-string p0, "  shell <cmd> ..."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    const-string p0, "    Runs a WMShell command.  To see a full list of available wmshell commands run \'adb shell wm shell help\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    sget-boolean p0, Landroid/os/Build;->IS_USER:Z

    if-nez p0, :cond_e5

    .line 1611
    const-string p0, "  tracing (start | stop)"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    const-string p0, "    Start or stop window tracing."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    const-string p0, "  logging (start | stop | enable | disable | enable-text | disable-text)"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    const-string p0, "    Logging settings."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e5
    return-void
.end method

.method public final parseDimension(Ljava/lang/String;I)I
    .registers 5

    .line 441
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 444
    :cond_18
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0xa0

    .line 447
    :try_start_22
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move p0, v0

    .line 451
    :goto_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr p1, p0

    div-int/2addr p1, v0

    return p1

    .line 454
    :cond_3b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final printDisplayUserRotation(Ljava/io/PrintWriter;I)I
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayUserRotation(I)I

    move-result v0

    if-gez v0, :cond_13

    .line 501
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: check logcat for more details."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 504
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_22

    .line 505
    const-string p0, "free"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p2

    .line 508
    :cond_22
    const-string p0, "lock "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return p2
.end method

.method public final printFixedToUserRotation(Ljava/io/PrintWriter;I)I
    .registers 5

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getFixedToUserRotation(I)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    const/4 v1, 0x1

    if-eq p2, v1, :cond_29

    const/4 v1, 0x2

    if-eq p2, v1, :cond_23

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1d

    .line 570
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: check logcat for more details."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 564
    :cond_1d
    const-string p0, "enabled_if_no_auto_rotation"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 567
    :cond_23
    const-string p0, "enabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 561
    :cond_29
    const-string p0, "disabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 558
    :cond_2f
    const-string p0, "default"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final printFoldedArea(Ljava/io/PrintWriter;)V
    .registers 5

    .line 356
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 358
    const-string p0, "Folded area: none"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 360
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folded area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printInitialDisplayDensity(Ljava/io/PrintWriter;I)V
    .registers 5

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p0

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Physical density: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v0, p0, :cond_39

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Override density: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p0

    goto :goto_3a

    :cond_39
    return-void

    .line 291
    :goto_3a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printInitialDisplaySize(Ljava/io/PrintWriter;I)V
    .registers 7

    .line 192
    const-string v0, "x"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 193
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 196
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p2, v2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Physical size: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Override size: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception p0

    goto :goto_5c

    :cond_5b
    return-void

    .line 205
    :goto_5c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printLetterboxHelp(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1619
    const-string p0, "  set-letterbox-style"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    const-string p0, "    Sets letterbox style using the following options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    const-string p0, "      --aspectRatio aspectRatio"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    const-string p0, "        Aspect ratio of letterbox for fixed orientation. If aspectRatio <= 1.0"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    const-string p0, "        both it and R.dimen.config_fixedOrientationLetterboxAspectRatio will"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    const-string v0, "        be ignored and framework implementation will determine aspect ratio."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    const-string v1, "      --minAspectRatioForUnresizable aspectRatio"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    const-string v1, "        Default min aspect ratio for unresizable apps which is used when an"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    const-string v1, "        app is eligible for the size compat mode.  If aspectRatio <= 1.0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    const-string p0, "      --cornerRadius radius"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    const-string p0, "        Corners radius (in pixels) for activities in the letterbox mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    const-string p0, "        If radius < 0, both R.integer.config_letterboxActivityCornersRadius"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    const-string p0, "        and it will be ignored and corners of the activity won\'t be rounded."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    const-string p0, "      --backgroundType [reset|solid_color|app_color_background"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    const-string p0, "          |app_color_background_floating|wallpaper]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    const-string p0, "        Type of background used in the letterbox mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    const-string p0, "      --backgroundColor color"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    const-string p0, "        Color of letterbox which is be used when letterbox background type"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    const-string p0, "        is \'solid-color\'. Use (set)get-letterbox-style to check and control"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    const-string p0, "        letterbox background type. See Color#parseColor for allowed color"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    const-string p0, "        formats (#RRGGBB and some colors by name, e.g. magenta or olive)."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1644
    const-string p0, "      --backgroundColorResource resource_name"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    const-string p0, "        Color resource name of letterbox background which is used when"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    const-string p0, "        background type is \'solid-color\'. Use (set)get-letterbox-style to"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    const-string p0, "        check and control background type. Parameter is a color resource"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    const-string p0, "        name, for example, @android:color/system_accent2_50."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    const-string p0, "      --wallpaperBlurRadius radius"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1650
    const-string p0, "        Blur radius for \'wallpaper\' letterbox background. If radius <= 0"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    const-string p0, "        both it and R.dimen.config_letterboxBackgroundWallpaperBlurRadius"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    const-string p0, "        are ignored and 0 is used."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    const-string p0, "      --wallpaperDarkScrimAlpha alpha"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1654
    const-string p0, "        Alpha of a black translucent scrim shown over \'wallpaper\'"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    const-string p0, "        letterbox background. If alpha < 0 or >= 1 both it and"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    const-string p0, "        R.dimen.config_letterboxBackgroundWallaperDarkScrimAlpha are ignored"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    const-string p0, "        and 0.0 (transparent) is used instead."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    const-string p0, "      --horizontalPositionMultiplier multiplier"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    const-string p0, "        Horizontal position of app window center. If multiplier < 0 or > 1,"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    const-string p0, "        both it and R.dimen.config_letterboxHorizontalPositionMultiplier"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    const-string p0, "        are ignored and central position (0.5) is used."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    const-string v0, "      --verticalPositionMultiplier multiplier"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    const-string v0, "        Vertical position of app window center. If multiplier < 0 or > 1,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    const-string v0, "        both it and R.dimen.config_letterboxVerticalPositionMultiplier"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    const-string p0, "      --isHorizontalReachabilityEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    const-string p0, "        Whether horizontal reachability repositioning is allowed for "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    const-string p0, "        letterboxed fullscreen apps in landscape device orientation."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    const-string p0, "      --isVerticalReachabilityEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    const-string p0, "        Whether vertical reachability repositioning is allowed for "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    const-string p0, "        letterboxed fullscreen apps in portrait device orientation."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    const-string p0, "      --defaultPositionForHorizontalReachability [left|center|right]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    const-string p0, "        Default position of app window when horizontal reachability is."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    const-string p0, "        enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    const-string v0, "      --defaultPositionForVerticalReachability [top|center|bottom]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    const-string v0, "        Default position of app window when vertical reachability is."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    const-string v0, "      --persistentPositionForHorizontalReachability [left|center|right]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    const-string v0, "        Persistent position of app window when horizontal reachability is."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    const-string v0, "      --persistentPositionForVerticalReachability [top|center|bottom]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    const-string v0, "        Persistent position of app window when vertical reachability is."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    const-string p0, "      --isEducationEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    const-string p0, "        Whether education is allowed for letterboxed fullscreen apps."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    const-string p0, "      --isSplitScreenAspectRatioForUnresizableAppsEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    const-string p0, "        Whether using split screen aspect ratio as a default aspect ratio for"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    const-string p0, "        unresizable apps."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    const-string p0, "      --isTranslucentLetterboxingEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    const-string p0, "        Whether letterboxing for translucent activities is enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    const-string p0, "      --isUserAppAspectRatioSettingsEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    const-string p0, "        Whether user aspect ratio settings are enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const-string p0, "      --isUserAppAspectRatioFullscreenEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    const-string p0, "        Whether user aspect ratio fullscreen option is enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    const-string p0, "      --isCameraCompatRefreshEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    const-string p0, "        Whether camera compatibility refresh is enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    const-string p0, "      --isCameraCompatRefreshCycleThroughStopEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    const-string p0, "        Whether activity \"refresh\" in camera compatibility treatment should"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    const-string p0, "        happen using the \"stopped -> resumed\" cycle rather than"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    const-string p0, "        \"paused -> resumed\" cycle."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    const-string p0, "      --cameraCompatAspectRatio aspectRatio"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    const-string p0, "        Aspect ratio of letterbox for fixed-orientation camera apps, during"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    const-string p0, "        freeform camera compat mode. If aspectRatio <= 1.0"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    const-string p0, "        it will be ignored."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    const-string p0, "      --isCameraCompatSimReqOrientationTreatmentForceEnabled [true|1|false|0]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    const-string p0, "        Whether camera compat treatment is enabled in freeform mode for all"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    const-string p0, "        eligible apps."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    const-string p0, "  reset-letterbox-style [aspectRatio|cornerRadius|backgroundType"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    const-string p0, "      |backgroundColor|wallpaperBlurRadius|wallpaperDarkScrimAlpha"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    const-string p0, "      |horizontalPositionMultiplier|verticalPositionMultiplier"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    const-string p0, "      |isHorizontalReachabilityEnabled|isVerticalReachabilityEnabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    const-string p0, "      |isEducationEnabled|defaultPositionMultiplierForHorizontalReachability"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    const-string p0, "      |isTranslucentLetterboxingEnabled|isUserAppAspectRatioSettingsEnabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    const-string p0, "      |persistentPositionMultiplierForHorizontalReachability"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    const-string p0, "      |persistentPositionMultiplierForVerticalReachability"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    const-string p0, "      |defaultPositionMultiplierForVerticalReachability"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    const-string p0, "      |cameraCompatAspectRatio"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    const-string p0, "      |isCameraCompatSimReqOrientationTreatmentForceEnabled]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    const-string p0, "    Resets overrides to default values for specified properties separated"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    const-string p0, "    by space, e.g. \'reset-letterbox-style aspectRatio cornerRadius\'."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    const-string p0, "    If no arguments provided, all values will be reset."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const-string p0, "  get-letterbox-style"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    const-string p0, "    Prints letterbox style configuration."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printMultiWindowConfigHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1728
    const-string p0, "  set-multi-window-config"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    const-string p0, "    Sets options to determine if activity should be shown in multi window:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    const-string p0, "      --supportsNonResizable [configValue]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string p0, "        Whether the device supports non-resizable activity in multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    const-string p0, "        -1: The device doesn\'t support non-resizable in multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    const-string p0, "         0: The device supports non-resizable in multi window only if"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    const-string p0, "            this is a large screen device."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    const-string p0, "         1: The device always supports non-resizable in multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    const-string p0, "      --respectsActivityMinWidthHeight [configValue]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    const-string p0, "        Whether the device checks the activity min width/height to determine "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    const-string p0, "        if it can be shown in multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    const-string p0, "        -1: The device ignores the activity min width/height when determining"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    const-string p0, "            if it can be shown in multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    const-string p0, "         0: If this is a small screen, the device compares the activity min"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    const-string p0, "            width/height with the min multi window modes dimensions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    const-string p0, "            the device supports to determine if the activity can be shown in"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    const-string p0, "            multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    const-string p0, "         1: The device always compare the activity min width/height with the"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1746
    const-string p0, "            min multi window dimensions the device supports to determine if"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    const-string p0, "            the activity can be shown in multi window."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    const-string p0, "  get-multi-window-config"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    const-string p0, "    Prints values of the multi window config options."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    const-string p0, "  reset-multi-window-config"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    const-string p0, "    Resets overrides to default values of the multi window config options."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final resetLetterboxStyle()V
    .registers 3

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1371
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetFixedOrientationLetterboxAspectRatio()V

    .line 1372
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetDefaultMinAspectRatioForUnresizableApps()V

    .line 1373
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxActivityCornersRadius()V

    .line 1374
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundType()V

    .line 1375
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundColor()V

    .line 1376
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundWallpaperBlurRadiusPx()V

    .line 1377
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundWallpaperDarkScrimAlpha()V

    .line 1378
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxHorizontalPositionMultiplier()V

    .line 1379
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxVerticalPositionMultiplier()V

    .line 1380
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsHorizontalReachabilityEnabled()V

    .line 1381
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsVerticalReachabilityEnabled()V

    .line 1382
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetEnabledAutomaticReachabilityInBookMode()V

    .line 1383
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetDefaultPositionForHorizontalReachability()V

    .line 1384
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetDefaultPositionForVerticalReachability()V

    .line 1385
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetPersistentLetterboxPositionForHorizontalReachability()V

    .line 1386
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetPersistentLetterboxPositionForVerticalReachability()V

    .line 1387
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsEducationEnabled()V

    .line 1388
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsSplitScreenAspectRatioForUnresizableAppsEnabled()V

    .line 1389
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()V

    .line 1390
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetTranslucentLetterboxingEnabled()V

    .line 1391
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetUserAppAspectRatioSettingsEnabled()V

    .line 1392
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetUserAppAspectRatioFullscreenEnabled()V

    .line 1393
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetCameraCompatRefreshEnabled()V

    .line 1394
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetCameraCompatRefreshCycleThroughStopEnabled()V

    .line 1395
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatConfiguration;->resetCameraCompatAspectRatio()V

    .line 1396
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsCameraCompatSimReqOrientationTreatmentForceEnabled()V

    .line 1397
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8 .. :try_end_8b} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_8f
    move-exception p0

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runDismissKeyguard(Ljava/io/PrintWriter;)I
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDisplayDensity(Ljava/io/PrintWriter;)I
    .registers 10

    .line 297
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "-u"

    if-nez v2, :cond_1c

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 302
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 304
    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "Error: bad number "

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_48

    .line 305
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 307
    :try_start_2b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_30

    goto :goto_65

    :catch_30
    move-exception v0

    .line 309
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_64

    .line 311
    :cond_48
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 312
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_65

    .line 315
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: the uniqueId is invalid "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_64
    :goto_64
    move v0, v6

    :cond_65
    :goto_65
    if-nez v2, :cond_6b

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    return v6

    .line 323
    :cond_6b
    const-string p1, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    goto :goto_87

    .line 327
    :cond_74
    :try_start_74
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_78} :catch_af

    const/16 v1, 0x48

    if-ge p1, v1, :cond_86

    .line 333
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: density must be >= 72"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_86
    move v5, p1

    .line 338
    :goto_87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x2

    if-lez v5, :cond_a9

    .line 340
    const-string v2, "-r"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 341
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    int-to-float p1, v5

    .line 342
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 341
    invoke-interface {p0, v0, p1, v1}, Landroid/view/IWindowManager;->setForcedDisplayDensityRatio(IFI)V

    goto :goto_ae

    .line 345
    :cond_a3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v0, v5, v1}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    goto :goto_ae

    .line 349
    :cond_a9
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v0, v1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    :goto_ae
    return v6

    :catch_af
    move-exception p1

    .line 329
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .registers 8

    .line 366
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFoldedArea(Ljava/io/PrintWriter;)V

    return v2

    .line 371
    :cond_10
    const-string p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_5e

    .line 374
    :cond_1c
    const-string p1, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 376
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_37

    .line 378
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_37
    const/4 v0, 0x1

    .line 381
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 382
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 381
    invoke-virtual {v1, v0, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    :goto_5e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    return v2
.end method

.method public final runDisplayScaling(Ljava/io/PrintWriter;)I
    .registers 4

    .line 390
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 391
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0, v1}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    goto :goto_29

    .line 394
    :cond_17
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    :goto_29
    return v1

    .line 398
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runDisplaySize(Ljava/io/PrintWriter;)I
    .registers 7

    .line 210
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 214
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    return v2

    .line 216
    :cond_f
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 217
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    return v2

    .line 219
    :cond_1b
    const-string p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_26

    move p1, v3

    goto :goto_4b

    :cond_26
    const/16 p1, 0x78

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_75

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_37

    goto :goto_75

    .line 227
    :cond_37
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    :try_start_41
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v0

    .line 231
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v3
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_49} :catch_5b

    move p1, v3

    move v3, v0

    :goto_4b
    if-ltz v3, :cond_55

    if-ltz p1, :cond_55

    .line 239
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1, v3, p1}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V

    goto :goto_5a

    .line 241
    :cond_55
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    :goto_5a
    return v2

    :catch_5b
    move-exception p1

    .line 233
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 224
    :cond_75
    :goto_75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runDisplayUserRotation(Ljava/io/PrintWriter;)I
    .registers 8

    .line 459
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 461
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 464
    :cond_c
    const-string v2, "-d"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 465
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 466
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    if-nez v0, :cond_2c

    .line 471
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 474
    :cond_2c
    const-string p1, "free"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 475
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string p1, "WindowManagerShellCommand#free"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(ILjava/lang/String;)V

    return v1

    .line 480
    :cond_3c
    const-string p1, "lock"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_4f

    .line 481
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: argument needs to be either -d, free or lock."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 485
    :cond_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 488
    :try_start_55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_5d

    :catch_5a
    move-exception p1

    goto :goto_65

    :cond_5c
    move p1, v0

    .line 489
    :goto_5d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "WindowManagerShellCommand#lock"

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(IILjava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_64} :catch_5a

    return v1

    .line 493
    :goto_65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runDumpVisibleWindowViews(Ljava/io/PrintWriter;)I
    .registers 9

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "runDumpVisibleWindowViews()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const/4 v0, 0x0

    .line 650
    :try_start_d
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_72

    .line 651
    :try_start_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 652
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_6c

    .line 653
    :try_start_23
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 655
    invoke-virtual {v4}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v4

    goto :goto_35

    :catchall_32
    move-exception p0

    goto :goto_74

    :cond_34
    const/4 v4, -0x1

    .line 658
    :goto_35
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4, v2}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;ILjava/util/ArrayList;)V

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 680
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_32

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 681
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v3, v0

    :catch_4a
    :goto_4a
    if-ge v3, p0, :cond_6e

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/util/Pair;
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_6c

    .line 684
    :try_start_54
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/ByteTransferPipe;

    invoke-virtual {v5}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    move-result-object v5
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5c} :catch_4a
    .catchall {:try_start_54 .. :try_end_5c} :catchall_6c

    .line 689
    :try_start_5c
    new-instance v6, Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 690
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_6c

    goto :goto_4a

    :catchall_6c
    move-exception p0

    goto :goto_79

    .line 692
    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_9a

    :catch_72
    move-exception p0

    goto :goto_82

    .line 680
    :goto_74
    :try_start_74
    monitor-exit v3
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_32

    :try_start_75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_6c

    .line 650
    :goto_79
    :try_start_79
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception v1

    :try_start_7e
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_81
    throw p0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_82} :catch_72

    .line 693
    :goto_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9a
    return v0

    .line 647
    :cond_9b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires DUMP permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runFixedToUserRotation(Ljava/io/PrintWriter;)I
    .registers 10

    .line 515
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 517
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(Ljava/io/PrintWriter;I)I

    return v1

    .line 521
    :cond_b
    const-string v2, "-d"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 522
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 523
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    if-nez v0, :cond_2b

    .line 527
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 531
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch p1, :sswitch_data_8e

    :goto_39
    move p1, v6

    goto :goto_66

    :sswitch_3b
    const-string p1, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_39

    :cond_44
    move p1, v3

    goto :goto_66

    :sswitch_46
    const-string p1, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_39

    :cond_4f
    move p1, v4

    goto :goto_66

    :sswitch_51
    const-string p1, "enabled_if_no_auto_rotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_39

    :cond_5a
    move p1, v5

    goto :goto_66

    :sswitch_5c
    const-string p1, "enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_39

    :cond_65
    move p1, v1

    :goto_66
    packed-switch p1, :pswitch_data_a0

    .line 545
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expecting enabled, disabled or default, but we get "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_82
    move v3, v1

    goto :goto_87

    :pswitch_84
    move v3, v5

    goto :goto_87

    :pswitch_86
    move v3, v4

    .line 550
    :goto_87
    :pswitch_87
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v2, v3}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V

    return v1

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x5ff074bf -> :sswitch_5c
        -0x2dc7ed0c -> :sswitch_51
        0x10263a7c -> :sswitch_46
        0x5c13d641 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_86
        :pswitch_87
        :pswitch_84
        :pswitch_82
    .end packed-switch
.end method

.method public final runGetDisplayWindowingMode(Ljava/io/PrintWriter;)I
    .registers 6

    .line 1496
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1497
    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1498
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v1

    .line 1501
    :goto_17
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->getWindowingMode(I)I

    move-result p0

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display windowing mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-static {p0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for displayId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1502
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 6

    .line 617
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 618
    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 619
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v1

    .line 622
    :goto_17
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getIgnoreOrientationRequest(I)Z

    move-result p0

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreOrientationRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " for displayId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runGetLetterboxStyle(Ljava/io/PrintWriter;)I
    .registers 7

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1402
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corner radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1403
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Horizontal position multiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    const/4 v3, 0x0

    .line 1405
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxHorizontalPositionMultiplier(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vertical position multiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1408
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxVerticalPositionMultiplier(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Horizontal position multiplier (book mode): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    const/4 v4, 0x1

    .line 1411
    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxHorizontalPositionMultiplier(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1410
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vertical position multiplier (tabletop mode): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1414
    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxVerticalPositionMultiplier(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Horizontal position multiplier for reachability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1417
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->getHorizontalMultiplierForReachability(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vertical position multiplier for reachability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1420
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->getVerticalMultiplierForReachability(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1423
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default min aspect ratio for unresizable apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1425
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is horizontal reachability enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1427
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getIsHorizontalReachabilityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1426
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is vertical reachability enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1429
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getIsVerticalReachabilityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1428
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is automatic reachability in book mode enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1431
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getIsAutomaticReachabilityInBookModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default position for horizontal reachability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1434
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultPositionForHorizontalReachability()I

    move-result v2

    .line 1433
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1432
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default position for vertical reachability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1437
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultPositionForVerticalReachability()I

    move-result v2

    .line 1436
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1435
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current position for horizontal reachability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1440
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v2

    .line 1439
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current position for vertical reachability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1443
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v2

    .line 1442
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is education enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1445
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getIsEducationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1444
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is using split screen aspect ratio as aspect ratio for unresizable apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1448
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is using display aspect ratio as aspect ratio for all letterboxed apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1451
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Is activity \"refresh\" in camera compatibility treatment enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1453
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1452
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Refresh using \"stopped -> resumed\" cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1455
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshCycleThroughStopEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1454
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1458
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    move-result v2

    .line 1457
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Background color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1460
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    .line 1459
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Wallpaper blur radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1462
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundWallpaperBlurRadiusPx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1461
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Wallpaper dark scrim alpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1464
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundWallpaperDarkScrimAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1463
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is letterboxing for translucent activities enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1466
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is the user aspect ratio settings enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1468
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1467
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is the fullscreen option in user aspect ratio settings enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1470
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioFullscreenEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default aspect ratio for camera compat freeform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1472
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfiguration;->getCameraCompatAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1471
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is camera compatibility freeform treatment enabled for all apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatSimReqOrientationTreatmentForceEnabled()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1473
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    monitor-exit v0
    :try_end_333
    .catchall {:try_start_8 .. :try_end_333} :catchall_337

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_337
    move-exception p0

    :try_start_338
    monitor-exit v0
    :try_end_339
    .catchall {:try_start_338 .. :try_end_339} :catchall_337

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runGetMultiWindowConfig(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1347
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1348
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supports non-resizable in multi window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Respects activity min width/height in multi window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runReset(Ljava/io/PrintWriter;)I
    .registers 6

    .line 1520
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 1523
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 1526
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v2, -0x2

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 1529
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 1532
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 1535
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "WindowManagerShellCommand#runReset"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(ILjava/lang/String;)V

    .line 1539
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V

    .line 1542
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->resetIgnoreOrientationRequest(I)Ljava/lang/Boolean;

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->resetLetterboxStyle()V

    .line 1548
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->setSandboxDisplayApis(IZ)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()I

    .line 1554
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowingMode(II)V

    .line 1556
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset all settings for displayId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runResetFreezeRecentTaskListReordering(Ljava/io/PrintWriter;)I
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->resetFreezeRecentTaskListReordering()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runResetLetterboxStyle(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1197
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->resetLetterboxStyle()V

    .line 1200
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1201
    :goto_11
    :try_start_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b5

    .line 1202
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c0

    goto/16 :goto_197

    :sswitch_24
    const-string v1, "isUserAppAspectRatioFullscreenEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetUserAppAspectRatioFullscreenEnabled()V

    goto :goto_11

    :catchall_32
    move-exception p0

    goto/16 :goto_1bb

    .line 1203
    :sswitch_35
    const-string v1, "isUserAppAspectRatioSettingsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetUserAppAspectRatioSettingsEnabled()V

    goto :goto_11

    .line 1203
    :sswitch_43
    const-string v1, "isCameraCompatRefreshCycleThroughStopEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1275
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetCameraCompatRefreshCycleThroughStopEnabled()V

    goto :goto_11

    .line 1203
    :sswitch_51
    const-string v1, "isSplitScreenAspectRatioForUnresizableAppsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1255
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1256
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsSplitScreenAspectRatioForUnresizableAppsEnabled()V

    goto :goto_11

    .line 1203
    :sswitch_5f
    const-string v1, "isCameraCompatSimReqOrientationTreatmentForceEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1283
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsCameraCompatSimReqOrientationTreatmentForceEnabled()V

    goto :goto_11

    .line 1203
    :sswitch_6d
    const-string v1, "backgroundType"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1214
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundType()V

    goto :goto_11

    .line 1203
    :sswitch_7b
    const-string v1, "isCameraCompatRefreshEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetCameraCompatRefreshEnabled()V

    goto :goto_11

    .line 1203
    :sswitch_89
    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundColor()V

    goto/16 :goto_11

    .line 1203
    :sswitch_98
    const-string v1, "verticalPositionMultiplier"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxVerticalPositionMultiplier()V

    goto/16 :goto_11

    .line 1203
    :sswitch_a7
    const-string v1, "aspectRatio"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetFixedOrientationLetterboxAspectRatio()V

    goto/16 :goto_11

    .line 1203
    :sswitch_b6
    const-string v1, "isTranslucentLetterboxingEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetTranslucentLetterboxingEnabled()V

    goto/16 :goto_11

    .line 1203
    :sswitch_c5
    const-string v1, "isVerticalReachabilityEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsVerticalReachabilityEnabled()V

    goto/16 :goto_11

    .line 1203
    :sswitch_d4
    const-string v1, "persistentPositionForVerticalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1248
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1249
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetPersistentLetterboxPositionForVerticalReachability()V

    goto/16 :goto_11

    .line 1203
    :sswitch_e3
    const-string v1, "cornerRadius"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1211
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxActivityCornersRadius()V

    goto/16 :goto_11

    .line 1203
    :sswitch_f2
    const-string v1, "defaultPositionForVerticalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1241
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetDefaultPositionForVerticalReachability()V

    goto/16 :goto_11

    .line 1203
    :sswitch_101
    const-string v1, "wallpaperBlurRadius"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1220
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundWallpaperBlurRadiusPx()V

    goto/16 :goto_11

    .line 1203
    :sswitch_110
    const-string v1, "cameraCompatAspectRatio"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetCameraCompatAspectRatio()V

    goto/16 :goto_11

    .line 1203
    :sswitch_11f
    const-string v1, "isHorizontalReachabilityEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1232
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsHorizontalReachabilityEnabled()V

    goto/16 :goto_11

    .line 1203
    :sswitch_12e
    const-string v1, "horizontalPositionMultiplier"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1226
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxHorizontalPositionMultiplier()V

    goto/16 :goto_11

    .line 1203
    :sswitch_13d
    const-string v1, "minAspectRatioForUnresizable"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1208
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetDefaultMinAspectRatioForUnresizableApps()V

    goto/16 :goto_11

    .line 1203
    :sswitch_14c
    const-string v1, "persistentPositionForHorizontalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1245
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetPersistentLetterboxPositionForHorizontalReachability()V

    goto/16 :goto_11

    .line 1203
    :sswitch_15b
    const-string v1, "isEducationEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1252
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsEducationEnabled()V

    goto/16 :goto_11

    .line 1203
    :sswitch_16a
    const-string v1, "defaultPositionForHorizontalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1238
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetDefaultPositionForHorizontalReachability()V

    goto/16 :goto_11

    .line 1203
    :sswitch_179
    const-string v1, "IsDisplayAspectRatioEnabledForFixedOrientationLetterbox"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1259
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()V

    goto/16 :goto_11

    .line 1203
    :sswitch_188
    const-string v1, "wallpaperDarkScrimAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1223
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->resetLetterboxBackgroundWallpaperDarkScrimAlpha()V

    goto/16 :goto_11

    .line 1286
    :cond_197
    :goto_197
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unrecognized letterbox style option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    monitor-exit p1
    :try_end_1b0
    .catchall {:try_start_11 .. :try_end_1b0} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    .line 1291
    :cond_1b5
    :try_start_1b5
    monitor-exit p1
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_1bb
    :try_start_1bb
    monitor-exit p1
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :sswitch_data_1c0
    .sparse-switch
        -0x7b105d10 -> :sswitch_188
        -0x494350ba -> :sswitch_179
        -0x43b458a6 -> :sswitch_16a
        -0x4306f43d -> :sswitch_15b
        -0x3da92e3c -> :sswitch_14c
        -0x21cf3116 -> :sswitch_13d
        -0x219aa4f2 -> :sswitch_12e
        -0x215b74e4 -> :sswitch_11f
        -0x635a2f4 -> :sswitch_110
        -0x258d085 -> :sswitch_101
        0xc6f3b6c -> :sswitch_f2
        0x22c8f747 -> :sswitch_e3
        0x2935f856 -> :sswitch_d4
        0x3092c00a -> :sswitch_c5
        0x34ac3255 -> :sswitch_b6
        0x41194293 -> :sswitch_a7
        0x421ec5e0 -> :sswitch_98
        0x4cb7f6d5 -> :sswitch_89
        0x53428397 -> :sswitch_7b
        0x55161188 -> :sswitch_6d
        0x67c97396 -> :sswitch_5f
        0x6f68fc6f -> :sswitch_51
        0x6f7a48b6 -> :sswitch_43
        0x70d12177 -> :sswitch_35
        0x7d4b949f -> :sswitch_24
    .end sparse-switch
.end method

.method public final runResetMultiWindowConfig()I
    .registers 4

    .line 1357
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1359
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1361
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1362
    :try_start_28
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 1363
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 1365
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runSandboxDisplayApis(Ljava/io/PrintWriter;)I
    .registers 8

    .line 409
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 410
    const-string v0, "-d"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 411
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 412
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, p1

    move-object p1, v5

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 416
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_7a

    :goto_2a
    move v2, v4

    goto :goto_57

    :sswitch_2c
    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_2a

    :cond_35
    const/4 v2, 0x3

    goto :goto_57

    :sswitch_37
    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_2a

    :cond_40
    const/4 v2, 0x2

    goto :goto_57

    :sswitch_42
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_2a

    :cond_4b
    move v2, v3

    goto :goto_57

    :sswitch_4d
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    goto :goto_2a

    :cond_56
    move v2, v1

    :goto_57
    packed-switch v2, :pswitch_data_8c

    .line 426
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expecting true, 1, false, 0, but we get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_73
    move v3, v1

    .line 431
    :pswitch_74
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/WindowManagerService;->setSandboxDisplayApis(IZ)V

    return v1

    :sswitch_data_7a
    .sparse-switch
        0x30 -> :sswitch_4d
        0x31 -> :sswitch_42
        0x36758e -> :sswitch_37
        0x5cb1923 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_73
        :pswitch_74
        :pswitch_74
        :pswitch_73
    .end packed-switch
.end method

.method public final runSetBlurDisabled(Ljava/io/PrintWriter;)I
    .registers 6

    .line 247
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blur supported on device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blur enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 255
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_9e

    :goto_46
    move p1, v3

    goto :goto_73

    :sswitch_48
    const-string p1, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_46

    :cond_51
    const/4 p1, 0x3

    goto :goto_73

    :sswitch_53
    const-string p1, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_46

    :cond_5c
    const/4 p1, 0x2

    goto :goto_73

    :sswitch_5e
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_46

    :cond_67
    move p1, v2

    goto :goto_73

    :sswitch_69
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_46

    :cond_72
    move p1, v1

    :goto_73
    packed-switch p1, :pswitch_data_b0

    .line 265
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expected true, 1, false, 0, but got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_8f
    move v2, v1

    .line 269
    :pswitch_90
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "disable_window_blurs"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :sswitch_data_9e
    .sparse-switch
        0x30 -> :sswitch_69
        0x31 -> :sswitch_5e
        0x36758e -> :sswitch_53
        0x5cb1923 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_90
        :pswitch_90
        :pswitch_8f
    .end packed-switch
.end method

.method public final runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I
    .registers 7

    .line 1044
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_11

    .line 1046
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: expected true, 1, false, 0, but got empty input."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 1050
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_82

    :goto_1d
    move v1, v0

    goto :goto_4a

    :sswitch_1f
    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_1d

    :cond_28
    const/4 v1, 0x3

    goto :goto_4a

    :sswitch_2a
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_1d

    :cond_33
    const/4 v1, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_1d

    :cond_3e
    move v1, v2

    goto :goto_4a

    :sswitch_40
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_1d

    :cond_49
    move v1, v3

    :goto_4a
    packed-switch v1, :pswitch_data_94

    .line 1060
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expected true, 1, false, 0, but got "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :pswitch_66
    move v2, v3

    .line 1064
    :pswitch_67
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1065
    :try_start_6f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1066
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_7b
    move-exception p1

    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    nop

    :sswitch_data_82
    .sparse-switch
        0x30 -> :sswitch_40
        0x31 -> :sswitch_35
        0x36758e -> :sswitch_2a
        0x5cb1923 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_66
        :pswitch_67
        :pswitch_67
        :pswitch_66
    .end packed-switch
.end method

.method public final runSetCameraCompatAspectRatio(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 1073
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_22

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1084
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setCameraCompatAspectRatio(F)V

    .line 1085
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_22
    move-exception v0

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_3f

    .line 1079
    :goto_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: aspect ratio should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 1076
    :goto_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad aspect ratio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetDefaultMinAspectRatioForUnresizableApps(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 721
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_22

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 732
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    .line 733
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_22
    move-exception v0

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_3f

    .line 727
    :goto_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: aspect ratio should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 724
    :goto_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad aspect ratio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetDisplayWindowingMode(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1482
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1483
    const-string v0, "-d"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1484
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1485
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, p1

    move-object p1, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 1488
    :goto_1e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1489
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->setWindowingMode(II)V

    return v1
.end method

.method public final runSetFixedOrientationLetterboxAspectRatio(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 701
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_22

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 712
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setFixedOrientationLetterboxAspectRatio(F)V

    .line 713
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_22
    move-exception v0

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_3f

    .line 707
    :goto_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: aspect ratio should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 704
    :goto_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad aspect ratio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 8

    .line 577
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 578
    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 579
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 580
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 582
    :goto_1e
    const-string v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_65

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resetIgnoreOrientationRequest(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset ignoreOrientationRequest to "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 589
    :cond_4c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to reset ignoreOrientationRequest for displayId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 596
    :cond_65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_c0

    :goto_70
    move p1, v4

    goto :goto_9d

    :sswitch_72
    const-string p1, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_70

    :cond_7b
    const/4 p1, 0x3

    goto :goto_9d

    :sswitch_7d
    const-string p1, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto :goto_70

    :cond_86
    const/4 p1, 0x2

    goto :goto_9d

    :sswitch_88
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_70

    :cond_91
    move p1, v3

    goto :goto_9d

    :sswitch_93
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    goto :goto_70

    :cond_9c
    move p1, v2

    :goto_9d
    packed-switch p1, :pswitch_data_d2

    .line 606
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expecting true, 1, false, 0, reset, but we get "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_b9
    move v3, v2

    .line 611
    :pswitch_ba
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1, v3}, Landroid/view/IWindowManager;->setIgnoreOrientationRequest(IZ)V

    return v2

    :sswitch_data_c0
    .sparse-switch
        0x30 -> :sswitch_93
        0x31 -> :sswitch_88
        0x36758e -> :sswitch_7d
        0x5cb1923 -> :sswitch_72
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_ba
        :pswitch_ba
        :pswitch_b9
    .end packed-switch
.end method

.method public final runSetLetterboxActivityCornersRadius(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 740
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_22

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 751
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxActivityCornersRadius(I)V

    .line 752
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_22
    move-exception v0

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_3f

    .line 746
    :goto_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: corners radius should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 743
    :goto_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad corners radius format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetLetterboxBackgroundColor(Ljava/io/PrintWriter;)I
    .registers 4

    .line 812
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_25

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 821
    :try_start_14
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBackgroundColor(Landroid/graphics/Color;)V

    .line 822
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_25
    move-exception p1

    .line 815
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: color in #RRGGBB format should be provided as an argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSetLetterboxBackgroundColorResource(Ljava/io/PrintWriter;)I
    .registers 5

    .line 794
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "com.android.internal"

    .line 796
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_14} :catch_2d

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 804
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBackgroundColorResourceId(I)V

    .line 805
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_2d
    move-exception p1

    .line 798
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: color in \'@android:color/resource_name\' format should be provided as an argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSetLetterboxBackgroundType(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 759
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_72

    goto :goto_4f

    :sswitch_e
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 p1, 0x3

    goto :goto_37

    :catch_18
    move-exception v0

    goto :goto_59

    :sswitch_1a
    const-string v1, "solid_color"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    move p1, v2

    goto :goto_37

    :sswitch_24
    const-string v1, "app_color_background"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 p1, 0x1

    goto :goto_37

    :sswitch_2e
    const-string v1, "app_color_background_floating"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_34} :catch_18

    if-eqz v0, :cond_4f

    const/4 p1, 0x2

    .line 785
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 786
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBackgroundTypeOverride(I)V

    .line 787
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_49
    move-exception p0

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 774
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'solid_color\', \'app_color_background\' or \'wallpaper\' should be provided as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_58} :catch_18

    return p1

    .line 780
    :goto_59
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \'solid_color\', \'app_color_background\' or \'wallpaper\' should be provided as an argument"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    :sswitch_data_72
    .sparse-switch
        -0x655bff83 -> :sswitch_2e
        -0xdc7a218 -> :sswitch_24
        0x48814ccf -> :sswitch_1a
        0x57e60e02 -> :sswitch_e
    .end sparse-switch
.end method

.method public final runSetLetterboxBackgroundWallpaperBlurRadius(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 830
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_35

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    int-to-float p1, p1

    .line 841
    :try_start_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 842
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 841
    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 843
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBackgroundWallpaperBlurRadiusPx(I)V

    .line 844
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_35
    move-exception v0

    goto :goto_39

    :catch_37
    move-exception v0

    goto :goto_52

    .line 836
    :goto_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: blur radius should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 833
    :goto_52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: blur radius format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetLetterboxBackgroundWallpaperDarkScrimAlpha(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    .line 852
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_22

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 863
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBackgroundWallpaperDarkScrimAlpha(F)V

    .line 864
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_22
    move-exception v0

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_3f

    .line 858
    :goto_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: alpha should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 855
    :goto_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad alpha format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetLetterboxDefaultPositionForHorizontalReachability(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 p1, -0x1

    .line 920
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x514d33ab

    const/4 v3, 0x0

    if-eq v1, v2, :cond_30

    const v2, 0x32a007

    if-eq v1, v2, :cond_26

    const v2, 0x677c21c

    if-eq v1, v2, :cond_1a

    goto :goto_51

    :cond_1a
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p1, 0x2

    goto :goto_39

    :catch_24
    move-exception v0

    goto :goto_5b

    :cond_26
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move p1, v3

    goto :goto_39

    :cond_30
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_36} :catch_24

    if-eqz v0, :cond_51

    const/4 p1, 0x1

    .line 941
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 942
    :try_start_41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultPositionForHorizontalReachability(I)V

    .line 943
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 932
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_24

    return p1

    .line 937
    :goto_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetLetterboxDefaultPositionForVerticalReachability(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 p1, -0x1

    .line 951
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x527265d5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_30

    const v2, -0x514d33ab

    if-eq v1, v2, :cond_26

    const v2, 0x1c155

    if-eq v1, v2, :cond_1a

    goto :goto_51

    :cond_1a
    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move p1, v3

    goto :goto_39

    :catch_24
    move-exception v0

    goto :goto_5b

    :cond_26
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p1, 0x1

    goto :goto_39

    :cond_30
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_36} :catch_24

    if-eqz v0, :cond_51

    const/4 p1, 0x2

    .line 972
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 973
    :try_start_41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultPositionForVerticalReachability(I)V

    .line 974
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 963
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_24

    return p1

    .line 968
    :goto_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetLetterboxHorizontalPositionMultiplier(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 p1, -0x1

    .line 871
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_41

    .line 881
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 883
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxHorizontalPositionMultiplier(F)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_1e
    .catchall {:try_start_11 .. :try_end_16} :catchall_1c

    .line 888
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    goto :goto_3c

    :catch_1e
    move-exception v0

    .line 885
    :try_start_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: invalid multiplier value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 888
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_41
    move-exception v0

    goto :goto_45

    :catch_43
    move-exception v0

    goto :goto_5e

    .line 877
    :goto_45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: multiplier should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 874
    :goto_5e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad multiplier format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetLetterboxStyle(Ljava/io/PrintWriter;)I
    .registers 6

    .line 1090
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1091
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: No arguments provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    :cond_f
    :goto_f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a1

    .line 1094
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_2a2

    :goto_25
    move v1, v3

    goto/16 :goto_186

    :sswitch_28
    const-string v1, "--isAutomaticReachabilityInBookModeEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_25

    :cond_31
    const/16 v1, 0x1a

    goto/16 :goto_186

    :sswitch_35
    const-string v1, "--isUserAppAspectRatioSettingsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_25

    :cond_3e
    const/16 v1, 0x19

    goto/16 :goto_186

    :sswitch_42
    const-string v1, "--horizontalPositionMultiplier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_25

    :cond_4b
    const/16 v1, 0x18

    goto/16 :goto_186

    :sswitch_4f
    const-string v1, "--minAspectRatioForUnresizable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_25

    :cond_58
    const/16 v1, 0x17

    goto/16 :goto_186

    :sswitch_5c
    const-string v1, "--backgroundColorResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_25

    :cond_65
    const/16 v1, 0x16

    goto/16 :goto_186

    :sswitch_69
    const-string v1, "--isCameraCompatRefreshCycleThroughStopEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_25

    :cond_72
    const/16 v1, 0x15

    goto/16 :goto_186

    :sswitch_76
    const-string v1, "--persistentPositionForHorizontalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_25

    :cond_7f
    const/16 v1, 0x14

    goto/16 :goto_186

    :sswitch_83
    const-string v1, "--backgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_25

    :cond_8c
    const/16 v1, 0x13

    goto/16 :goto_186

    :sswitch_90
    const-string v1, "--isTranslucentLetterboxingEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    goto :goto_25

    :cond_99
    const/16 v1, 0x12

    goto/16 :goto_186

    :sswitch_9d
    const-string v1, "--wallpaperDarkScrimAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    goto/16 :goto_25

    :cond_a7
    const/16 v1, 0x11

    goto/16 :goto_186

    :sswitch_ab
    const-string v1, "--isVerticalReachabilityEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    goto/16 :goto_25

    :cond_b5
    const/16 v1, 0x10

    goto/16 :goto_186

    :sswitch_b9
    const-string v1, "--isHorizontalReachabilityEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    goto/16 :goto_25

    :cond_c3
    const/16 v1, 0xf

    goto/16 :goto_186

    :sswitch_c7
    const-string v1, "--isUserAppAspectRatioFullscreenEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    goto/16 :goto_25

    :cond_d1
    const/16 v1, 0xe

    goto/16 :goto_186

    :sswitch_d5
    const-string v1, "--wallpaperBlurRadius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    goto/16 :goto_25

    :cond_df
    const/16 v1, 0xd

    goto/16 :goto_186

    :sswitch_e3
    const-string v1, "--isCameraCompatSimReqOrientationTreatmentForceEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    goto/16 :goto_25

    :cond_ed
    const/16 v1, 0xc

    goto/16 :goto_186

    :sswitch_f1
    const-string v1, "--isSplitScreenAspectRatioForUnresizableAppsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    goto/16 :goto_25

    :cond_fb
    const/16 v1, 0xb

    goto/16 :goto_186

    :sswitch_ff
    const-string v1, "--backgroundType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    goto/16 :goto_25

    :cond_109
    const/16 v1, 0xa

    goto/16 :goto_186

    :sswitch_10d
    const-string v1, "--cornerRadius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    goto/16 :goto_25

    :cond_117
    const/16 v1, 0x9

    goto/16 :goto_186

    :sswitch_11b
    const-string v1, "--persistentPositionForVerticalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_125

    goto/16 :goto_25

    :cond_125
    const/16 v1, 0x8

    goto :goto_186

    :sswitch_128
    const-string v1, "--defaultPositionForHorizontalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    goto/16 :goto_25

    :cond_132
    const/4 v1, 0x7

    goto :goto_186

    :sswitch_134
    const-string v1, "--isCameraCompatRefreshEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    goto/16 :goto_25

    :cond_13e
    const/4 v1, 0x6

    goto :goto_186

    :sswitch_140
    const-string v1, "--isDisplayAspectRatioEnabledForFixedOrientationLetterbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14a

    goto/16 :goto_25

    :cond_14a
    const/4 v1, 0x5

    goto :goto_186

    :sswitch_14c
    const-string v1, "--defaultPositionForVerticalReachability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    goto/16 :goto_25

    :cond_156
    const/4 v1, 0x4

    goto :goto_186

    :sswitch_158
    const-string v1, "--verticalPositionMultiplier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_162

    goto/16 :goto_25

    :cond_162
    const/4 v1, 0x3

    goto :goto_186

    :sswitch_164
    const-string v1, "--isEducationEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    goto/16 :goto_25

    :cond_16e
    const/4 v1, 0x2

    goto :goto_186

    :sswitch_170
    const-string v1, "--aspectRatio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17a

    goto/16 :goto_25

    :cond_17a
    const/4 v1, 0x1

    goto :goto_186

    :sswitch_17c
    const-string v2, "--cameraCompatAspectRatio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_186

    goto/16 :goto_25

    :cond_186
    :goto_186
    packed-switch v1, :pswitch_data_310

    .line 1188
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unrecognized letterbox style option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1135
    :pswitch_1a2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1166
    :pswitch_1b1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1121
    :pswitch_1c0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxHorizontalPositionMultiplier(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1100
    :pswitch_1c5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetDefaultMinAspectRatioForUnresizableApps(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1112
    :pswitch_1ca
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundColorResource(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1177
    :pswitch_1cf
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1178
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 1177
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1145
    :pswitch_1de
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetPersistentLetterboxPositionForHorizontalReachability(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1109
    :pswitch_1e3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundColor(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1162
    :pswitch_1e8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1118
    :pswitch_1f7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundWallpaperDarkScrimAlpha(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1131
    :pswitch_1fc
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1127
    :pswitch_20b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1170
    :pswitch_21a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1115
    :pswitch_229
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundWallpaperBlurRadius(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1184
    :pswitch_22e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1154
    :pswitch_23d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1106
    :pswitch_24c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundType(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1103
    :pswitch_251
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxActivityCornersRadius(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1148
    :pswitch_256
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetPersistentLetterboxPositionForVerticalReachability(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1139
    :pswitch_25b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxDefaultPositionForHorizontalReachability(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1174
    :pswitch_260
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1158
    :pswitch_26f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1142
    :pswitch_27e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxDefaultPositionForVerticalReachability(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1124
    :pswitch_283
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxVerticalPositionMultiplier(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1151
    :pswitch_288
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)I

    goto/16 :goto_f

    .line 1097
    :pswitch_297
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetFixedOrientationLetterboxAspectRatio(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    .line 1181
    :pswitch_29c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetCameraCompatAspectRatio(Ljava/io/PrintWriter;)I

    goto/16 :goto_f

    :cond_2a1
    return v1

    :sswitch_data_2a2
    .sparse-switch
        -0x7d71fc94 -> :sswitch_17c
        -0x77a4870d -> :sswitch_170
        -0x64a1169d -> :sswitch_164
        -0x55e2fc80 -> :sswitch_158
        -0x4e21f6f4 -> :sswitch_14c
        -0x4d26823a -> :sswitch_140
        -0x4b5826c9 -> :sswitch_134
        -0x3ec27306 -> :sswitch_128
        -0x3d7f394a -> :sswitch_11b
        -0x3c327319 -> :sswitch_10d
        -0x38b440d8 -> :sswitch_ff
        -0x36509531 -> :sswitch_f1
        -0x2e1016ca -> :sswitch_e3
        -0x1402fa25 -> :sswitch_d5
        -0x12036d01 -> :sswitch_c7
        -0x11f42e84 -> :sswitch_b9
        -0x427e196 -> :sswitch_ab
        0xdb34950 -> :sswitch_9d
        0x122db7f5 -> :sswitch_90
        0x2137fd35 -> :sswitch_83
        0x34278824 -> :sswitch_76
        0x37c05e56 -> :sswitch_69
        0x3d9c2063 -> :sswitch_5c
        0x3f96248a -> :sswitch_4f
        0x3fcab0ae -> :sswitch_42
        0x546e37d7 -> :sswitch_35
        0x67ad5ef8 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_310
    .packed-switch 0x0
        :pswitch_29c
        :pswitch_297
        :pswitch_288
        :pswitch_283
        :pswitch_27e
        :pswitch_26f
        :pswitch_260
        :pswitch_25b
        :pswitch_256
        :pswitch_251
        :pswitch_24c
        :pswitch_23d
        :pswitch_22e
        :pswitch_229
        :pswitch_21a
        :pswitch_20b
        :pswitch_1fc
        :pswitch_1f7
        :pswitch_1e8
        :pswitch_1e3
        :pswitch_1de
        :pswitch_1cf
        :pswitch_1ca
        :pswitch_1c5
        :pswitch_1c0
        :pswitch_1b1
        :pswitch_1a2
    .end packed-switch
.end method

.method public final runSetLetterboxVerticalPositionMultiplier(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 p1, -0x1

    .line 895
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_41

    .line 905
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 907
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxVerticalPositionMultiplier(F)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_1e
    .catchall {:try_start_11 .. :try_end_16} :catchall_1c

    .line 912
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    goto :goto_3c

    :catch_1e
    move-exception v0

    .line 909
    :try_start_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: invalid multiplier value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 912
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_41
    move-exception v0

    goto :goto_45

    :catch_43
    move-exception v0

    goto :goto_5e

    .line 901
    :goto_45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: multiplier should be provided as an argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 898
    :goto_5e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad multiplier format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetMultiWindowConfig()I
    .registers 6

    .line 1296
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1297
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: No arguments provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    move v1, v0

    .line 1300
    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_53

    .line 1301
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v4, "--supportsNonResizable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "--respectsActivityMinWidthHeight"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1310
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unrecognized multi window option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1307
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetRespectsActivityMinWidthHeightMultiWindow()I

    move-result v2

    :goto_4c
    add-int/2addr v1, v2

    goto :goto_11

    .line 1304
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetSupportsNonResizableMultiWindow()I

    move-result v2

    goto :goto_4c

    :cond_53
    if-nez v1, :cond_56

    return v0

    :cond_56
    return v3
.end method

.method public final runSetPersistentLetterboxPositionForHorizontalReachability(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 p1, -0x1

    .line 982
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x514d33ab

    const/4 v3, 0x0

    if-eq v1, v2, :cond_30

    const v2, 0x32a007

    if-eq v1, v2, :cond_26

    const v2, 0x677c21c

    if-eq v1, v2, :cond_1a

    goto :goto_51

    :cond_1a
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p1, 0x2

    goto :goto_39

    :catch_24
    move-exception v0

    goto :goto_5b

    :cond_26
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move p1, v3

    goto :goto_39

    :cond_30
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_36} :catch_24

    if-eqz v0, :cond_51

    const/4 p1, 0x1

    .line 1003
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1004
    :try_start_41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setPersistentLetterboxPositionForHorizontalReachability(ZI)V

    .line 1006
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 994
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_24

    return p1

    .line 999
    :goto_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetPersistentLetterboxPositionForVerticalReachability(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 p1, -0x1

    .line 1014
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x527265d5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_30

    const v2, -0x514d33ab

    if-eq v1, v2, :cond_26

    const v2, 0x1c155

    if-eq v1, v2, :cond_1a

    goto :goto_51

    :cond_1a
    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move p1, v3

    goto :goto_39

    :catch_24
    move-exception v0

    goto :goto_5b

    :cond_26
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p1, 0x1

    goto :goto_39

    :cond_30
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_36} :catch_24

    if-eqz v0, :cond_51

    const/4 p1, 0x2

    .line 1035
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1036
    :try_start_41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/AppCompatConfiguration;->setPersistentLetterboxPositionForVerticalReachability(ZI)V

    .line 1038
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1026
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_24

    return p1

    .line 1031
    :goto_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1
.end method

.method public final runSetRespectsActivityMinWidthHeightMultiWindow()I
    .registers 3

    .line 1333
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1334
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1335
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: a config value of [-1, 0, 1] must be provided as an argument for respectsActivityMinWidthHeightMultiWindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1339
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1340
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1341
    :try_start_35
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 1342
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runSetSupportsNonResizableMultiWindow()I
    .registers 3

    .line 1319
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1320
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1321
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: a config value of [-1, 0, 1] must be provided as an argument for supportsNonResizableMultiWindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1325
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1326
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1327
    :try_start_35
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 1328
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runWmShellCommand(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1510
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object p1

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    const-string v1, "wmshell-passthrough"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1514
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 1515
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 1514
    invoke-interface {p1, v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return v1
.end method
