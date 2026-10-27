.class public Lcom/android/server/accessibility/AccessibilityTraceManager;
.super Ljava/lang/Object;
.source "AccessibilityTraceManager.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityTrace;


# static fields
.field private static sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;


# instance fields
.field private final mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

.field private final mA11yMSLock:Ljava/lang/Object;

.field private volatile mEnabledLoggingFlags:J

.field private final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 6
    .param p1, "a11yController"    # Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 73
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 76
    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 4
    .param p0, "a11yController"    # Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;-><init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 65
    :cond_b
    sget-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object v0
.end method

.method private needToNotifyClients(J)Z
    .registers 7
    .param p1, "otherTypesEnabled"    # J

    .line 169
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/32 v2, 0x44030

    and-long/2addr v0, v2

    and-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public getTraceStateForAccessibilityManagerClientState()I
    .registers 4

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "state":I
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 92
    or-int/lit16 v0, v0, 0x100

    .line 94
    :cond_b
    const-wide/16 v1, 0x20

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 95
    or-int/lit16 v0, v0, 0x200

    .line 97
    :cond_15
    const-wide/32 v1, 0x40000

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 98
    or-int/lit16 v0, v0, 0x400

    .line 100
    :cond_20
    const-wide/16 v1, 0x4000

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 101
    or-int/lit16 v0, v0, 0x800

    .line 103
    :cond_2a
    return v0
.end method

.method public isA11yTracingEnabled()Z
    .registers 5

    .line 80
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isA11yTracingEnabledForTypes(J)Z
    .registers 7
    .param p1, "typeIdFlags"    # J

    .line 85
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .registers 30
    .param p1, "timestamp"    # J
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "loggingTypes"    # J
    .param p6, "callingParams"    # Ljava/lang/String;
    .param p7, "processId"    # I
    .param p8, "threadId"    # J
    .param p10, "callingUid"    # I
    .param p11, "callStack"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p12, "ignoreElementList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-wide/from16 v14, p4

    invoke-virtual {v0, v14, v15}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 162
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 164
    if-nez p12, :cond_1c

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v16, v2

    goto :goto_1e

    :cond_1c
    move-object/from16 v16, p12

    .line 162
    :goto_1e
    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v7, p10

    move-object/from16 v8, p11

    move-wide/from16 v9, p1

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-object/from16 v14, v16

    invoke-interface/range {v1 .. v14}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V

    .line 166
    :cond_33
    return-void
.end method

.method public logTrace(Ljava/lang/String;J)V
    .registers 5
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J

    .line 145
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;)V
    .registers 15
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 151
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    const-string/jumbo v0, "logTrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 151
    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v9}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    .line 155
    :cond_30
    return-void
.end method

.method onHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 214
    const-string v0, "  start-trace [-t LOGGING_TYPE [LOGGING_TYPE...]]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string v0, "    Start the debug tracing. If no option is present, full trace will be"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v0, "    generated. Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v0, "      -t: Only generate tracing for the logging type(s) specified here."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const-string v0, "          LOGGING_TYPE can be any one of below:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v0, "            IAccessibilityServiceConnection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string v0, "            IAccessibilityServiceClient"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string v0, "            IAccessibilityManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v0, "            IAccessibilityManagerClient"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string v0, "            IAccessibilityInteractionConnection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v0, "            IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v0, "            IRemoteMagnificationAnimationCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v0, "            IWindowMagnificationConnection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v0, "            IWindowMagnificationConnectionCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v0, "            WindowManagerInternal"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string v0, "            WindowsForAccessibilityCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v0, "            MagnificationCallbacks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v0, "            InputFilter"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v0, "            Gesture"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v0, "            AccessibilityService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v0, "            PMBroadcastReceiver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string v0, "            UserBroadcastReceiver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v0, "            FingerprintGesture"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v0, "  stop-trace"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v0, "    Stop the debug tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method onShellCommand(Ljava/lang/String;Landroid/os/ShellCommand;)I
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "shell"    # Landroid/os/ShellCommand;

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_8c

    :cond_9
    goto :goto_20

    :sswitch_a
    const-string/jumbo v0, "stop-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_21

    :sswitch_15
    const-string/jumbo v0, "start-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_21

    :goto_20
    move v0, v1

    :goto_21
    packed-switch v0, :pswitch_data_96

    .line 210
    return v1

    .line 206
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    .line 207
    return v2

    .line 176
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "opt":Ljava/lang/String;
    if-nez v0, :cond_35

    .line 178
    const-wide/16 v3, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    .line 179
    return v2

    .line 181
    :cond_35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3a
    if-eqz v0, :cond_83

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_9e

    :cond_43
    goto :goto_4e

    :pswitch_44
    const-string v4, "-t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    move v4, v2

    goto :goto_4f

    :goto_4e
    move v4, v1

    :goto_4f
    packed-switch v4, :pswitch_data_a4

    .line 193
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: option not recognized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    .line 196
    return v1

    .line 185
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "type":Ljava/lang/String;
    :goto_74
    if-eqz v4, :cond_7e

    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    goto :goto_74

    .line 199
    .end local v4    # "type":Ljava/lang/String;
    :cond_7e
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 201
    :cond_83
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityTrace;->getLoggingFlagsFromNames(Ljava/util/List;)J

    move-result-wide v4

    .line 202
    .local v4, "enabledTypes":J
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    .line 203
    return v2

    nop

    :sswitch_data_8c
    .sparse-switch
        0x4fec781a -> :sswitch_15
        0x6ebe83ba -> :sswitch_a
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_29
        :pswitch_25
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x5e7
        :pswitch_44
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_70
    .end packed-switch
.end method

.method public startTrace(J)V
    .registers 8
    .param p1, "loggingTypes"    # J

    .line 108
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 110
    return-void

    .line 113
    :cond_7
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 114
    .local v0, "oldEnabled":J
    iput-wide p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->needToNotifyClients(J)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 117
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    :try_start_14
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 119
    monitor-exit v2

    goto :goto_22

    :catchall_1f
    move-exception v3

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v3

    .line 122
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v2, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->startTrace(J)V

    .line 123
    return-void
.end method

.method public stopTrace()V
    .registers 7

    .line 128
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabled()Z

    move-result v0

    .line 130
    .local v0, "stop":Z
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 131
    .local v1, "oldEnabled":J
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 133
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->needToNotifyClients(J)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 134
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v3

    .line 135
    :try_start_13
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 136
    monitor-exit v3

    goto :goto_21

    :catchall_1e
    move-exception v4

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v4

    .line 138
    :cond_21
    :goto_21
    if-eqz v0, :cond_28

    .line 139
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->stopTrace()V

    .line 141
    :cond_28
    return-void
.end method
