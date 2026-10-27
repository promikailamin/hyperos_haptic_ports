.class public Lcom/android/server/accessibility/AccessibilityTraceManager;
.super Ljava/lang/Object;
.source "AccessibilityTraceManager.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityTrace;


# static fields
.field public static sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;


# instance fields
.field public final mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

.field public final mA11yMSLock:Ljava/lang/Object;

.field public volatile mEnabledLoggingFlags:J

.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 73
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    .line 75
    iput-wide p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    return-void
.end method

.method public static getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 4

    .line 62
    sget-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;-><init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 65
    :cond_b
    sget-object p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method


# virtual methods
.method public getTraceStateForAccessibilityManagerClientState()I
    .registers 4

    const-wide/16 v0, 0x10

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x100

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-wide/16 v1, 0x20

    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_16

    or-int/lit16 v0, v0, 0x200

    :cond_16
    const-wide/32 v1, 0x40000

    .line 97
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v0, v0, 0x400

    :cond_21
    const-wide/16 v1, 0x4000

    .line 100
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    if-eqz p0, :cond_2c

    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_2c
    return v0
.end method

.method public isA11yTracingEnabled()Z
    .registers 5

    .line 80
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isA11yTracingEnabledForTypes(J)Z
    .registers 5

    .line 85
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .registers 27

    move-wide/from16 v2, p4

    .line 161
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string p0, ""

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    if-nez p12, :cond_26

    .line 164
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move-object v13, p0

    :goto_18
    move-wide v8, p1

    move-object/from16 v1, p3

    move-object/from16 v4, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v6, p10

    move-object/from16 v7, p11

    goto :goto_29

    :cond_26
    move-object/from16 v13, p12

    goto :goto_18

    .line 162
    :goto_29
    invoke-interface/range {v0 .. v13}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V

    :cond_2c
    return-void
.end method

.method public logTrace(Ljava/lang/String;J)V
    .registers 5

    .line 145
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;)V
    .registers 15

    .line 150
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 151
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string p0, ""

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    const-string/jumbo p0, "logTrace"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v9, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 151
    invoke-interface/range {v1 .. v9}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    :cond_30
    return-void
.end method

.method public final needToNotifyClients(J)Z
    .registers 7

    .line 169
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/32 v2, 0x44030

    and-long/2addr v0, v2

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 214
    const-string p0, "  start-trace [-t LOGGING_TYPE [LOGGING_TYPE...]]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string p0, "    Start the debug tracing. If no option is present, full trace will be"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string p0, "    generated. Options are:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string p0, "      -t: Only generate tracing for the logging type(s) specified here."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const-string p0, "          LOGGING_TYPE can be any one of below:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string p0, "            IAccessibilityServiceConnection"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string p0, "            IAccessibilityServiceClient"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string p0, "            IAccessibilityManager"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string p0, "            IAccessibilityManagerClient"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string p0, "            IAccessibilityInteractionConnection"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string p0, "            IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string p0, "            IRemoteMagnificationAnimationCallback"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string p0, "            IMagnificationConnection"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string p0, "            IMagnificationConnectionCallback"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string p0, "            WindowManagerInternal"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string p0, "            WindowsForAccessibilityCallback"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string p0, "            MagnificationCallbacks"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string p0, "            InputFilter"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string p0, "            Gesture"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string p0, "            AccessibilityService"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string p0, "            PMBroadcastReceiver"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string p0, "            UserBroadcastReceiver"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string p0, "            FingerprintGesture"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string p0, "  stop-trace"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string p0, "    Stop the debug tracing."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/lang/String;Landroid/os/ShellCommand;)I
    .registers 7

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v0, "start-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    const-string/jumbo p2, "stop-trace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    .line 206
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    return v2

    .line 176
    :cond_1c
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    const-wide/16 p1, -0x1

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    return v2

    .line 181
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2d
    if-eqz p1, :cond_69

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v3, "-t"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 193
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: option not recognized "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    return v1

    .line 185
    :cond_56
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    :goto_5a
    if-eqz p1, :cond_64

    .line 187
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    goto :goto_5a

    .line 199
    :cond_64
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 201
    :cond_69
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityTrace;->getLoggingFlagsFromNames(Ljava/util/List;)J

    move-result-wide p1

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    return v2
.end method

.method public startTrace(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 113
    :cond_7
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 114
    iput-wide p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->needToNotifyClients(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_14
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 119
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0

    .line 122
    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->startTrace(J)V

    return-void
.end method

.method public stopTrace()V
    .registers 6

    .line 128
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabled()Z

    move-result v0

    .line 130
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/16 v3, 0x0

    .line 131
    iput-wide v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 133
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->needToNotifyClients(J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 134
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 136
    monitor-exit v1

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    if-eqz v0, :cond_28

    .line 139
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->stopTrace()V

    :cond_28
    return-void
.end method
