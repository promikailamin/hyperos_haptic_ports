.class public Lcom/android/server/devicestate/DeviceStateManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DeviceStateManagerShellCommand.java"


# static fields
.field private static sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# instance fields
.field private final mClient:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mService:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 48
    invoke-virtual {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 49
    return-void
.end method

.method private printAllStates(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    .line 74
    .local v0, "committedState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getBaseState()Ljava/util/Optional;

    move-result-object v1

    .line 75
    .local v1, "baseState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object v2

    .line 77
    .local v2, "overrideState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Committed state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 79
    const-string v3, "----------------------"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Base state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    :cond_6b
    return-void
.end method

.method private runPrintState(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 131
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    .line 132
    .local v0, "deviceState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 133
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 134
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: device state not available."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x1

    return v1
.end method

.method private runPrintStates(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 141
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()[Lcom/android/server/devicestate/DeviceState;

    move-result-object v0

    .line 142
    .local v0, "states":[Lcom/android/server/devicestate/DeviceState;
    const-string v1, "Supported states: [\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 146
    .end local v1    # "i":I
    :cond_30
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    return v1
.end method

.method private runPrintStatesSimple(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 151
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()[Lcom/android/server/devicestate/DeviceState;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 154
    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method private runState(Ljava/io/PrintWriter;)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 86
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "nextArg":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    .line 89
    return v2

    .line 92
    :cond_d
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v3}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 93
    .local v3, "context":Landroid/content/Context;
    const-string v4, "android.permission.CONTROL_DEVICE_STATE"

    const-string v5, "Permission required to request device state."

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 98
    .local v4, "callingIdentity":J
    const/4 v6, -0x1

    :try_start_1f
    const-string/jumbo v7, "reset"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_35

    .line 99
    sget-object v7, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz v7, :cond_48

    .line 100
    iget-object v7, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v7}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    .line 101
    sput-object v8, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    goto :goto_48

    .line 104
    :cond_35
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, "requestedState":I
    invoke-static {v7}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v9

    .line 107
    .local v9, "request":Landroid/hardware/devicestate/DeviceStateRequest;
    iget-object v10, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v10, v9, v8, v8}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 109
    sput-object v9, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_48} :catch_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_48} :catch_4f
    .catchall {:try_start_1f .. :try_end_48} :catchall_4d

    .line 124
    .end local v7    # "requestedState":I
    .end local v9    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    :cond_48
    :goto_48
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    nop

    .line 127
    return v2

    .line 124
    :catchall_4d
    move-exception v0

    goto :goto_b5

    .line 114
    :catch_4f
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_50
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "-------------------"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "Run:"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "    print-states"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v7, "to get the list of currently supported device states"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_50 .. :try_end_a1} :catchall_4d

    .line 122
    nop

    .line 124
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return v6

    .line 111
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a6
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v7, "Error: requested state should be an integer"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_4d

    .line 113
    nop

    .line 124
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    return v6

    .line 124
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_b5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw v0
.end method

.method private static toString(Ljava/util/Optional;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    .local p0, "state":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "(none)"

    :goto_13
    return-object v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 53
    if-nez p1, :cond_7

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 56
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 58
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5c

    :cond_13
    goto :goto_3f

    :sswitch_14
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x0

    goto :goto_3f

    :sswitch_1f
    const-string/jumbo v2, "print-states-simple"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x3

    goto :goto_3f

    :sswitch_2a
    const-string/jumbo v2, "print-states"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_35
    const-string/jumbo v2, "print-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    :goto_3f
    packed-switch v1, :pswitch_data_6e

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 66
    :pswitch_47
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStatesSimple(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 64
    :pswitch_4c
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStates(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 62
    :pswitch_51
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 60
    :pswitch_56
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x54c2ea8f -> :sswitch_35
        -0x439a66de -> :sswitch_2a
        -0x119b2743 -> :sswitch_1f
        0x68ac491 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 160
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 161
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Device state manager (device_state) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string v1, "  state [reset|OVERRIDE_DEVICE_STATE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const-string v1, "    Return or override device state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string v1, "  print-state"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    const-string v1, "    Return the current device state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string v1, "  print-states"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const-string v1, "    Return list of currently supported device states."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string v1, "  print-states-simple"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string v1, "    Return the currently supported device states in comma separated format."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    return-void
.end method
