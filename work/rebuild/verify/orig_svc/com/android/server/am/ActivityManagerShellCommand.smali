.class public final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# static fields
.field public static final CAPABILITIES:[Ljava/lang/String;

.field public static final LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public mActivityType:I

.field public mAgent:Ljava/lang/String;

.field public mAsync:Z

.field public mAttachAgentDuringBind:Z

.field public mAutoStop:Z

.field public mBroadcastOptions:Landroid/app/BroadcastOptions;

.field public mClockType:I

.field public mDismissKeyguardIfInsecure:Z

.field public mDisplayId:I

.field public final mDumping:Z

.field public mDurationMicros:J

.field public final mInterface:Landroid/app/IActivityManager;

.field public final mInternal:Lcom/android/server/am/ActivityManagerService;

.field public mIsLockTask:Z

.field public mIsTaskOverlay:Z

.field public mLongRunningMethods:Z

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public mProfileFile:Ljava/lang/String;

.field public mProfilerOutputVersion:I

.field public mReceiverPermission:Ljava/lang/String;

.field public mRepeat:I

.field public mSamplingInterval:I

.field public mShowSplashScreen:Z

.field public mStartFlags:I

.field public mStopOption:Z

.field public mStreaming:Z

.field public mTaskDisplayAreaFeatureId:I

.field public mTaskId:I

.field public final mTaskInterface:Landroid/app/IActivityTaskManager;

.field public mUserId:I

.field public mWaitOption:Z

.field public mWindowingMode:I


# direct methods
.method public static synthetic $r8$lambda$1VXpcBixhQ_gdo_AjDR1GVXZUfs(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V
    .registers 3

    .line 265
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KPQIZounMsSvNAMzDRHaua8eyw(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 2

    .line 3437
    iget-object p0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne p0, p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    if-nez p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 3440
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lGI2CtSUMM4YQ5gHs3CkTLLM7rc(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;J)V
    .registers 3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->onFinished(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmActivityType(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAsync(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmClockType(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDismissKeyguardIfInsecure(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLockTask(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsTaskOverlay(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProfilerOutputVersion(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReceiverPermission(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRepeat(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSamplingInterval(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowSplashScreen(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStopOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStreaming(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTaskDisplayAreaFeatureId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTaskId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 190
    const-string/jumbo v0, "yyyyMMdd-HHmmss"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 191
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 237
    const-string/jumbo v0, "start.suspend"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4

    .line 240
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 206
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 209
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 241
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 242
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    .line 243
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 244
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 245
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    return-void
.end method

.method public static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 9

    .line 3241
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3242
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p4

    if-ne p4, v0, :cond_9

    return-void

    .line 3249
    :cond_9
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p2

    .line 3250
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, p3, :cond_15

    .line 3251
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void

    .line 3256
    :cond_15
    invoke-interface {p0, p1, p2, p2, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/16 p3, 0x1f03

    .line 3259
    invoke-static {p3}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object p3

    .line 3260
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 3263
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_36

    aget-object v2, p3, v1

    .line 3264
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 3269
    :cond_36
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p3, p3, p5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 3270
    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 3271
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method

.method public static anrTimerHelp(Ljava/io/PrintWriter;)V
    .registers 7

    .line 5126
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->traceFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3c

    .line 5128
    :cond_7
    const-string v0, "help"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->traceTimers([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_3c

    .line 5133
    :cond_14
    const-string v1, "  trace-timer <cmd>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 5135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "         "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;Z)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    if-eqz p1, :cond_e1

    .line 4682
    const-string p1, "Activity manager dump options:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4683
    const-string p1, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    const-string p1, "  WHAT may be one of:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4685
    const-string p1, "    a[ctivities]: activity stack state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    const-string p1, "    r[recents]: recent activities state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4687
    const-string p1, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4688
    const-string p1, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    const-string p1, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    const-string p1, "    p[rocesses] [PACKAGE_NAME]: process state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4691
    const-string p1, "    o[om]: out of memory management"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    const-string p1, "    perm[issions]: URI permission grant state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4693
    const-string p1, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4694
    const-string p1, "    provider [COMP_SPEC]: provider client-side state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4695
    const-string p1, "    s[ervices] [COMP_SPEC ...]: service state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4696
    const-string p1, "    allowed-associations: current package association restrictions"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    const-string p1, "    as[sociations]: tracked app associations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4698
    const-string p1, "    start-info [PACKAGE_NAME]: historical process start information"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4699
    const-string p1, "    exit-info [PACKAGE_NAME]: historical process exit information"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4700
    const-string p1, "    lmk: stats on low memory killer"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4701
    const-string p1, "    lru: raw LRU process list"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4702
    const-string p1, "    binder-proxies: stats on binder objects and IPCs"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4703
    const-string p1, "    settings: currently applied config settings"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4704
    const-string p1, "    cao: cached app optimizer state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    const-string p1, "    timers: the current ANR timer state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4706
    const-string p1, "    service [COMP_SPEC]: service client-side state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4707
    const-string p1, "    package [PACKAGE_NAME]: all state related to given package"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4708
    const-string p1, "    all: dump all activities"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4709
    const-string p1, "    top: dump the top activity"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4710
    const-string p1, "    users: user state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4711
    const-string p1, "  WHAT may also be a COMP_SPEC to dump activities."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4712
    const-string p1, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4713
    const-string p1, "    a partial substring in a component name, a"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4714
    const-string p1, "    hex object identifier."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4715
    const-string p1, "  -a: include all available server state."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4716
    const-string p1, "  -c: include client state."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4717
    const-string p1, "  -p: limit output to given package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4718
    const-string p1, "  -d: limit output to given display."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4719
    const-string p1, "  --checkin: output checkin format, resetting data."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4720
    const-string p1, "  --C: output checkin format, not resetting data."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4721
    const-string p1, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4722
    const-string p1, "--dump-dumpable"

    const-string v0, "--list-dumpables"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "  %s: dump just the DUMPABLE-related state of an activity. Use the %s option to list the supported DUMPABLEs\n"

    invoke-virtual {p0, v1, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4725
    const-string p1, "  %s: show the available dumpables in an activity\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    .line 4728
    :cond_e1
    const-string p1, "Activity manager (activity) commands:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4729
    const-string p1, "  help"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    const-string p1, "      Print this help text."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4731
    const-string p1, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4732
    const-string p1, "          [--sampling INTERVAL] [--clock-type <TYPE>] [--streaming]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4733
    const-string p1, "          [--profiler-output-version NUMBER]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4734
    const-string p1, "          [-R COUNT] [-S] [--track-allocation]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    const-string p1, "          [--user <USER_ID> | current] [--suspend] <INTENT>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4736
    const-string p1, "      Start an Activity.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4737
    const-string p1, "      -D: enable debugging"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    const-string p1, "      --suspend: debugged app suspend threads at startup (only with -D)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4739
    const-string p1, "      -N: enable native debugging"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    const-string p1, "      -W: wait for launch to complete (initial display)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4741
    const-string p1, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4742
    const-string p1, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4743
    const-string v0, "          between samples (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4744
    const-string v0, "      --clock-type <TYPE>: type can be wall / thread-cpu / dual. Specify"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4745
    const-string v0, "          the clock that is used to report the timestamps when profiling"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    const-string v0, "          The default value is dual. (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    const-string v0, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4748
    const-string v0, "          (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    const-string v0, "      --profiler-output-version Specify the version of the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4750
    const-string v0, "          profiling output (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    const-string v0, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    const-string v0, "      --attach-agent <agent>: attach the given agent before binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    const-string v0, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    const-string v0, "          the top activity will be finished."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4756
    const-string v0, "      -S: force stop the target app before starting the activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    const-string v0, "      --track-allocation: enable tracking of object allocations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4759
    const-string v1, "          specified then run as the current user."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4760
    const-string v2, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    const-string v2, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    const-string v2, "      --display <DISPLAY_ID>: The display to launch the activity into."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    const-string v2, "      --splashscreen-show-icon: Show the splash screen icon on launch."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    const-string v2, "  start-in-vsync"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    const-string v2, "      Start an Activity with vsync aligned. See `start-activity` for the"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4766
    const-string v2, "      possible options."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    const-string v2, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    const-string v2, "      Start a Service.  Options are:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4770
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    const-string v2, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    const-string v2, "      Start a foreground Service.  Options are:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4773
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    const-string v2, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    const-string v2, "      Stop a Service.  Options are:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4778
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4779
    const-string v0, "  broadcast [--user <USER_ID> | all | current]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    const-string v0, "          [--receiver-permission <PERMISSION>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    const-string v0, "          [--allow-background-activity-starts]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4782
    const-string v0, "          [--async] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    const-string v0, "      Send a broadcast Intent.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4784
    const-string v0, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4785
    const-string v0, "          specified then send to all users."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4786
    const-string v0, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4787
    const-string v0, "      --allow-background-activity-starts: The receiver may start activities"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4788
    const-string v0, "          even if in the background."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4789
    const-string v0, "      --async: Send without waiting for the completion of the receiver."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4790
    const-string v0, "  compact {some|full} <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4791
    const-string v0, "      Perform a single process compaction. The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    const-string v0, "          may be either a process name or pid."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4793
    const-string v0, "      some: execute file compaction."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4794
    const-string v1, "      full: execute anon + file compaction."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4795
    const-string v2, "  compact system"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4796
    const-string v2, "      Perform a full system compaction."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4797
    const-string v2, "  compact native {some|full} <pid>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4798
    const-string v2, "      Perform a native compaction for process with <pid>."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4799
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4801
    const-string v0, "  freeze [--sticky] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4802
    const-string v0, "      Freeze a process. The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4803
    const-string v0, "          may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    const-string v1, "      --sticky: persists the frozen state for the process lifetime or"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4805
    const-string v1, "                  until an unfreeze is triggered via shell"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4806
    const-string v1, "  unfreeze [--sticky] <PROCESS>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4807
    const-string v1, "      Unfreeze a process. The given <PROCESS> argument"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4808
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4809
    const-string v0, "      --sticky: persists the unfrozen state for the process lifetime or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    const-string v0, "                  until a freeze is triggered via shell"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    const-string v0, "  isfrozen <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4812
    const-string v0, "      Print the frozen status of the process (true or false)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    const-string v0, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4814
    const-string v0, "          [--user <USER_ID> | current]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4815
    const-string v0, "          [--no-hidden-api-checks [--no-test-api-access]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4816
    const-string v0, "          [--no-isolated-storage]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4817
    const-string v0, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4818
    const-string v0, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4819
    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4820
    const-string v0, "      is only one instrumentation.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4821
    const-string v0, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    const-string v0, "          [-e perf true] to generate raw output for performance measurements."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4823
    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4824
    const-string v0, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4825
    const-string v0, "      -p <FILE>: write profiling data to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4826
    const-string v0, "      -m: Write output as protobuf to stdout (machine readable)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4827
    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    const-string v0, "          readable). If path is not specified, default directory and file name will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4829
    const-string v0, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4830
    const-string v0, "      -w: wait for instrumentation to finish before returning.  Required for"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    const-string v0, "          test runners."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4832
    const-string v0, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4833
    const-string v0, "          current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4834
    const-string v0, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4835
    const-string v0, "      --no-test-api-access: do not allow access to test APIs, if hidden"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4836
    const-string v0, "          API checks are enabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4837
    const-string v0, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4838
    const-string v0, "          mount full external storage"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    const-string v0, "      --no-window-animation: turn off window animations while running."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4840
    const-string v0, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4841
    const-string v0, "          This assumes that the process supports the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4842
    const-string v0, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4843
    const-string v0, "      Trace IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4844
    const-string v0, "      start: start tracing IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4845
    const-string v0, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4846
    const-string v0, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4847
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->anrTimerHelp(Ljava/io/PrintWriter;)V

    .line 4848
    const-string v0, "  profile start [--user <USER_ID> current]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4849
    const-string v0, "          [--clock-type <TYPE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4850
    const-string v0, "          [--profiler-output-version VERSION]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4851
    const-string v0, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    const-string v0, "      Start profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4853
    const-string v0, "        may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4854
    const-string v1, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4855
    const-string v2, "          specify user of process to profile; uses current user if not"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4856
    const-string v3, "          specified."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4857
    const-string v4, "      --clock-type <TYPE>: use the specified clock to report timestamps."

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4858
    const-string v4, "          The type can be one of wall | thread-cpu | dual. The default"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4859
    const-string v4, "          value is dual."

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4860
    const-string v4, "      --profiler-output-versionVERSION: specifies the output"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4861
    const-string v4, "          format version"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4862
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4863
    const-string p1, "          between samples."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4864
    const-string p1, "      --streaming: stream the profiling output to the specified file."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4865
    const-string p1, "  profile stop [--user <USER_ID> current] <PROCESS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4866
    const-string p1, "      Stop profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4867
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4870
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    const-string p1, "  profile lowoverhead start [--longrunning --duration DURATION] <PROCESS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4872
    const-string p1, "      Starts a lowoverhead trace on a process. The given <PROCESS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4873
    const-string p1, "        argument may be either a process name or pid.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    const-string p1, "      --longrunning: Traces methods that run longer than a specific"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4875
    const-string p1, "          threshold. This threshold is a build-time constant"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4876
    const-string p1, "      --duration DURATION: trace for the specified DURATION milliseconds."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    const-string p1, "          This argument only applies for long running traces. A default"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    const-string p1, "          value is used when duration is not specified."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4879
    const-string p1, "  profile lowoverhead stop <PROCESS> [<FILE>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4880
    const-string p1, "      Stops an ongoing lowoverhead trace on a process. The given"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4881
    const-string p1, "        <PROCESS> argument may be either a process name or pid."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4882
    const-string p1, "        An optional <FILE> argument may be provided to dump the"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4883
    const-string p1, "        collected trace"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4884
    const-string p1, "  dumpheap [--user <USER_ID> current] [-n] [-g] [-b <format>] "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4885
    const-string p1, "           <PROCESS> <FILE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4886
    const-string p1, "      Dump the heap of a process.  The given <PROCESS> argument may"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    const-string p1, "        be either a process name or pid.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4888
    const-string p1, "      -n: dump native heap instead of managed heap"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4889
    const-string p1, "      -g: force GC before dumping the heap"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    const-string p1, "      -b <format>: dump contents of bitmaps in the format specified,"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4891
    const-string p1, "         which can be \"png\", \"jpg\" or \"webp\"."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4892
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4893
    const-string p1, "          specify user of process to dump; uses current user if not specified."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4894
    const-string p1, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4895
    const-string p1, "      Set application <PACKAGE> to debug.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    const-string p1, "      -w: wait for debugger when application starts"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4897
    const-string p1, "      --persistent: retain this value"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    const-string p1, "  clear-debug-app"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4899
    const-string p1, "      Clear the previously set-debug-app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4900
    const-string p1, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    const-string p1, "      Start monitoring pss size of <PROCESS>, if it is at or"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4902
    const-string p1, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4903
    const-string p1, "  clear-watch-heap"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4904
    const-string p1, "      Clear the previously set-watch-heap."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    const-string p1, "  clear-start-info [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4906
    const-string p1, "      Clear process start-info for the given package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    const-string p1, "      Clear start-info for all packages if no package is provided."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    const-string p1, "  start-info-detailed-monitoring [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4909
    const-string p1, "      Enable application start info detailed monitoring for the given package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    const-string p1, "      Disable if no package is supplied."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    const-string p1, "  clear-exit-info [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4912
    const-string p1, "      Clear process exit-info for the given package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    const-string p1, "      Clear exit-info for all packages if no package is provided."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4914
    const-string p1, "  bug-report [--progress | --telephony]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    const-string p1, "      Request bug report generation; will launch a notification"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4916
    const-string p1, "        when done to select where it should be delivered. Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4917
    const-string p1, "     --progress: will launch a notification right away to show its progress."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4918
    const-string p1, "     --telephony: will dump only telephony sections."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4919
    const-string p1, "  fgs-notification-rate-limit {enable | disable}"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    const-string p1, "     Enable/disable rate limit on FGS notification deferral policy."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4921
    const-string p1, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4922
    const-string p1, "      Completely stop the given application package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4923
    const-string p1, "  stop-app [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4924
    const-string p1, "      Stop an app and all of its services.  Unlike `force-stop` this does"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4925
    const-string p1, "      not cancel the app\'s scheduled alarms and jobs."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4926
    const-string p1, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4927
    const-string p1, "      Induce a VM crash in the specified package or process"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4928
    const-string p1, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    const-string p1, "      Kill all background processes associated with the given application."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4930
    const-string p1, "  kill-all"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4931
    const-string p1, "      Kill all processes that are safe to kill (cached, etc)."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4932
    const-string p1, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4933
    const-string p1, "      If the given application\'s uid is in the background and waiting to"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4934
    const-string p1, "      become idle (not allowing background services), do that now."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    const-string p1, "  set-deterministic-uid-idle [--user <USER_ID> | all | current] <true|false>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4937
    const-string p1, "      If true, sets the timing of making UIDs idle consistent and"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    const-string p1, "      deterministic. If false, the timing will be variable depending on"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4939
    const-string p1, "      other activity on the device. The default is false."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4940
    const-string p1, "  monitor [--gdb <port>] [-p <TARGET>] [-s] [-c] [-k]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4941
    const-string p1, "      Start monitoring for crashes or ANRs."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4942
    const-string p1, "      --gdb: start gdbserv on the given port at crash/ANR"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    const-string p1, "      -p: only show events related to a specific process / package"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    const-string p1, "      -s: simple mode, only show a summary line for each event"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    const-string p1, "      -c: assume the input is always [c]ontinue"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    const-string p1, "      -k: assume the input is always [k]ill"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4947
    const-string p1, "         -c and -k are mutually exclusive."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4948
    const-string p1, "  watch-uids [--oom <uid>] [--mask <capabilities integer>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4949
    const-string p1, "      Start watching for and reporting uid state changes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4950
    const-string p1, "      --oom: specify a uid for which to report detailed change messages."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    const-string p1, "      --mask: Specify PROCESS_CAPABILITY_XXX mask to report. "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    const-string p1, "              By default, it only reports FOREGROUND_LOCATION (1)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4953
    const-string p1, "              FOREGROUND_CAMERA (2), FOREGROUND_MICROPHONE (4)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    const-string p1, "              and NETWORK (8). New capabilities added on or after"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    const-string p1, "              Android UDC will not be reported by default."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    const-string p1, "  hang [--allow-restart]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4957
    const-string p1, "      Hang the system."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4958
    const-string p1, "      --allow-restart: allow watchdog to perform normal system restart"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4959
    const-string p1, "  restart"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4960
    const-string p1, "      Restart the user-space system."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4961
    const-string p1, "  idle-maintenance"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4962
    const-string p1, "      Perform idle maintenance now."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4963
    const-string p1, "  screen-compat [on|off] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4964
    const-string p1, "      Control screen compatibility mode of <PACKAGE>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    const-string p1, "  package-importance <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4966
    const-string p1, "      Print current importance of <PACKAGE>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    const-string p1, "  to-uri [INTENT]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4968
    const-string p1, "      Print the given Intent specification as a URI."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4969
    const-string p1, "  to-intent-uri [INTENT]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4970
    const-string p1, "      Print the given Intent specification as an intent: URI."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    const-string p1, "  to-app-uri [INTENT]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    const-string p1, "      Print the given Intent specification as an android-app: URI."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4973
    const-string p1, "  switch-user <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    const-string p1, "      Switch to put USER_ID in the foreground, starting"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    const-string p1, "      execution of that user if it is currently stopped."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    const-string p1, "  get-current-user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    const-string p1, "      Returns id of the current foreground user."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4978
    const-string p1, "  start-user [-w] [--display DISPLAY_ID] <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    const-string p1, "      Start USER_ID in background if it is currently stopped;"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4980
    const-string p1, "      use switch-user if you want to start the user in foreground."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    const-string p1, "      -w: wait for start-user to complete and the user to be unlocked."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    const-string p1, "      --display <DISPLAY_ID>: starts the user visible in that display, which allows the user to launch activities on it."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4984
    const-string p1, "        (not supported on all devices; typically only on automotive builds where the vehicle has passenger displays)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4986
    const-string p1, "  unlock-user <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    const-string p1, "      Unlock the given user.  This will only work if the user doesn\'t"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    const-string p1, "      have an LSKF (PIN/pattern/password)."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4989
    const-string p1, "  stop-user [-w] [-f] <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    const-string p1, "      Stop execution of USER_ID, not allowing it to run any"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    const-string p1, "      code until a later explicit start or switch to it."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    const-string p1, "      -w: wait for stop-user to complete."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    const-string p1, "      -f: force stop, even if user has an unstoppable parent."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    const-string p1, "  is-user-stopped <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    const-string p1, "      Returns whether <USER_ID> has been stopped or not."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    const-string p1, "  logout-user <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    const-string p1, "      Logs out the user."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4998
    const-string p1, "  get-started-user-state <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4999
    const-string p1, "      Gets the current state of the given started user."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5000
    const-string p1, "  track-associations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    const-string p1, "      Enable association tracking."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5002
    const-string p1, "  untrack-associations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5003
    const-string p1, "      Disable and clear association tracking."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5004
    const-string p1, "  get-uid-state <UID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    const-string p1, "      Gets the process state of an app given its <UID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5006
    const-string p1, "  attach-agent <PROCESS> <FILE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5007
    const-string p1, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    const-string p1, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5009
    const-string p1, "      Retrieve the configuration and any recent configurations of the device."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5010
    const-string p1, "      --days: also return last N days of configurations that have been seen."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5011
    const-string p1, "      --device: also output global device configuration info."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    const-string p1, "      --proto: return result as a proto; does not include --days info."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5013
    const-string p1, "      --display: Specify for which display to run the command; if not "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5014
    const-string p1, "          specified then run for the default display."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    const-string p1, "  supports-multiwindow"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5016
    const-string p1, "      Returns true if the device supports multiwindow."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    const-string p1, "  supports-split-screen-multi-window"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    const-string p1, "      Returns true if the device supports split screen multiwindow."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5019
    const-string p1, "  suppress-resize-config-changes <true|false>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    const-string p1, "      Suppresses configuration changes due to user resizing an activity/task."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    const-string p1, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5022
    const-string p1, "      Sets the inactive state of an app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    const-string p1, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    const-string p1, "      Returns the inactive state of an app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    const-string p1, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare|restricted"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5026
    const-string p1, "      Puts an app in the standby bucket."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5027
    const-string p1, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    const-string p1, "      Returns the standby bucket of an app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5029
    const-string p1, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    const-string p1, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5031
    const-string p1, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    const-string p1, "  display [COMMAND] [...]: sub-commands for operating on displays."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5033
    const-string p1, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    const-string p1, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5035
    const-string p1, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    const-string p1, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    const-string p1, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5038
    const-string p1, "           bottom (false) of <STACK_ID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5039
    const-string p1, "       list"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5040
    const-string p1, "           List all of the activity stacks and their sizes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    const-string p1, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5042
    const-string p1, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    const-string p1, "       remove <STACK_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    const-string p1, "           Remove stack <STACK_ID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    const-string p1, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5046
    const-string p1, "       lock <TASK_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5047
    const-string p1, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5048
    const-string p1, "       lock stop"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5049
    const-string p1, "           End the current task lock."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5050
    const-string p1, "       resizeable <TASK_ID> [0|1|2|3]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    const-string p1, "           Change resizeable mode of <TASK_ID> to one of the following:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5052
    const-string p1, "           0: unresizeable"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    const-string p1, "           1: crop_windows"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    const-string p1, "           2: resizeable"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5055
    const-string p1, "           3: resizeable_and_pipable"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5056
    const-string p1, "       resize <TASK_ID> <LEFT> <TOP> <RIGHT> <BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5057
    const-string p1, "           The task is resized only if it is in multi-window windowing"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5058
    const-string p1, "           mode or freeform windowing mode."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5059
    const-string p1, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5060
    const-string p1, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5061
    const-string p1, "      without restarting any processes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5062
    const-string p1, "  write"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5063
    const-string p1, "      Write all pending state to storage."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5064
    const-string p1, "  compat [COMMAND] [...]: sub-commands for toggling app-compat changes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5065
    const-string p1, "         enable|disable [--no-kill] <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    const-string p1, "            Toggles a change either by id or by name for <PACKAGE_NAME>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5067
    const-string v0, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect) unless --no-kill is provided."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5068
    const-string v1, "         reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5069
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5070
    const-string p1, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect)."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5071
    const-string p1, "         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5072
    const-string p1, "            Toggles all changes that are gated by <targetSdkVersion>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    const-string p1, "         reset-all [--no-kill] <PACKAGE_NAME>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5074
    const-string p1, "            Removes all existing overrides for all changes for "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5075
    const-string p1, "            <PACKAGE_NAME> (back to default behaviour)."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5077
    const-string p1, "  memory-factor [command] [...]: sub-commands for overriding memory pressure factor"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5078
    const-string p1, "         set <NORMAL|MODERATE|LOW|CRITICAL>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5079
    const-string p1, "            Overrides memory pressure factor. May also supply a raw int level"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5080
    const-string p1, "         show"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5081
    const-string p1, "            Shows the existing memory pressure factor"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5082
    const-string p1, "         reset"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5083
    const-string p1, "            Removes existing override for memory pressure factor"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5084
    const-string p1, "  service-restart-backoff <COMMAND> [...]: sub-commands to toggle service restart backoff policy."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5085
    const-string p1, "         enable|disable <PACKAGE_NAME>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5086
    const-string p1, "            Toggles the restart backoff policy on/off for <PACKAGE_NAME>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5087
    const-string p1, "         show <PACKAGE_NAME>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5088
    const-string p1, "            Shows the restart backoff policy state for <PACKAGE_NAME>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5089
    const-string p1, "  get-isolated-pids <UID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5090
    const-string p1, "         Get the PIDs of isolated processes with packages in this <UID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    const-string p1, "  set-stop-user-on-switch [true|false]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5092
    const-string p1, "         Sets whether the current user (and its profiles) should be stopped when switching to a different user."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    const-string p1, "         Without arguments, it resets to the value defined by platform."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5095
    const-string p1, "  set-bg-abusive-uids [uid=percentage][,uid=percentage...]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5096
    const-string p1, "         Force setting the battery usage of the given UID."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5097
    const-string p1, "  set-bg-restriction-level [--user <USER_ID>] <PACKAGE> unrestricted|exempted|adaptive_bucket|restricted_bucket|background_restricted|hibernation"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5098
    const-string p1, "         Set an app\'s background restriction level which in turn map to a app standby bucket."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    const-string p1, "  get-bg-restriction-level [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5100
    const-string p1, "         Get an app\'s background restriction level."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5101
    const-string p1, "  list-displays-for-starting-users"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5102
    const-string p1, "         Lists the id of displays that can be used to start users on background."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5104
    const-string p1, "  set-foreground-service-delegate [--user <USER_ID>] <PACKAGE> start|stop"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5105
    const-string p1, "         Start/stop an app\'s foreground service delegate."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5106
    const-string p1, "  set-ignore-delivery-group-policy <ACTION>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5107
    const-string p1, "         Start ignoring delivery group policy set for a broadcast action"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5108
    const-string p1, "  clear-ignore-delivery-group-policy <ACTION>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5109
    const-string p1, "         Stop ignoring delivery group policy set for a broadcast action"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5110
    const-string p1, "  capabilities [--protobuf]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5111
    const-string p1, "         Output am supported features (text format). Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5112
    const-string p1, "         --protobuf: format output using protobuffer"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5113
    const-string p1, "  set-app-zygote-preload-timeout <TIMEOUT_IN_MS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5114
    const-string p1, "         Set the timeout for preloading code in the app-zygote"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5115
    const-string p1, "  set-media-foreground-service inactive|active [--user USER_ID] <PACKAGE> <NOTIFICATION_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5117
    const-string p1, "         Set an app\'s media service inactive or active."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5118
    const-string p1, "  clear-bad-process [--user USER_ID] <PROCESS_NAME>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5119
    const-string p1, "         Clears a process from the bad processes list."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    const-string p1, ""

    invoke-static {p0, p1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bucketNameToBucketValue(Ljava/lang/String;)I
    .registers 4

    .line 3567
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3568
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 p0, 0xa

    return p0

    .line 3570
    :cond_f
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 p0, 0x14

    return p0

    .line 3572
    :cond_1b
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 p0, 0x1e

    return p0

    .line 3574
    :cond_26
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 p0, 0x28

    return p0

    .line 3576
    :cond_32
    const-string/jumbo v1, "re"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/16 p0, 0x2d

    return p0

    .line 3578
    :cond_3e
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/16 p0, 0x32

    return p0

    .line 3582
    :cond_4a
    :try_start_4a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4e} :catch_4f

    return p0

    .line 3585
    :catch_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 10

    .line 3766
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3767
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3768
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 3769
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3770
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 3771
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3772
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 3773
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-gez v1, :cond_3c

    .line 3775
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad left arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    :cond_3c
    if-gez v3, :cond_57

    .line 3779
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad top arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    :cond_57
    if-gtz v5, :cond_72

    .line 3783
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad right arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    :cond_72
    if-gtz v7, :cond_8d

    .line 3787
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad bottom arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    .line 3790
    :cond_8d
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getDisplayIdFromNextArg()I
    .registers 2

    .line 3460
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_b

    return p0

    .line 3462
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "--display must be a non-negative integer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 13

    .line 3276
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3279
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_17

    .line 3281
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Warning: couldn\'t get EGL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v5

    .line 3286
    :cond_17
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    .line 3287
    new-array v3, v2, [I

    .line 3288
    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v6, 0x1

    .line 3291
    new-array v7, v6, [I

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 3292
    invoke-interface {v0, v1, v3, v8, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 3293
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Warning: couldn\'t get EGL config count"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v5

    .line 3298
    :cond_38
    aget v3, v7, v8

    new-array v9, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 3299
    invoke-interface {v0, v1, v9, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 3300
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Warning: couldn\'t get EGL configs"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v5

    :cond_4c
    const/16 p0, 0x3057

    const/16 v3, 0x3056

    const/16 v4, 0x3038

    .line 3307
    filled-new-array {p0, v6, v3, v6, v4}, [I

    move-result-object v3

    const/16 p0, 0x3098

    .line 3316
    filled-new-array {p0, v2, v4}, [I

    move-result-object p0

    .line 3319
    new-array v10, v6, [I

    move v11, v8

    .line 3321
    :goto_5f
    aget v2, v7, v8

    if-ge v11, v2, :cond_a1

    .line 3323
    aget-object v2, v9, v11

    const/16 v4, 0x3027

    invoke-interface {v0, v1, v2, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 3324
    aget v2, v10, v8

    const/16 v4, 0x3050

    if-ne v2, v4, :cond_72

    :cond_70
    :goto_70
    move-object v4, p0

    goto :goto_9d

    .line 3331
    :cond_72
    aget-object v2, v9, v11

    const/16 v4, 0x3033

    invoke-interface {v0, v1, v2, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 3332
    aget v2, v10, v8

    and-int/2addr v2, v6

    if-nez v2, :cond_7f

    goto :goto_70

    .line 3338
    :cond_7f
    aget-object v2, v9, v11

    const/16 v4, 0x3040

    invoke-interface {v0, v1, v2, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 3339
    aget v2, v10, v8

    and-int/2addr v2, v6

    if-eqz v2, :cond_91

    .line 3340
    aget-object v2, v9, v11

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 3342
    :cond_91
    aget v2, v10, v8

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_70

    .line 3343
    aget-object v2, v9, v11

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    :goto_9d
    add-int/lit8 v11, v11, 0x1

    move-object p0, v4

    goto :goto_5f

    .line 3348
    :cond_a1
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-object v5
.end method

.method public getProcessFromShell()Lcom/android/server/am/ProcessRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1398
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1400
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1401
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_1e

    .line 1402
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 1403
    :try_start_16
    monitor-exit v3

    goto :goto_1f

    :catchall_18
    move-exception v4

    goto :goto_1c

    :catchall_1a
    move-exception v4

    move-object v2, v1

    :goto_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_18

    :try_start_1d
    throw v4
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1e} :catch_1f

    :catch_1e
    move-object v2, v1

    :catch_1f
    :goto_1f
    if-nez v2, :cond_7b

    .line 1409
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 1410
    :try_start_29
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1411
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1412
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_68

    .line 1413
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_44

    goto :goto_68

    .line 1416
    :cond_44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5b

    .line 1417
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: more than one processes found"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v1

    :catchall_59
    move-exception p0

    goto :goto_76

    :cond_5b
    const/4 p0, 0x0

    .line 1420
    :try_start_5c
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1421
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_7b

    .line 1414
    :cond_68
    :goto_68
    :try_start_68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: could not find process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v1

    .line 1421
    :goto_76
    :try_start_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_7b
    :goto_7b
    return-object v2
.end method

.method public final getRecentConfigurations(I)Ljava/util/List;
    .registers 10

    .line 3179
    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 3181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const v0, 0x5265c00

    mul-int/2addr p1, v0

    int-to-long v2, p1

    sub-long v3, v5, v2

    .line 3185
    :try_start_16
    const-string v7, "com.android.shell"

    const/4 v2, 0x4

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-nez p1, :cond_22

    .line 3188
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 3191
    :cond_22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3192
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 3193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v1, :cond_6b

    .line 3195
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/ConfigurationStats;

    .line 3196
    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_52

    .line 3198
    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 3201
    :cond_52
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3200
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3205
    :cond_6b
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$4;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$4;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 3212
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3213
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3214
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_83} :catch_84

    return-object p0

    .line 3218
    :catch_84
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .registers 4

    .line 4661
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_f

    .line 4663
    const-string p0, "Error: Activity manager has no configuration"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 4667
    :cond_f
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4668
    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 4670
    new-instance v0, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public getUidState(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3168
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result p0

    .line 3171
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 3172
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3173
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "PROCESS_STATE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3174
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public isFrozen(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 1383
    :cond_8
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v0, p0}, Landroid/os/Process;->isProcessFrozen(II)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1384
    const-string/jumbo p0, "true"

    goto :goto_18

    :cond_16
    const-string p0, "false"

    :goto_18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final makeIntent(I)Landroid/content/Intent;
    .registers 6

    const/4 v0, 0x0

    .line 600
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 601
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 602
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 603
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    const/4 v1, 0x0

    .line 604
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 605
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 606
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 607
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 608
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mLongRunningMethods:Z

    const-wide/16 v2, 0x0

    .line 609
    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDurationMicros:J

    .line 610
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 p1, -0x1

    .line 611
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 612
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 613
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 614
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 615
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 616
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 617
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 618
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 619
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 621
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, p1}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8

    if-nez p1, :cond_7

    .line 251
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 253
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 255
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_5b6

    goto/16 :goto_59b

    :sswitch_17
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :catch_25
    move-exception p0

    goto/16 :goto_5a0

    .line 255
    :sswitch_28
    const-string v2, "clear-recent-apps"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearRecentApps(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_35
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    goto/16 :goto_46c

    :sswitch_40
    const-string v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_4d
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_5b
    const-string/jumbo v2, "set-stop-user-on-switch"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStopUserOnSwitch(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_69
    const-string/jumbo v2, "stop-app"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_77
    const-string/jumbo v2, "logout-user"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runLogoutUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_85
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_92
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_a0
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_ae
    const-string v2, "dumpbitmaps"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpBitmaps(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_bb
    const-string/jumbo v2, "set-media-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetMediaForegroundService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_c9
    const-string v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 293
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 255
    :sswitch_db
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_e9
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_f6
    const-string/jumbo v2, "refresh-settings-cache"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 430
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRefreshSettingsCache()I

    move-result p0

    return p0

    .line 255
    :sswitch_104
    const-string/jumbo v2, "wait-for-broadcast-dispatch"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 422
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastDispatch(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_112
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_120
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_12e
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_13b
    const-string/jumbo v2, "set-ignore-delivery-group-policy"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetIgnoreDeliveryGroupPolicy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_149
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_156
    const-string v2, "compact"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompact(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_163
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    goto/16 :goto_45e

    :sswitch_16e
    const-string v2, "clear-ignore-delivery-group-policy"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearIgnoreDeliveryGroupPolicy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_17b
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_189
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_196
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_1a4
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 358
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 255
    :sswitch_1b2
    const-string/jumbo v2, "set-bg-abusive-uids"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgAbusiveUids(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_1c0
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_1ce
    const-string/jumbo v2, "start-in-vsync"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 263
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v4, v2}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;ILcom/android/server/am/ActivityManagerShellCommand-IA;)V

    .line 264
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    const-wide/32 v2, 0x1d4c0

    .line 269
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->waitForFinish(J)Z

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_1f7
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_205
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_213
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_220
    const-string/jumbo v2, "wait-for-application-barrier"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForApplicationBarrier(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_22e
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_23c
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    goto :goto_293

    :sswitch_246
    const-string/jumbo v2, "isfrozen"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->isFrozen(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_254
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    const/4 p1, 0x2

    .line 360
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 255
    :sswitch_263
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    goto/16 :goto_487

    :sswitch_26e
    const-string/jumbo v2, "memory-factor"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_27c
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_28a
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 261
    :goto_293
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_298
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_2a6
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_2b3
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_2c0
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_2ce
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_2dc
    const-string v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 257
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->onHelp()V

    return v4

    .line 255
    :sswitch_2e8
    const-string v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_2f5
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_303
    const-string v2, "get-bg-restriction-level"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetBgRestrictionLevel(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_310
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    goto/16 :goto_45e

    :sswitch_31b
    const-string v2, "clear-exit-info"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearExitInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_328
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_336
    const-string/jumbo v2, "list-bg-exemptions-config"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runListBgExemptionsConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_344
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_352
    const-string/jumbo v2, "service-restart-backoff"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runServiceRestartBackoff(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_360
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_36e
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_37c
    const-string/jumbo v2, "unfreeze"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 289
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runFreeze(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 255
    :sswitch_38a
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_398
    const-string v2, "fgs-notification-rate-limit"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runFgsNotificationRateLimit(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3a5
    const-string/jumbo v2, "observe-foreground-process"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 448
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentForegroundProcess(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3b5
    const-string v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3c2
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3d0
    const-string v2, "clear-start-info"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearStartInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3dd
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3ea
    const-string/jumbo v2, "set-app-zygote-preload-timeout"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAppZygotePreloadTimeout(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_3f8
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_406
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_413
    const-string/jumbo v2, "trace-timer"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceTimer(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_421
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 356
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 255
    :sswitch_42f
    const-string/jumbo v2, "set-bg-restriction-level"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 444
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgRestrictionLevel(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_43d
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    goto :goto_45e

    :sswitch_447
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 368
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_455
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 278
    :goto_45e
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 255
    :sswitch_463
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 281
    :goto_46c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_471
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_47e
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 273
    :goto_487
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 255
    :sswitch_48c
    const-string/jumbo v2, "set-foreground-service-delegate"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetForegroundServiceDelegate(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_49a
    const-string v2, "freeze"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 287
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runFreeze(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 255
    :sswitch_4a7
    const-string/jumbo v2, "wait-for-broadcast-barrier"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastBarrier(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_4b5
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_4c3
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_4d1
    const-string v2, "compat"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_4de
    const-string/jumbo v2, "reset-dropbox-rate-limiter"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 450
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runResetDropboxRateLimiter()I

    move-result p0

    return p0

    .line 255
    :sswitch_4ec
    const-string v2, "capabilities"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 456
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCapabilities(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_4f9
    const-string/jumbo v2, "start-info-detailed-monitoring"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartInfoDetailedMonitoring(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_507
    const-string/jumbo v2, "list-displays-for-starting-users"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runListDisplaysForStartingUsers(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_515
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_522
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_530
    const-string v2, "clear-bad-process"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearBadProcess(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_53d
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_54a
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_558
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_565
    const-string v2, "get-isolated-pids"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetIsolatedProcesses(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_572
    const-string/jumbo v2, "set-deterministic-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDeterministicUidIdle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_580
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 255
    :sswitch_58e
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59b

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 464
    :cond_59b
    :goto_59b
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_59f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_59f} :catch_25

    return p0

    .line 467
    :goto_5a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_5b6
    .sparse-switch
        -0x7e761220 -> :sswitch_58e
        -0x7566d004 -> :sswitch_580
        -0x6f2553a9 -> :sswitch_572
        -0x6ee359bb -> :sswitch_565
        -0x6684cefe -> :sswitch_558
        -0x65f435a5 -> :sswitch_54a
        -0x6366a39f -> :sswitch_53d
        -0x615a9ad9 -> :sswitch_530
        -0x608449aa -> :sswitch_522
        -0x607e173f -> :sswitch_515
        -0x5a4c3594 -> :sswitch_507
        -0x595e0b0f -> :sswitch_4f9
        -0x58aaf04a -> :sswitch_4ec
        -0x57a97ed6 -> :sswitch_4de
        -0x50c0cc7e -> :sswitch_4d1
        -0x4ef4b7a7 -> :sswitch_4c3
        -0x4db101b9 -> :sswitch_4b5
        -0x4c012bb1 -> :sswitch_4a7
        -0x4b7bc569 -> :sswitch_49a
        -0x46763e04 -> :sswitch_48c
        -0x436e13b6 -> :sswitch_47e
        -0x3bc220e3 -> :sswitch_471
        -0x3988e78d -> :sswitch_463
        -0x376fe74e -> :sswitch_455
        -0x3619e74c -> :sswitch_447
        -0x3530e48a -> :sswitch_43d
        -0x345cc4ba -> :sswitch_42f
        -0x33db6ce6 -> :sswitch_421
        -0x3374bb43 -> :sswitch_413
        -0x30697b4a -> :sswitch_406
        -0x2c900a2b -> :sswitch_3f8
        -0x29e7a7a1 -> :sswitch_3ea
        -0x29b36e67 -> :sswitch_3dd
        -0x271b1d47 -> :sswitch_3d0
        -0x2420b54e -> :sswitch_3c2
        -0x20b34e72 -> :sswitch_3b5
        -0x204d57ca -> :sswitch_3a5
        -0x1a75f64b -> :sswitch_398
        -0x171366ac -> :sswitch_38a
        -0x16a4cd90 -> :sswitch_37c
        -0x152733fd -> :sswitch_36e
        -0x12717657 -> :sswitch_360
        -0xd7815ae -> :sswitch_352
        -0xa310e8a -> :sswitch_344
        -0x8efed14 -> :sswitch_336
        -0x8b4339f -> :sswitch_328
        -0x83a5383 -> :sswitch_31b
        -0x5ffb810 -> :sswitch_310
        -0x46f772e -> :sswitch_303
        -0x1a6e7d0 -> :sswitch_2f5
        0x30c072 -> :sswitch_2e8
        0x30cf41 -> :sswitch_2dc
        0x323b5e -> :sswitch_2ce
        0x363585 -> :sswitch_2c0
        0x547b9a4 -> :sswitch_2b3
        0x5a863a7 -> :sswitch_2a6
        0x68ac288 -> :sswitch_298
        0x68ac462 -> :sswitch_28a
        0x6c257df -> :sswitch_27c
        0x80c339b -> :sswitch_26e
        0xb07b013 -> :sswitch_263
        0xe24026e -> :sswitch_254
        0x1351184a -> :sswitch_246
        0x20c2801a -> :sswitch_23c
        0x251993ad -> :sswitch_22e
        0x276818de -> :sswitch_220
        0x27c1d6ad -> :sswitch_213
        0x2894b589 -> :sswitch_205
        0x2b19d394 -> :sswitch_1f7
        0x2d3e6e74 -> :sswitch_1ce
        0x2d9208a0 -> :sswitch_1c0
        0x2ea76694 -> :sswitch_1b2
        0x302bd54d -> :sswitch_1a4
        0x304b5275 -> :sswitch_196
        0x30b487aa -> :sswitch_189
        0x310633ae -> :sswitch_17b
        0x327f473e -> :sswitch_16e
        0x35abdbf4 -> :sswitch_163
        0x38a73b23 -> :sswitch_156
        0x3d13bd7d -> :sswitch_149
        0x3fd31549 -> :sswitch_13b
        0x404a0027 -> :sswitch_12e
        0x416a9e0f -> :sswitch_120
        0x434f294b -> :sswitch_112
        0x446526e2 -> :sswitch_104
        0x465c428a -> :sswitch_f6
        0x48b444b2 -> :sswitch_e9
        0x49b0bd5a -> :sswitch_db
        0x532d63e7 -> :sswitch_c9
        0x58e48bbf -> :sswitch_bb
        0x5c72a0b0 -> :sswitch_ae
        0x5e69b6b6 -> :sswitch_a0
        0x607e963c -> :sswitch_92
        0x63a518c2 -> :sswitch_85
        0x645ade2e -> :sswitch_77
        0x662425d6 -> :sswitch_69
        0x696c1ea0 -> :sswitch_5b
        0x6e6f530e -> :sswitch_4d
        0x6ef5269a -> :sswitch_40
        0x6f0f8fea -> :sswitch_35
        0x790e2324 -> :sswitch_28
        0x7c2bb6c4 -> :sswitch_17
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 4675
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4676
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final restrictionNameToLevel(Ljava/lang/String;)I
    .registers 4

    .line 4509
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 4510
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_88

    goto/16 :goto_6c

    :sswitch_12
    const-string p1, "exempted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_6c

    :cond_1b
    const/4 v1, 0x7

    goto :goto_6c

    :sswitch_1d
    const-string p1, "adaptive_bucket"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_6c

    :cond_26
    const/4 v1, 0x6

    goto :goto_6c

    :sswitch_28
    const-string/jumbo p1, "unrestricted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_6c

    :cond_32
    const/4 v1, 0x5

    goto :goto_6c

    :sswitch_34
    const-string p1, "background_restricted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_6c

    :cond_3d
    const/4 v1, 0x4

    goto :goto_6c

    :sswitch_3f
    const-string p1, "force_stopped"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_6c

    :cond_48
    const/4 v1, 0x3

    goto :goto_6c

    :sswitch_4a
    const-string p1, "custom"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto :goto_6c

    :cond_53
    const/4 v1, 0x2

    goto :goto_6c

    :sswitch_55
    const-string/jumbo p1, "restricted_bucket"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto :goto_6c

    :cond_5f
    const/4 v1, 0x1

    goto :goto_6c

    :sswitch_61
    const-string/jumbo p1, "user_launch_only"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v0

    :goto_6c
    packed-switch v1, :pswitch_data_aa

    return v0

    :pswitch_70
    const/16 p0, 0x14

    return p0

    :pswitch_73
    const/16 p0, 0x1e

    return p0

    :pswitch_76
    const/16 p0, 0xa

    return p0

    :pswitch_79
    const/16 p0, 0x32

    return p0

    :pswitch_7c
    const/16 p0, 0x3c

    return p0

    :pswitch_7f
    const/16 p0, 0x5a

    return p0

    :pswitch_82
    const/16 p0, 0x28

    return p0

    :pswitch_85
    const/16 p0, 0x46

    return p0

    :sswitch_data_88
    .sparse-switch
        -0x6ab801bc -> :sswitch_61
        -0x5990cdb2 -> :sswitch_55
        -0x5069748f -> :sswitch_4a
        -0x40475787 -> :sswitch_3f
        -0x2e385ff4 -> :sswitch_34
        0x31226bb4 -> :sswitch_28
        0x50905fd3 -> :sswitch_1d
        0x7a509cbe -> :sswitch_12
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
    .end packed-switch
.end method

.method public runAttachAgent(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3984
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3987
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3989
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 3990
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3993
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runBugReport(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 v0, 0x1

    .line 1925
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 1926
    const-string v0, "--progress"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1928
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V

    :goto_15
    move v0, v2

    goto :goto_1

    .line 1929
    :cond_17
    const-string v0, "--telephony"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1932
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Landroid/app/IActivityManager;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1934
    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_41
    if-eqz v0, :cond_48

    .line 1939
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V

    .line 1941
    :cond_48
    const-string p0, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public runCapabilities(Ljava/io/PrintWriter;)I
    .registers 10

    .line 529
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 533
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 534
    const-string v2, "--protobuf"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_6

    .line 537
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 541
    :cond_2c
    const-string/jumbo v0, "java.vm.name"

    const-string v3, "?"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    const-string/jumbo v4, "java.vm.version"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_b9

    .line 545
    new-instance v2, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v2}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    .line 546
    sget-object v4, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/server/am/nano/Capability;

    iput-object v4, v2, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    move v4, v1

    .line 547
    :goto_4b
    sget-object v5, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_60

    .line 548
    new-instance v6, Lcom/android/server/am/nano/Capability;

    invoke-direct {v6}, Lcom/android/server/am/nano/Capability;-><init>()V

    .line 549
    aget-object v5, v5, v4

    iput-object v5, v6, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    .line 550
    iget-object v5, v2, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 553
    :cond_60
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v4

    .line 554
    array-length v5, v4

    new-array v5, v5, [Lcom/android/server/am/nano/VMCapability;

    iput-object v5, v2, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    move v5, v1

    .line 555
    :goto_6a
    array-length v6, v4

    if-ge v5, v6, :cond_7d

    .line 556
    new-instance v6, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v6}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    .line 557
    aget-object v7, v4, v5

    iput-object v7, v6, Lcom/android/server/am/nano/VMCapability;->name:Ljava/lang/String;

    .line 558
    iget-object v7, v2, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 561
    :cond_7d
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    move-result-object v4

    .line 562
    array-length v5, v4

    new-array v5, v5, [Lcom/android/server/am/nano/FrameworkCapability;

    iput-object v5, v2, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    move v5, v1

    .line 563
    :goto_87
    array-length v6, v4

    if-ge v5, v6, :cond_9a

    .line 564
    new-instance v6, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v6}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    .line 565
    aget-object v7, v4, v5

    iput-object v7, v6, Lcom/android/server/am/nano/FrameworkCapability;->name:Ljava/lang/String;

    .line 566
    iget-object v7, v2, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 569
    :cond_9a
    new-instance v4, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v4}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    .line 570
    iput-object v0, v4, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    .line 571
    iput-object v3, v4, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    .line 572
    iput-object v4, v2, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 575
    :try_start_a5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {v2}, Lcom/android/server/am/nano/Capabilities;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b0} :catch_b2

    goto/16 :goto_139

    .line 577
    :catch_b2
    const-string p0, "Error while serializing capabilities protobuffer"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_139

    .line 583
    :cond_b9
    const-string p0, "Format: 2"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    sget-object p0, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    array-length v2, p0

    move v4, v1

    :goto_c2
    if-ge v4, v2, :cond_cc

    aget-object v5, p0, v4

    .line 585
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 587
    :cond_cc
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    move v4, v1

    :goto_d2
    if-ge v4, v2, :cond_ee

    aget-object v5, p0, v4

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d2

    .line 590
    :cond_ee
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    move v4, v1

    :goto_f4
    if-ge v4, v2, :cond_10f

    aget-object v5, p0, v4

    .line 591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "framework:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f4

    .line 593
    :cond_10f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vm_name:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "vm_version:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_139
    return v1
.end method

.method public runClearBadProcess(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 v0, -0x2

    move v1, v0

    .line 4641
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 4642
    const-string v1, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4643
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 4645
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4649
    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v0, :cond_3f

    .line 4651
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result v1

    .line 4654
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' in u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from bad processes list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4655
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/AppErrors;->clearBadProcessForUser(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runClearDebugApp(Ljava/io/PrintWriter;)I
    .registers 4

    .line 1832
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return v1
.end method

.method public runClearExitInfo(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1898
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v1, "runClearExitInfo()"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    move v0, p1

    .line 1902
    :goto_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3d

    .line 1903
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1904
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 1906
    :cond_24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_3d
    if-ne v0, p1, :cond_4a

    .line 1911
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_48

    return v2

    .line 1915
    :cond_48
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1917
    :cond_4a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->clearHistoryProcessExitInfo(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runClearIgnoreDeliveryGroupPolicy(Ljava/io/PrintWriter;)I
    .registers 2

    .line 4097
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 4098
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->clearIgnoreDeliveryGroupPolicy(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runClearRecentApps(Ljava/io/PrintWriter;)I
    .registers 2

    .line 1978
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V

    const/4 p0, 0x0

    return p0
.end method

.method public runClearStartInfo(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1850
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v1, "runClearStartInfo()"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    move v0, p1

    .line 1854
    :goto_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3d

    .line 1855
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1856
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 1858
    :cond_24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_3d
    if-ne v0, p1, :cond_4a

    .line 1863
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_48

    return v2

    .line 1867
    :cond_48
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1869
    :cond_4a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p1

    .line 1870
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->clearHistoryProcessStartInfo(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runClearWatchHeap(Ljava/io/PrintWriter;)I
    .registers 8

    .line 1844
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1845
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runCompact(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1286
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1287
    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1288
    const-string/jumbo v2, "some"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v1, :cond_e2

    if-eqz v2, :cond_18

    goto/16 :goto_e2

    .line 1313
    :cond_18
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1314
    const-string v0, "Executing system compaction"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1316
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactAllSystem()V

    .line 1317
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1318
    const-string p0, "Finished system compaction"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a5

    :catchall_42
    move-exception p0

    .line 1317
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1319
    :cond_48
    const-string/jumbo p1, "native"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 1320
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1321
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1322
    const-string/jumbo v1, "some"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1324
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1326
    :try_start_66
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6a} :catch_a6

    if-eqz v0, :cond_79

    .line 1332
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactNative(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    goto/16 :goto_1a5

    :cond_79
    if-eqz v1, :cond_88

    .line 1335
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactNative(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    goto/16 :goto_1a5

    .line 1338
    :cond_88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown compaction type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1328
    :catch_a6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: failed to parse \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' as a PID"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1342
    :cond_c4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown compact command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1290
    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f2

    .line 1292
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not find process"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1295
    :cond_f2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process record found pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v1, :cond_157

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing full compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1299
    :try_start_129
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->SHELL:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)Z

    .line 1302
    monitor-exit v1
    :try_end_137
    .catchall {:try_start_129 .. :try_end_137} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished full compaction for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a5

    :catchall_151
    move-exception p0

    .line 1302
    :try_start_152
    monitor-exit v1
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_157
    if-eqz v2, :cond_1a5

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing some compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1307
    :try_start_177
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->SHELL:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)Z

    .line 1310
    monitor-exit v1
    :try_end_185
    .catchall {:try_start_177 .. :try_end_185} :catchall_19f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished some compaction for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a5

    :catchall_19f
    move-exception p0

    .line 1310
    :try_start_1a0
    monitor-exit v1
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_1a5
    :goto_1a5
    const/4 p0, 0x0

    return p0
.end method

.method public final runCompat(Ljava/io/PrintWriter;)I
    .registers 22

    move-object/from16 v1, p1

    .line 4108
    const-string/jumbo v0, "platform_compat"

    .line 4109
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    .line 4110
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 4111
    const-string v3, "--no-kill"

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4116
    const-string v4, "-all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "\'."

    const-string/jumbo v7, "reset"

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    if-eqz v5, :cond_4b

    .line 4117
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4119
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_49

    .line 4121
    :try_start_39
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_41} :catch_43

    goto/16 :goto_b9

    .line 4123
    :catch_43
    const-string v0, "Invalid targetSdkVersion!"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_49
    move v4, v9

    goto :goto_b9

    .line 4127
    :cond_4b
    const-string/jumbo v4, "log-change-checks-to-statsd"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 4129
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 4130
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string/jumbo v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    goto :goto_71

    .line 4134
    :cond_6b
    const-string v0, "Invalid value for logging compat change checks to statsd."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 4131
    :cond_71
    :goto_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting log compat change checks to statsd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/PlatformCompat;->setLogChangeChecksToStatsd(Z)V

    return v8

    .line 4139
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 4141
    :try_start_91
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_95} :catch_96

    goto :goto_9a

    .line 4143
    :catch_96
    invoke-virtual {v0, v4}, Lcom/android/server/compat/PlatformCompat;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide v12

    :goto_9a
    cmp-long v5, v12, v10

    if-nez v5, :cond_b6

    .line 4146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or invalid change: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_b6
    move v5, v8

    move v4, v9

    move-wide v10, v12

    .line 4150
    :goto_b9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    if-nez v5, :cond_de

    .line 4151
    invoke-virtual {v0, v10, v11}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v13

    if-nez v13, :cond_de

    .line 4152
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Warning! Change "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " is not known yet. Enabling/disabling it could have no effect."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4155
    :cond_de
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 4156
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 4158
    :try_start_e8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v15
    :try_end_ec
    .catch Ljava/lang/SecurityException; {:try_start_e8 .. :try_end_ec} :catch_278

    move/from16 v16, v8

    const v8, -0x4d6ada7d

    move/from16 v17, v9

    const-string v9, " changes gated by targetSdkVersion "

    move/from16 v18, v3

    const-string v3, "."

    move/from16 v19, v5

    const-string v5, " for "

    if-eq v15, v8, :cond_1ee

    const v8, 0x6761d4f

    if-eq v15, v8, :cond_180

    const v7, 0x639e22e8

    if-eq v15, v7, :cond_10b

    goto/16 :goto_260

    :cond_10b
    :try_start_10b
    const-string v7, "disable"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_260

    if-eqz v19, :cond_148

    .line 4184
    invoke-virtual {v0, v12, v4}, Lcom/android/server/compat/PlatformCompat;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_124

    .line 4187
    const-string v0, "No changes were disabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17

    :catch_121
    move-exception v0

    goto/16 :goto_27b

    .line 4190
    :cond_124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabled "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17f

    .line 4193
    :cond_148
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4194
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v4, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v4, v13, v14}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v4}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    if-nez v18, :cond_15f

    .line 4198
    invoke-virtual {v0, v2, v12}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_162

    .line 4200
    :cond_15f
    invoke-virtual {v0, v2, v12}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 4202
    :goto_162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_17f
    return v16

    .line 4158
    :cond_180
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_184
    .catch Ljava/lang/SecurityException; {:try_start_10b .. :try_end_184} :catch_121

    if-eqz v4, :cond_260

    .line 4206
    const-string v2, " to default value."

    if-eqz v19, :cond_1ab

    if-nez v18, :cond_190

    .line 4208
    :try_start_18c
    invoke-virtual {v0, v12}, Lcom/android/server/compat/PlatformCompat;->clearOverrides(Ljava/lang/String;)V

    goto :goto_193

    .line 4210
    :cond_190
    invoke-virtual {v0, v12}, Lcom/android/server/compat/PlatformCompat;->clearOverridesForTest(Ljava/lang/String;)V

    .line 4212
    :goto_193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset all changes for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    :cond_1ab
    if-nez v18, :cond_1b2

    .line 4217
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/compat/PlatformCompat;->clearOverride(JLjava/lang/String;)Z

    move-result v0

    goto :goto_1b6

    .line 4219
    :cond_1b2
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/compat/PlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v0

    :goto_1b6
    if-eqz v0, :cond_1d6

    .line 4222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset change "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ed

    .line 4225
    :cond_1d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No override exists for changeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1ed
    return v16

    .line 4158
    :cond_1ee
    const-string v7, "enable"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_260

    if-eqz v19, :cond_228

    .line 4161
    invoke-virtual {v0, v12, v4}, Lcom/android/server/compat/PlatformCompat;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_204

    .line 4164
    const-string v0, "No changes were enabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17

    .line 4167
    :cond_204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabled "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25f

    .line 4170
    :cond_228
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4171
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v4, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v4, v13, v14}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v4}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    if-nez v18, :cond_23f

    .line 4175
    invoke-virtual {v0, v2, v12}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_242

    .line 4177
    :cond_23f
    invoke-virtual {v0, v2, v12}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 4179
    :goto_242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_25f
    return v16

    .line 4229
    :cond_260
    :goto_260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid toggle value: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_277
    .catch Ljava/lang/SecurityException; {:try_start_18c .. :try_end_277} :catch_121

    goto :goto_282

    :catch_278
    move-exception v0

    move/from16 v17, v9

    .line 4232
    :goto_27b
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_282
    return v17
.end method

.method public runCrash(Ljava/io/PrintWriter;)I
    .registers 13

    const/4 p1, -0x1

    move v0, p1

    .line 2004
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2005
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2006
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 2008
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 2015
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2018
    :try_start_36
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3a} :catch_3e

    const/4 v2, 0x0

    move v5, v1

    move-object v6, v2

    goto :goto_40

    :catch_3e
    move v5, p1

    move-object v6, v1

    :goto_40
    const/4 v1, 0x0

    if-ne v0, p1, :cond_4c

    .line 2023
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Lcom/android/server/am/UserController;->getUserIds()[I

    move-result-object p1

    goto :goto_51

    :cond_4c
    const/4 p1, 0x1

    .line 2024
    new-array p1, p1, [I

    aput v0, p1, v1

    .line 2025
    :goto_51
    array-length v0, p1

    move v2, v1

    :goto_53
    if-ge v2, v0, :cond_8b

    aget v7, p1, v2

    .line 2026
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {v3, v4, v7}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 2028
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shell does not have permission to crash packages for user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_88

    .line 2032
    :cond_7d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v4, -0x1

    const-string/jumbo v8, "shell-induced crash"

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_8b
    return v1
.end method

.method public runDisplay(Ljava/io/PrintWriter;)I
    .registers 4

    .line 3737
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3738
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3742
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3740
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .registers 3

    .line 3794
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 3795
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3796
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3797
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3798
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->moveRootTaskToDisplay(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public runDumpBitmaps(Ljava/io/PrintWriter;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1698
    const-string/jumbo v3, "w"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1706
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v4

    invoke-static {v4}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 1707
    sget-object v5, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    .line 1708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/local/tmp/dumpbitmaps-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".proto"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v13, v7

    move-object v14, v13

    move-object v15, v14

    .line 1712
    :goto_37
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_100

    .line 1713
    const-string v10, "--csv"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 1714
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".csv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_37

    .line 1715
    :cond_5b
    const-string v10, "-d"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e6

    const-string v10, "--dump"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    goto/16 :goto_e6

    .line 1718
    :cond_6d
    const-string v10, "-p"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 1719
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1720
    :cond_7d
    const-string v0, "-h"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "--help"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_a9

    .line 1735
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 1721
    :cond_a9
    :goto_a9
    const-string v0, "dumpbitmaps"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    const-string v0, "  [-h|--help] [--csv] [-d <format>] [-p <process>] [-p <process>] ..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const-string v0, "  -d <format>]: dump bitmaps in <format>, which can be one of"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    const-string v0, "                of png/jpg/webp, default to png. A zip file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    const-string v0, "                dumpbitmaps-<time>.zip will be created"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    const-string v0, "  --csv:        output bitmap information in csv format"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    const-string v0, "  -p <process>: specify process to dump bitmaps, multiple -p"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    const-string v0, "                can be used."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    const-string v0, "  -h|--help:    this help message."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string v0, "If no process is specified, bitmaps of all processes will"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    const-string v0, "be dumped"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 1716
    :cond_e6
    :goto_e6
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1717
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_37

    .line 1739
    :cond_100
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1742
    :goto_103
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10d

    .line 1743
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 1746
    :cond_10d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now dumping into "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1749
    :try_start_129
    invoke-virtual {v1, v5, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1750
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_138} :catch_145

    const/4 v12, 0x0

    const/4 v11, -0x2

    move v6, v9

    move-object v9, v4

    :try_start_13c
    invoke-interface/range {v8 .. v13}, Landroid/app/IActivityManager;->dumpBitmapsProto(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;IZLjava/lang/String;)V

    .line 1752
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_142} :catch_143

    goto :goto_15b

    :catch_143
    move-exception v0

    goto :goto_147

    :catch_145
    move-exception v0

    move v6, v9

    .line 1754
    :goto_147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    :goto_15b
    const-string v0, "dump done"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1762
    :try_start_163
    const-string/jumbo v0, "r"

    invoke-virtual {v1, v5, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 1763
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    .line 1764
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz v14, :cond_199

    .line 1770
    invoke-virtual {v1, v14, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1771
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x8

    .line 1772
    invoke-virtual {v5, v9}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 1773
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    move-object v9, v4

    goto :goto_19b

    :catch_196
    move-exception v0

    goto/16 :goto_203

    :cond_199
    move-object v5, v7

    move-object v9, v5

    :goto_19b
    if-eqz v15, :cond_1b2

    .line 1779
    invoke-virtual {v1, v15, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 1780
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v1

    :goto_1b0
    move-object v1, v0

    goto :goto_1b4

    :cond_1b2
    move-object v4, v7

    goto :goto_1b0

    .line 1783
    :goto_1b4
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;

    move-object v3, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;-><init>(Landroid/util/proto/ProtoInputStream;Ljava/io/PrintWriter;Ljava/util/zip/ZipOutputStream;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    move-object v13, v5

    .line 1784
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->unpack()V

    if-eqz v3, :cond_1e3

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All bitmaps dumped as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " files in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1788
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1e3
    if-eqz v4, :cond_1ff

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap information stored in csv file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 1793
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1795
    :cond_1ff
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_202
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_202} :catch_196

    goto :goto_217

    .line 1797
    :goto_203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    :goto_217
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    return v6
.end method

.method public runDumpHeap(Ljava/io/PrintWriter;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1428
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x2

    move v10, v3

    move-object v13, v5

    move v9, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1436
    :cond_10
    :goto_10
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_74

    .line 1437
    const-string v8, "--user"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 1438
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_10

    .line 1440
    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 1443
    :cond_2f
    const-string v8, "-n"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    :goto_37
    const/4 v10, 0x0

    goto :goto_10

    .line 1445
    :cond_39
    const-string v8, "-g"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    move v12, v3

    goto :goto_10

    .line 1447
    :cond_43
    const-string v8, "-m"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    move v11, v3

    goto :goto_37

    .line 1450
    :cond_4d
    const-string v8, "-b"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 1451
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_10

    .line 1453
    const-string/jumbo v13, "png"

    goto :goto_10

    .line 1456
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 1460
    :cond_74
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 1461
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a2

    .line 1463
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v6

    invoke-static {v6}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 1464
    sget-object v14, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v14, v6}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v6

    .line 1465
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/local/tmp/heapdump-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".prof"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a2
    move-object v14, v6

    .line 1468
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_af

    .line 1470
    const-string v0, "Error: Arguments cannot be placed after the heap file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 1475
    :cond_af
    const-string/jumbo v6, "w"

    invoke-virtual {v0, v14, v6}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    if-nez v15, :cond_b9

    return v7

    .line 1480
    :cond_b9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    const-string v4, "File: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1483
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1485
    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v6, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v6, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 1492
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move/from16 v16, v7

    move-object v7, v0

    move/from16 v0, v16

    move-object/from16 v16, v3

    invoke-interface/range {v7 .. v16}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_105

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEAP DUMP FAILED on process "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 1497
    :cond_105
    const-string v0, "Waiting for dump to finish..."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1500
    :try_start_10d
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_116

    .line 1502
    :catch_111
    const-string v0, "Caught InterruptedException"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_116
    return v17
.end method

.method public runFgsNotificationRateLimit(Ljava/io/PrintWriter;)I
    .registers 4

    .line 1983
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1985
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v1

    goto :goto_23

    .line 1993
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument must be either \'enable\' or \'disable\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    const/4 p1, 0x1

    .line 1996
    :goto_23
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->enableFgsNotificationRateLimit(Z)Z

    return v1
.end method

.method public runForceStop(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    move v0, p1

    .line 1949
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1950
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1951
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1953
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 1957
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runFreeze(Ljava/io/PrintWriter;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1351
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1355
    const-string v2, "--sticky"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1357
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    if-eqz p2, :cond_1c

    .line 1361
    const-string v3, "Freezing"

    goto :goto_1e

    :cond_1c
    const-string v3, "Unfreezing"

    :goto_1e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") sticky="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1365
    :try_start_5b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_89

    .line 1366
    :try_start_63
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeSticky(Z)V

    if-eqz p2, :cond_76

    .line 1368
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/am/CachedAppOptimizer;->forceFreezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_80

    :catchall_74
    move-exception p0

    goto :goto_8b

    .line 1370
    :cond_76
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 1372
    :goto_80
    monitor-exit v3
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_74

    :try_start_81
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1373
    monitor-exit p1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_89
    move-exception p0

    goto :goto_90

    .line 1372
    :goto_8b
    :try_start_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_74

    :try_start_8c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1373
    :goto_90
    monitor-exit p1
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public runGetBgRestrictionLevel(Ljava/io/PrintWriter;)I
    .registers 4

    const/4 v0, -0x2

    .line 4570
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 4571
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4572
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 4574
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4578
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 4579
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 4580
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService;->getBackgroundRestrictionLevel(Ljava/lang/String;I)I

    move-result p0

    .line 4581
    invoke-static {p0}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runGetConfig(Ljava/io/PrintWriter;)I
    .registers 16

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v5, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 3474
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_62

    .line 3475
    const-string v7, "--days"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 3476
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1f

    goto :goto_6

    .line 3478
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "--days must be a positive integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3480
    :cond_27
    const-string v7, "--proto"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_32

    move v3, v8

    goto :goto_6

    .line 3482
    :cond_32
    const-string v7, "--device"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    move v4, v8

    goto :goto_6

    .line 3484
    :cond_3c
    const-string v2, "--display"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3485
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getDisplayIdFromNextArg()I

    move-result v2

    goto :goto_6

    .line 3487
    :cond_49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 3492
    :cond_62
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    if-nez v12, :cond_74

    .line 3494
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Activity manager has no configuration"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 3498
    :cond_74
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 3499
    invoke-virtual {v6, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    if-nez v6, :cond_9f

    .line 3502
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Display does not exist: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 3506
    :cond_9f
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3507
    invoke-virtual {v6, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v3, :cond_cb

    .line 3510
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v8, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v2, 0x10b00000001L

    .line 3511
    invoke-virtual {v12, v8, v2, v3, v13}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    if-eqz v4, :cond_c6

    const-wide v9, 0x10b00000002L

    const/4 v11, 0x0

    move-object v7, p0

    .line 3513
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3515
    :cond_c6
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_141

    :cond_cb
    move-object v7, p0

    .line 3517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "config: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "abi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_10a

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v11, p1

    .line 3520
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_10b

    :cond_10a
    move-object v11, p1

    :goto_10b
    if-ltz v5, :cond_141

    .line 3524
    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object p0

    .line 3525
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_141

    .line 3527
    const-string/jumbo v0, "recentConfigs:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_11e
    if-ge v0, p1, :cond_141

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3530
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    .line 3529
    invoke-static {v3}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11e

    :cond_141
    :goto_141
    return v1
.end method

.method public final runGetCurrentForegroundProcess(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)I
    .registers 7

    .line 4240
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;-><init>(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)V

    .line 4241
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4243
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 4244
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 4245
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4248
    :goto_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 4250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_23

    goto :goto_4f

    .line 4252
    :cond_23
    const-string/jumbo v2, "q"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string/jumbo v2, "quit"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_57

    .line 4255
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4258
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    :goto_4f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_52} :catch_55
    .catchall {:try_start_16 .. :try_end_52} :catchall_53

    goto :goto_16

    :catchall_53
    move-exception p0

    goto :goto_64

    :catch_55
    move-exception p0

    goto :goto_5b

    .line 4266
    :cond_57
    :goto_57
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_62

    .line 4263
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 4264
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_53

    goto :goto_57

    :goto_62
    const/4 p0, 0x0

    return p0

    .line 4266
    :goto_64
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4267
    throw p0
.end method

.method public runGetCurrentUser(Ljava/io/PrintWriter;)I
    .registers 3

    .line 2898
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_f

    .line 2902
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0

    .line 2900
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Current user not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runGetInactive(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 v0, -0x2

    .line 3663
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 3664
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3665
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3667
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3671
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 3673
    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 3675
    const-string v2, "com.android.shell"

    invoke-interface {v1, p0, v0, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetIsolatedProcesses(Ljava/io/PrintWriter;)I
    .registers 6

    .line 4413
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getIsolatedProcesses()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4415
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 4416
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 4415
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object p0

    .line 4417
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 4419
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_26
    if-ge v2, v1, :cond_39

    if-lez v2, :cond_2f

    .line 4421
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4423
    :cond_2f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 4426
    :cond_39
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 v0, -0x2

    .line 3633
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 3634
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3635
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3637
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3641
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    .line 3643
    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    if-eqz p0, :cond_4c

    const/4 v2, 0x0

    .line 3646
    invoke-interface {v1, p0, v2, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 3647
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_76

    .line 3649
    :cond_4c
    const-string p0, "com.android.shell"

    invoke-interface {v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 3651
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/AppStandbyInfo;

    .line 3652
    iget-object v1, v0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3653
    iget v0, v0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5a

    :cond_76
    :goto_76
    const/4 p0, 0x0

    return p0
.end method

.method public runGetStartedUserState(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3131
    :try_start_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_30

    .line 3133
    :catch_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is not started: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    const/4 p0, 0x0

    return p0
.end method

.method public runHang(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 2725
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 2726
    const-string v1, "--allow-restart"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_2

    .line 2729
    :cond_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2734
    :cond_2d
    const-string v2, "Hanging the system..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 2737
    :try_start_35
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_42} :catch_43

    return v0

    .line 2739
    :catch_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hanging failed, since caller "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " did not provide a ShellCallback!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v3
.end method

.method public runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 4

    .line 2762
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2763
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2767
    :cond_20
    const-string v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 2769
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->performIdleMaintenance()V

    const/4 p0, 0x0

    return p0
.end method

.method public runIsUserStopped(Ljava/io/PrintWriter;)I
    .registers 3

    .line 3108
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 3109
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result p0

    .line 3110
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runKill(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    move v0, p1

    .line 2042
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2043
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2044
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 2046
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 2050
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runKillAll(Ljava/io/PrintWriter;)I
    .registers 2

    .line 2055
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runListBgExemptionsConfig(Ljava/io/PrintWriter;)I
    .registers 6

    .line 4496
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 4499
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_21

    .line 4500
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 4501
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4503
    :cond_21
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_24
    return v0
.end method

.method public runListDisplaysForStartingUsers(Ljava/io/PrintWriter;)I
    .registers 3

    .line 4630
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object p0

    if-eqz p0, :cond_11

    .line 4632
    array-length v0, p0

    if-nez v0, :cond_c

    goto :goto_11

    .line 4634
    :cond_c
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    .line 4633
    :cond_11
    :goto_11
    const-string/jumbo p0, "none"

    .line 4632
    :goto_14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runLogoutUser(Ljava/io/PrintWriter;)I
    .registers 4

    .line 3115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_11

    .line 3117
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result p1

    .line 3119
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->logoutUser(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 3120
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to logout user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public runMakeIdle(Ljava/io/PrintWriter;)I
    .registers 5

    const/4 p1, -0x1

    move v0, p1

    .line 2063
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2064
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2065
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 2067
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 2071
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 5

    .line 4373
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runMemoryFactor()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4377
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_6e

    :goto_19
    move v1, v2

    goto :goto_3e

    :sswitch_1b
    const-string/jumbo v1, "reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_19

    :cond_25
    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_27
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_19

    :cond_31
    const/4 v1, 0x1

    goto :goto_3e

    :sswitch_33
    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_19

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    packed-switch v1, :pswitch_data_7c

    .line 4385
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 4383
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runResetMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 4381
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runShowMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 4379
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_6e
    .sparse-switch
        0x1bc62 -> :sswitch_33
        0x35dafd -> :sswitch_27
        0x6761d4f -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
    .end packed-switch
.end method

.method public runMonitor(Ljava/io/PrintWriter;)I
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    move-object v9, v6

    move v7, v1

    move v8, v7

    move v10, v8

    move v11, v10

    .line 2485
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_6b

    .line 2486
    const-string v3, "--gdb"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2487
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 2488
    :cond_1c
    const-string v3, "-p"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2489
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 2490
    :cond_29
    const-string v3, "-m"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_34

    move v7, v4

    goto :goto_8

    .line 2492
    :cond_34
    const-string v3, "-s"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    move v8, v4

    goto :goto_8

    .line 2494
    :cond_3e
    const-string v3, "-c"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    move v10, v4

    goto :goto_8

    .line 2496
    :cond_48
    const-string v3, "-k"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    move v11, v4

    goto :goto_8

    .line 2499
    :cond_52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_6b
    if-eqz v10, :cond_79

    if-eqz v11, :cond_79

    .line 2504
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: -k and -c options can\'t be used together."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2508
    :cond_79
    new-instance v2, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 2509
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 2511
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    return v1
.end method

.method public runNoHomeScreen(Ljava/io/PrintWriter;)I
    .registers 3

    .line 4029
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const v0, 0x111021f

    .line 4033
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runPackageImportance(Ljava/io/PrintWriter;)I
    .registers 4

    .line 2799
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2800
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v1, "com.android.shell"

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 2801
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runProfile(Ljava/io/PrintWriter;)I
    .registers 30

    move-object/from16 v0, p0

    .line 1167
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    .line 1172
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 1173
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 1174
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 1175
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mLongRunningMethods:Z

    const-wide/16 v3, 0x0

    .line 1176
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDurationMicros:J

    const/4 v3, 0x1

    .line 1177
    iput v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 1181
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1183
    const-string/jumbo v5, "start"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Error: Unknown option: "

    const-string v8, "--user"

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-eqz v6, :cond_9f

    .line 1186
    :goto_29
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_95

    .line 1187
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1188
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_29

    .line 1189
    :cond_3e
    const-string v5, "--clock-type"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1190
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1191
    invoke-static {v4}, Landroid/app/ProfilerInfo;->getClockTypeFromString(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    goto :goto_29

    .line 1192
    :cond_51
    const-string v5, "--profiler-output-version"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1193
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    goto :goto_29

    .line 1194
    :cond_64
    const-string v5, "--streaming"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1195
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_29

    .line 1196
    :cond_6f
    const-string v5, "--sampling"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1197
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_29

    .line 1199
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 1203
    :cond_95
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    :goto_99
    move v14, v3

    move-object v12, v4

    move v13, v10

    move v4, v2

    goto/16 :goto_141

    .line 1204
    :cond_9f
    const-string/jumbo v6, "stop"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_da

    .line 1206
    :goto_a8
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d0

    .line 1207
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 1208
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_a8

    .line 1210
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 1214
    :cond_d0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    :goto_d4
    move v14, v2

    move-object v12, v4

    move v13, v10

    move v4, v14

    goto/16 :goto_141

    .line 1215
    :cond_da
    const-string/jumbo v7, "lowoverhead"

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12e

    .line 1218
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1219
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1222
    :cond_ed
    :goto_ed
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_114

    .line 1223
    const-string v5, "--longrunning"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 1224
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mLongRunningMethods:Z

    goto :goto_ed

    .line 1225
    :cond_fe
    const-string v5, "--duration"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 1228
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDurationMicros:J

    goto :goto_ed

    :cond_114
    move v4, v3

    goto :goto_11d

    .line 1231
    :cond_116
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_126

    move v4, v2

    .line 1236
    :goto_11d
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    move v14, v4

    move-object v12, v5

    move v13, v10

    move v4, v3

    goto :goto_141

    .line 1234
    :cond_126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profile command not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_12e
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 1241
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13a

    goto/16 :goto_99

    .line 1243
    :cond_13a
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bd

    goto :goto_d4

    :goto_141
    if-ne v13, v9, :cond_149

    .line 1249
    const-string v0, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_149
    if-nez v4, :cond_14d

    if-nez v14, :cond_159

    :cond_14d
    if-ne v4, v3, :cond_158

    if-nez v14, :cond_158

    .line 1261
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v5

    if-lez v5, :cond_158

    goto :goto_159

    :cond_158
    move v3, v2

    :cond_159
    :goto_159
    const/4 v5, 0x0

    if-eqz v3, :cond_16f

    .line 1263
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1264
    const-string/jumbo v7, "w"

    invoke-virtual {v0, v6, v7}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_16a

    return v9

    :cond_16a
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_173

    :cond_16f
    move-object/from16 v16, v5

    move-object/from16 v17, v16

    :goto_173
    if-nez v14, :cond_17a

    if-eqz v3, :cond_178

    goto :goto_17a

    :cond_178
    move-object v15, v5

    goto :goto_19d

    .line 1271
    :cond_17a
    :goto_17a
    new-instance v15, Landroid/app/ProfilerInfo;

    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    iget-boolean v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mLongRunningMethods:Z

    iget-wide v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDurationMicros:J

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v18, v3

    move/from16 v20, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-wide/from16 v26, v10

    invoke-direct/range {v15 .. v27}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZIIZJ)V

    .line 1276
    :goto_19d
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move/from16 v16, v4

    invoke-interface/range {v11 .. v16}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROFILE FAILED on process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_1bc
    return v2

    .line 1244
    :cond_1bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runRefreshSettingsCache()I
    .registers 1

    .line 4103
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->refreshSettingsCache()V

    const/4 p0, 0x0

    return p0
.end method

.method public runResetDropboxRateLimiter()I
    .registers 1

    .line 4625
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->resetDropboxRateLimiter()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runResetMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 2

    .line 4368
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runRestart(Ljava/io/PrintWriter;)I
    .registers 4

    .line 2749
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2750
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2754
    :cond_20
    const-string v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 2756
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->restart()V

    const/4 p0, 0x0

    return p0
.end method

.method public runRootTaskInfo(Ljava/io/PrintWriter;)I
    .registers 4

    .line 3831
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3832
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3833
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    .line 3834
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runRootTaskRemove(Ljava/io/PrintWriter;)I
    .registers 2

    .line 3839
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 3840
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3841
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public runScreenCompat(Ljava/io/PrintWriter;)I
    .registers 5

    .line 2774
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2776
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    move v0, p1

    goto :goto_1b

    .line 2778
    :cond_11
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    .line 2785
    :goto_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2788
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, p1, v0}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_24

    .line 2793
    :catch_24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    return v1

    .line 2781
    :cond_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runSendBroadcast(Ljava/io/PrintWriter;)I
    .registers 25

    move-object/from16 v0, p0

    .line 1072
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Landroid/util/TeeWriter;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Writer;

    sget-object v4, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, -0x2

    .line 1075
    :try_start_18
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v9
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_1c} :catch_88

    const/high16 v2, 0x400000

    .line 1079
    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1080
    new-instance v11, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v11, v1}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    .line 1081
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    move-object v15, v3

    goto :goto_32

    .line 1082
    :cond_2d
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v5

    move-object v15, v4

    .line 1083
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1085
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    if-nez v1, :cond_50

    :goto_4d
    move-object/from16 v19, v3

    goto :goto_55

    :cond_50
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_4d

    .line 1086
    :goto_55
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/16 v21, 0x0

    iget v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v20, 0x1

    move/from16 v22, v1

    invoke-interface/range {v6 .. v22}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v1

    .line 1089
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v9, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ActivityManager"

    const-string v4, "Enqueued broadcast %s: %d"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_87

    .line 1090
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    if-nez v0, :cond_87

    .line 1091
    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    :cond_87
    return v5

    :catch_88
    move-exception v0

    .line 1077
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public runSendTrimMemory(Ljava/io/PrintWriter;)I
    .registers 8

    const/4 p1, -0x2

    .line 3683
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3d

    .line 3684
    const-string p1, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 3685
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 3687
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Can\'t use user \'all\'"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 3691
    :cond_24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 3696
    :cond_3d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3697
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 3699
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_e4

    :goto_51
    move v3, v1

    goto :goto_9f

    :sswitch_53
    const-string v3, "HIDDEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_51

    :cond_5c
    const/4 v3, 0x6

    goto :goto_9f

    :sswitch_5e
    const-string v3, "RUNNING_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    goto :goto_51

    :cond_67
    move v3, v4

    goto :goto_9f

    :sswitch_69
    const-string v3, "COMPLETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto :goto_51

    :cond_72
    const/4 v3, 0x4

    goto :goto_9f

    :sswitch_74
    const-string v3, "MODERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto :goto_51

    :cond_7d
    const/4 v3, 0x3

    goto :goto_9f

    :sswitch_7f
    const-string v3, "RUNNING_MODERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_51

    :cond_88
    const/4 v3, 0x2

    goto :goto_9f

    :sswitch_8a
    const-string v3, "BACKGROUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto :goto_51

    :cond_93
    const/4 v3, 0x1

    goto :goto_9f

    :sswitch_95
    const-string v3, "RUNNING_CRITICAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto :goto_51

    :cond_9e
    move v3, v5

    :goto_9f
    packed-switch v3, :pswitch_data_102

    .line 3723
    :try_start_a2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_a6} :catch_a7

    goto :goto_d1

    .line 3725
    :catch_a7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown level option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_c0
    const/16 v4, 0x14

    goto :goto_d1

    :pswitch_c3
    const/16 v4, 0xa

    goto :goto_d1

    :pswitch_c6
    const/16 v4, 0x50

    goto :goto_d1

    :pswitch_c9
    const/16 v4, 0x3c

    goto :goto_d1

    :pswitch_cc
    const/16 v4, 0x28

    goto :goto_d1

    :pswitch_cf
    const/16 v4, 0xf

    .line 3729
    :goto_d1
    :pswitch_d1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, p1, v4}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_e3

    .line 3730
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Unknown error: failed to set trim level"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_e3
    return v5

    :sswitch_data_e4
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_95
        -0x327dbed2 -> :sswitch_8a
        -0xd10205d -> :sswitch_7f
        0x9c2ed03 -> :sswitch_74
        0xaeb2139 -> :sswitch_69
        0x3fef1094 -> :sswitch_5e
        0x7f0191aa -> :sswitch_53
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_cc
        :pswitch_d1
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
    .end packed-switch
.end method

.method public final runServiceRestartBackoff(Ljava/io/PrintWriter;)I
    .registers 8

    .line 4391
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_PROCESS_LIMIT"

    const-string/jumbo v2, "runServiceRestartBackoff()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4394
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4395
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_8c

    :goto_1b
    move v1, v4

    goto :goto_3e

    :sswitch_1d
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_28
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_1b

    :cond_32
    move v1, v2

    goto :goto_3e

    :sswitch_34
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_1b

    :cond_3d
    move v1, v3

    .line 4407
    :goto_3e
    const-string/jumbo v5, "shell"

    packed-switch v1, :pswitch_data_9a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 4400
    :pswitch_62
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3, v5}, Lcom/android/server/am/ActivityManagerService;->setServiceRestartBackoffEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    return v3

    .line 4403
    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->isServiceRestartBackoffEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 4404
    const-string p0, "enabled"

    goto :goto_7d

    :cond_7b
    const-string p0, "disabled"

    .line 4403
    :goto_7d
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 4397
    :pswitch_81
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setServiceRestartBackoffEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    return v3

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x4d6ada7d -> :sswitch_34
        0x35dafd -> :sswitch_28
        0x639e22e8 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_81
        :pswitch_6c
        :pswitch_62
    .end packed-switch
.end method

.method public runSetAgentApp(Ljava/io/PrintWriter;)I
    .registers 3

    .line 1825
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1826
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1827
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSetAppZygotePreloadTimeout(Ljava/io/PrintWriter;)I
    .registers 2

    .line 520
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 521
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 523
    invoke-static {p0}, Landroid/os/ZygoteProcess;->setAppZygotePreloadTimeout(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetBgAbusiveUids(Ljava/io/PrintWriter;)I
    .registers 14

    .line 4455
    const-string p1, "Malformed input"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4456
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const-class v2, Lcom/android/server/am/AppBatteryTracker;

    .line 4457
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRestrictionController;->getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    const/4 v2, -0x1

    if-nez v1, :cond_1f

    .line 4459
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Unable to get bg battery tracker"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_1f
    const/4 v3, 0x0

    if-nez v0, :cond_26

    .line 4463
    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker;->clearDebugUidPercentage()V

    return v3

    .line 4466
    :cond_26
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4467
    array-length v4, v0

    new-array v4, v4, [I

    .line 4468
    array-length v5, v0

    new-array v5, v5, [[D

    move v6, v3

    .line 4470
    :goto_33
    :try_start_33
    array-length v7, v0

    if-ge v6, v7, :cond_80

    .line 4471
    aget-object v7, v0, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4472
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4a

    .line 4473
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 4476
    :cond_4a
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v6

    const/4 v8, 0x1

    .line 4477
    aget-object v7, v7, v8

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4478
    array-length v8, v7

    const/4 v9, 0x5

    if-eq v8, v9, :cond_67

    .line 4479
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 4482
    :cond_67
    array-length v8, v7

    new-array v8, v8, [D

    aput-object v8, v5, v6

    move v8, v3

    .line 4483
    :goto_6d
    array-length v9, v7

    if-ge v8, v9, :cond_7d

    .line 4484
    aget-object v9, v5, v6

    aget-object v10, v7, v8

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v9, v8
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_7a} :catch_84

    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 4491
    :cond_80
    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->setDebugUidPercentage([I[[D)V

    return v3

    .line 4488
    :catch_84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public runSetBgRestrictionLevel(Ljava/io/PrintWriter;)I
    .registers 10

    const/4 v0, -0x2

    move v4, v0

    .line 4536
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_33

    .line 4537
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4538
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 4540
    :cond_1a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 4544
    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 4545
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4546
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->restrictionNameToLevel(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_47

    .line 4548
    const-string p0, "Error: invalid restriction level"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 4554
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/32 v6, 0x400000

    .line 4556
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 4555
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v3
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_5a} :catch_64

    .line 4561
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/16 v6, 0x400

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->setBackgroundRestrictionLevel(Ljava/lang/String;IIIII)V

    const/4 p0, 0x0

    return p0

    .line 4558
    :catch_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: userId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public runSetDebugApp(Ljava/io/PrintWriter;)I
    .registers 7

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 1808
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 1809
    const-string v3, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_14

    move v0, v4

    goto :goto_3

    .line 1811
    :cond_14
    const-string v1, "--persistent"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v4

    goto :goto_3

    .line 1814
    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1819
    :cond_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1820
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v2, v0, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return p1
.end method

.method public runSetDeterministicUidIdle(Ljava/io/PrintWriter;)I
    .registers 4

    .line 2079
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 2080
    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2081
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    goto :goto_0

    .line 2083
    :cond_16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2087
    :cond_30
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2088
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->setDeterministicUidIdle(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSetForegroundServiceDelegate(Ljava/io/PrintWriter;)I
    .registers 12

    const/4 v0, -0x2

    .line 4589
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_32

    .line 4590
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4591
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 4593
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 4597
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 4598
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 4600
    const-string/jumbo v3, "start"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_47

    const/4 v1, 0x1

    move v6, v1

    goto :goto_51

    .line 4602
    :cond_47
    const-string/jumbo v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    move v6, v9

    .line 4611
    :goto_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v7, 0x400000

    .line 4613
    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 4612
    invoke-virtual {v1, v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v5
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_64} :catch_6e

    .line 4618
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/16 v7, 0xc

    const-string v8, "FgsDelegate"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->setForegroundServiceDelegate(Ljava/lang/String;IZILjava/lang/String;)V

    return v9

    .line 4615
    :catch_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: userId:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 4605
    :cond_90
    const-string p0, "Error: action is either start or stop"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public runSetIgnoreDeliveryGroupPolicy(Ljava/io/PrintWriter;)I
    .registers 2

    .line 4091
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 4092
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setIgnoreDeliveryGroupPolicy(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSetInactive(Ljava/io/PrintWriter;)I
    .registers 4

    const/4 p1, -0x2

    .line 3549
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 3550
    const-string p1, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3551
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 3553
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3557
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3558
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 3560
    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 3562
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v1, v0, p0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSetMediaForegroundService(Ljava/io/PrintWriter;)I
    .registers 8

    .line 473
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    const-string/jumbo v1, "runSetMediaForegroundService()"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 484
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 485
    const-string v1, "inactive"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_39

    const-string v2, "active"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_39

    .line 515
    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown set-media-foreground-service command: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_39
    :goto_39
    const/4 v2, -0x2

    .line 487
    :cond_3a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 488
    const-string v2, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 489
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3a

    .line 491
    const-string p0, "Error: Can\'t set media fgs with user \'all\'"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 496
    :cond_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 500
    :cond_6d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_81

    .line 503
    const-string p0, "Error: notification id cannot be zero"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 506
    :cond_81
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 507
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v4, v2, v5}, Landroid/app/ActivityManagerInternal;->notifyInactiveMediaForegroundService(Ljava/lang/String;II)V

    goto :goto_96

    .line 510
    :cond_8f
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v4, v2, v5}, Landroid/app/ActivityManagerInternal;->notifyActiveMediaForegroundService(Ljava/lang/String;II)V

    :goto_96
    const/4 p0, 0x0

    return p0
.end method

.method public final runSetMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 8

    .line 4315
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 4317
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_72

    :goto_13
    move v0, v5

    goto :goto_40

    :sswitch_15
    const-string v0, "MODERATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_13

    :cond_1e
    move v0, v4

    goto :goto_40

    :sswitch_20
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_13

    :cond_29
    move v0, v1

    goto :goto_40

    :sswitch_2b
    const-string v0, "CRITICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_13

    :cond_34
    move v0, v2

    goto :goto_40

    :sswitch_36
    const-string v0, "NORMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_13

    :cond_3f
    move v0, v3

    :goto_40
    packed-switch v0, :pswitch_data_84

    .line 4332
    :try_start_43
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_47} :catch_49

    move v1, v0

    goto :goto_4a

    :catch_49
    move v1, v5

    :goto_4a
    if-ltz v1, :cond_4e

    if-le v1, v4, :cond_6c

    .line 4336
    :cond_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown level option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_67
    move v1, v2

    goto :goto_6c

    :pswitch_69
    move v1, v4

    goto :goto_6c

    :pswitch_6b
    move v1, v3

    .line 4340
    :cond_6c
    :goto_6c
    :pswitch_6c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    return v3

    :sswitch_data_72
    .sparse-switch
        -0x76664f19 -> :sswitch_36
        -0x5cfe9861 -> :sswitch_2b
        0x12734 -> :sswitch_20
        0x9c2ed03 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_69
        :pswitch_6c
        :pswitch_67
    .end packed-switch
.end method

.method public runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 8

    const/4 p1, -0x2

    .line 3595
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_32

    .line 3596
    const-string p1, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3597
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 3599
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 3603
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3604
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 3605
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_41

    return v1

    .line 3607
    :cond_41
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    move v1, v4

    .line 3610
    :goto_4b
    const-string/jumbo v5, "usagestats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v5

    if-nez v1, :cond_60

    .line 3613
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v5, v0, p0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_8f

    .line 3615
    :cond_60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3616
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v2, v0, v3}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3617
    :goto_6d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 3618
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 3619
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7e

    goto :goto_6d

    .line 3621
    :cond_7e
    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v3, v0, v2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 3623
    :cond_87
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 3624
    invoke-interface {v5, p0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    :goto_8f
    return v4
.end method

.method public final runSetStopUserOnSwitch(Ljava/io/PrintWriter;)I
    .registers 7

    .line 4431
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "setStopUserOnSwitch()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4434
    const-string v2, "ActivityManager"

    if-nez v0, :cond_25

    .line 4435
    const-string/jumbo v0, "setStopUserOnSwitch(): resetting to default value"

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 4437
    const-string p0, "Reset to default value"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 4441
    :cond_25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "runSetStopUserOnSwitch(): setting to %d (%b)"

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4447
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 4448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public runSetWatchHeap(Ljava/io/PrintWriter;)I
    .registers 8

    .line 1837
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1838
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1839
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runShowMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 3

    .line 4345
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2d

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    goto :goto_32

    .line 4360
    :cond_15
    const-string p0, "CRITICAL"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 4357
    :cond_1b
    const-string p0, "LOW"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 4354
    :cond_21
    const-string p0, "MODERATE"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 4351
    :cond_27
    const-string p0, "NORMAL"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 4348
    :cond_2d
    const-string p0, "<UNKNOWN>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    :goto_32
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x0

    return p0
.end method

.method public runStack(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3748
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3749
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_74

    :goto_f
    move v1, v2

    goto :goto_3f

    :sswitch_11
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v1, 0x3

    goto :goto_3f

    :sswitch_1d
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_f

    :cond_27
    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_29
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_f

    :cond_32
    const/4 v1, 0x1

    goto :goto_3f

    :sswitch_34
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    packed-switch v1, :pswitch_data_86

    .line 3759
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3751
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3753
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3755
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runRootTaskInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3757
    :pswitch_6f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runRootTaskRemove(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_74
    .sparse-switch
        -0x37b5077c -> :sswitch_34
        0x3164ae -> :sswitch_29
        0x32b09e -> :sswitch_1d
        0x3ceed601 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6a
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method public runStackList(Ljava/io/PrintWriter;)I
    .registers 3

    .line 3823
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object p0

    .line 3824
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 3825
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public runStackMoveTask(Ljava/io/PrintWriter;)I
    .registers 6

    .line 3803
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 3804
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3805
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3806
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3807
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3809
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    goto :goto_29

    .line 3811
    :cond_20
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v1, v3

    .line 3818
    :goto_29
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V

    return v3

    .line 3814
    :cond_2f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: bad toTop arg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runStartActivity(Ljava/io/PrintWriter;)I
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x2

    .line 755
    :try_start_5
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v7
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_389

    .line 760
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v2, v9, :cond_19

    .line 761
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 765
    :cond_19
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 768
    :goto_21
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_cf

    .line 770
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 771
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v7

    goto :goto_92

    .line 774
    :cond_36
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    iget v15, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v18, "ActivityManagerShellCommand"

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 774
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 777
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    move-object v4, v7

    const-wide/16 v6, 0x0

    move-object v5, v8

    move v8, v2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    move-object v8, v5

    .line 778
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b6

    .line 779
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_69

    goto :goto_b6

    .line 783
    :cond_69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v10, :cond_88

    .line 784
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 789
    :cond_88
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 791
    :goto_92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 793
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v2, v5}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-wide/16 v2, 0xfa

    .line 795
    :try_start_b2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_b5} :catch_d0

    goto :goto_d0

    .line 780
    :cond_b6
    :goto_b6
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Intent does not match any activities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_cf
    move-object v4, v7

    .line 802
    :catch_d0
    :goto_d0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const/16 v16, 0x0

    if-nez v2, :cond_de

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v3, :cond_db

    goto :goto_de

    :cond_db
    move-object/from16 v13, v16

    goto :goto_11e

    :cond_de
    :goto_de
    if-eqz v2, :cond_ed

    .line 805
    const-string/jumbo v3, "w"

    invoke-virtual {v0, v2, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_ea

    return v10

    :cond_ea
    move-object/from16 v19, v2

    goto :goto_ef

    :cond_ed
    move-object/from16 v19, v16

    .line 810
    :goto_ef
    new-instance v17, Landroid/app/ProfilerInfo;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    iget v13, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    iget-boolean v15, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mLongRunningMethods:Z

    move/from16 v24, v12

    iget-wide v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDurationMicros:J

    move-object/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v28, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-direct/range {v17 .. v29}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZIIZJ)V

    move-object/from16 v13, v17

    .line 815
    :goto_11e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/high16 v2, 0x10000000

    .line 817
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 821
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 823
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v2, v9, :cond_14c

    .line 824
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 825
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_14e

    :cond_14c
    move-object/from16 v2, v16

    .line 827
    :goto_14e
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    if-eq v3, v9, :cond_15d

    if-nez v2, :cond_158

    .line 829
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 831
    :cond_158
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayAreaFeatureId(I)V

    .line 833
    :cond_15d
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v3, :cond_16c

    if-nez v2, :cond_167

    .line 835
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 837
    :cond_167
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 839
    :cond_16c
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v3, :cond_17b

    if-nez v2, :cond_176

    .line 841
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 843
    :cond_176
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 845
    :cond_17b
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v3, v9, :cond_191

    if-nez v2, :cond_185

    .line 847
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 849
    :cond_185
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 851
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v3, :cond_191

    .line 852
    invoke-virtual {v2, v10, v10}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 855
    :cond_191
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v3, :cond_19e

    if-nez v2, :cond_19b

    .line 857
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 859
    :cond_19b
    invoke-virtual {v2, v10}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 861
    :cond_19e
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    if-eqz v3, :cond_1ab

    if-nez v2, :cond_1a8

    .line 863
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 865
    :cond_1a8
    invoke-virtual {v2, v10}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 867
    :cond_1ab
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    if-eqz v3, :cond_1b8

    if-nez v2, :cond_1b5

    .line 869
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 871
    :cond_1b5
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    .line 873
    :cond_1b8
    invoke-virtual {v4}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 874
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v3, :cond_1eb

    .line 875
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v2, :cond_1c9

    .line 877
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    :cond_1c9
    move-object/from16 v14, v16

    iget v15, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v7, v4

    const/4 v4, 0x0

    .line 875
    const-string v5, "com.android.shell"

    const/4 v6, 0x0

    move v2, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v19, v2

    const/16 v30, 0x0

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v2

    move-object v4, v7

    .line 878
    iget v3, v2, Landroid/app/WaitResult;->result:I

    move/from16 v31, v16

    move-object/from16 v16, v2

    move/from16 v2, v31

    goto :goto_20e

    :cond_1eb
    move/from16 v19, v9

    move v11, v10

    const/16 v30, 0x0

    .line 880
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v2, :cond_1fc

    .line 882
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    move-object v14, v2

    goto :goto_1fe

    :cond_1fc
    move-object/from16 v14, v16

    :goto_1fe
    iget v15, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v7, v4

    const/4 v4, 0x0

    .line 880
    const-string v5, "com.android.shell"

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v11

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    move-object v4, v7

    .line 884
    :goto_20e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 885
    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v7, :cond_218

    move-object v7, v1

    goto :goto_21c

    :cond_218
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    :goto_21c
    const/16 v9, -0x62

    if-eq v3, v9, :cond_383

    const/16 v9, -0x61

    if-eq v3, v9, :cond_36e

    if-eqz v3, :cond_2ad

    if-eq v3, v2, :cond_2a8

    const/4 v9, 0x2

    if-eq v3, v9, :cond_2a2

    const/4 v9, 0x3

    if-eq v3, v9, :cond_29c

    const/16 v9, 0x64

    if-eq v3, v9, :cond_296

    packed-switch v3, :pswitch_data_394

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity not started, unknown error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 917
    :pswitch_24a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity not started, unable to resolve "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 922
    :pswitch_263
    const-string v0, "Error type 3"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 928
    :pswitch_28a
    const-string v0, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 933
    :pswitch_290
    const-string v0, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 893
    :cond_296
    const-string v3, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ad

    .line 899
    :cond_29c
    const-string v3, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ad

    .line 912
    :cond_2a2
    const-string v3, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ad

    .line 906
    :cond_2a8
    const-string v3, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    :cond_2ad
    :goto_2ad
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 953
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v3, :cond_357

    if-nez v16, :cond_2c2

    .line 955
    new-instance v3, Landroid/app/WaitResult;

    invoke-direct {v3}, Landroid/app/WaitResult;-><init>()V

    .line 956
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_2c4

    :cond_2c2
    move-object/from16 v3, v16

    .line 958
    :goto_2c4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Status: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v3, Landroid/app/WaitResult;->timeout:Z

    if-eqz v9, :cond_2d6

    const-string/jumbo v9, "timeout"

    goto :goto_2d9

    :cond_2d6
    const-string/jumbo v9, "ok"

    :goto_2d9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LaunchState: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/app/WaitResult;->launchState:I

    invoke-static {v9}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    iget-object v7, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v7, :cond_31b

    .line 961
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    :cond_31b
    iget-wide v9, v3, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-ltz v7, :cond_339

    .line 964
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TotalTime: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    :cond_339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WaitTime: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v5, v17

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    const-string v3, "Complete"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 970
    :cond_357
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v3, :cond_363

    .line 972
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v3}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    .line 974
    :cond_363
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v3, :cond_368

    return v30

    :cond_368
    move v10, v2

    move-object v7, v4

    move/from16 v9, v19

    goto/16 :goto_21

    .line 938
    :cond_36e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 943
    :cond_383
    const-string v0, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :catch_389
    move-exception v0

    .line 757
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_394
    .packed-switch -0x5e
        :pswitch_290
        :pswitch_28a
        :pswitch_263
        :pswitch_24a
    .end packed-switch
.end method

.method public runStartInfoDetailedMonitoring(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 v0, -0x2

    move v1, v0

    .line 1877
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_33

    .line 1878
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1879
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1881
    :cond_1a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_33
    if-ne v1, v0, :cond_40

    .line 1886
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_3e

    return v3

    .line 1890
    :cond_3e
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1892
    :cond_40
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    .line 1893
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->configureDetailedMonitoring(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runStartService(Ljava/io/PrintWriter;Z)I
    .registers 14

    .line 979
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 982
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v4
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_b6

    .line 986
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v10, -0x1

    if-ne v1, v10, :cond_14

    .line 987
    const-string p0, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 990
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 992
    invoke-virtual {v4}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 993
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, 0x0

    const-string v7, "com.android.shell"

    move v6, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_47

    .line 996
    const-string p0, "Error: Not found; no service started."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 998
    :cond_47
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: Requires permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 1001
    :cond_6c
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!!"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "Error: "

    if-eqz p1, :cond_91

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 1004
    :cond_91
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1005
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_b4
    const/4 p0, 0x0

    return p0

    :catch_b6
    move-exception v0

    move-object p0, v0

    .line 984
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runStartUser(Ljava/io/PrintWriter;)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    .line 2910
    :goto_8
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_42

    .line 2911
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    const-string v8, "--display"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    const-string v4, "-w"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 2919
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3b
    move v4, v7

    goto :goto_8

    .line 2916
    :cond_3d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getDisplayIdFromNextArg()I

    move-result v5

    goto :goto_8

    .line 2923
    :cond_42
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    if-eqz v4, :cond_55

    .line 2924
    new-instance v9, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {v9, v0, v6, v8}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;ILcom/android/server/am/ActivityManagerShellCommand-IA;)V

    move-object/from16 v16, v9

    goto :goto_57

    :cond_55
    move-object/from16 v16, v8

    .line 2928
    :goto_57
    const-class v8, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerInternal;

    .line 2929
    const-class v9, Landroid/app/ActivityManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManagerInternal;

    .line 2930
    invoke-virtual {v8, v6}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v8

    .line 2931
    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v9

    if-eq v8, v6, :cond_73

    move v10, v7

    goto :goto_74

    :cond_73
    move v10, v2

    :goto_74
    if-eqz v10, :cond_7a

    if-ne v8, v9, :cond_7a

    :goto_78
    move v11, v10

    goto :goto_7c

    :cond_7a
    move v7, v2

    goto :goto_78

    .line 2935
    :goto_7c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2936
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object v11, v8

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, v16

    .line 2934
    const-string v10, "ActivityManager"

    const-string/jumbo v11, "runStartUser(): userId=%d, parentUserId=%d, currentUserId=%d, isProfile=%b, isVisibleProfile=%b, display=%d, waiter=%s"

    invoke-static {v10, v11, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2940
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "shell_runStartUser"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v11, 0x40

    invoke-static {v11, v12, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2942
    const-string v8, ""

    if-eqz v7, :cond_d5

    .line 2943
    :try_start_be
    const-string v3, "calling startProfileWithListener(%d, %s)"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v9}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v3, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2947
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v6, v9}, Landroid/app/IActivityManager;->startProfileWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    goto :goto_122

    :catchall_d2
    move-exception v0

    goto/16 :goto_171

    :cond_d5
    if-ne v5, v3, :cond_eb

    .line 2949
    const-string v3, "calling startUserInBackgroundWithListener(%d)"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v3, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2950
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v6, v9}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    goto :goto_122

    .line 2952
    :cond_eb
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v7

    if-nez v7, :cond_fa

    .line 2953
    const-string v0, "Not supported"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_be .. :try_end_f6} :catchall_d2

    .line 2967
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    .line 2956
    :cond_fa
    :try_start_fa
    const-string v3, "calling startUserInBackgroundVisibleOnDisplay(%d, %d, %s)"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2957
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 2956
    invoke-static {v10, v3, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2958
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v6, v5, v9}, Landroid/app/IActivityManager;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result v3

    .line 2960
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " on display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_122
    if-eqz v4, :cond_13e

    if-eqz v3, :cond_13e

    .line 2963
    const-string/jumbo v3, "waiting %d ms"

    const v4, 0x1d4c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v3, 0x1d4c0

    .line 2964
    invoke-virtual {v9, v3, v4}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->waitForFinish(J)Z

    move-result v3
    :try_end_13e
    .catchall {:try_start_fa .. :try_end_13e} :catchall_d2

    .line 2967
    :cond_13e
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_158

    .line 2971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: user started"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_170

    .line 2973
    :cond_158
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: could not start user"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_170
    return v2

    .line 2967
    :goto_171
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2968
    throw v0
.end method

.method public runStopApp(Ljava/io/PrintWriter;)I
    .registers 4

    const/4 p1, 0x0

    move v0, p1

    .line 1965
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1966
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1967
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1969
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1973
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V

    return p1
.end method

.method public runStopService(Ljava/io/PrintWriter;)I
    .registers 7

    .line 1012
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 1015
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_56

    .line 1019
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 1020
    const-string p0, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1023
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1025
    invoke-virtual {v1}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 1026
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v4, 0x0

    invoke-interface {p1, v4, v1, v2, p0}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_43

    .line 1028
    const-string p0, "Service not stopped: was not running."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_43
    const/4 p1, 0x1

    if-ne p0, p1, :cond_4c

    .line 1031
    const-string p0, "Service stopped"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_4c
    if-ne p0, v3, :cond_54

    .line 1034
    const-string p0, "Error stopping service"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_54
    const/4 p0, 0x0

    return p0

    :catch_56
    move-exception p0

    .line 1017
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runStopUser(Ljava/io/PrintWriter;)I
    .registers 9

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 3060
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_38

    .line 3061
    const-string v4, "-w"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_15

    move v0, v5

    goto :goto_3

    .line 3063
    :cond_15
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v5

    goto :goto_3

    .line 3066
    :cond_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 3070
    :cond_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-eqz v0, :cond_49

    .line 3071
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v0, v2, v4}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>(ILcom/android/server/am/ActivityManagerShellCommand-IA;)V

    move-object v4, v0

    .line 3073
    :cond_49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v0, v5, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "ActivityManager"

    const-string v6, "Calling stopUser(%d, %b, %s)"

    invoke-static {v5, v6, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shell_runStopUser-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-[stopUser]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v5, 0x40

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3077
    :try_start_78
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0, v2, v1, v4}, Landroid/app/IActivityManager;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    if-eqz v0, :cond_e2

    .line 3080
    const-string p1, ""

    const/4 v1, -0x4

    if-eq v0, v1, :cond_ad

    const/4 v1, -0x3

    if-eq v0, v1, :cond_aa

    const/4 v1, -0x2

    if-eq v0, v1, :cond_a7

    if-eq v0, v3, :cond_8e

    goto :goto_c3

    .line 3086
    :cond_8e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Unknown user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c3

    :catchall_a5
    move-exception p0

    goto :goto_eb

    .line 3083
    :cond_a7
    const-string p1, " (Can\'t stop current user)"

    goto :goto_c3

    .line 3089
    :cond_aa
    const-string p1, " (System user cannot be stopped)"

    goto :goto_c3

    .line 3092
    :cond_ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Can\'t stop user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - one of its related users can\'t be stopped)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3096
    :goto_c3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_78 .. :try_end_de} :catchall_a5

    .line 3103
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_e2
    if-eqz v4, :cond_e7

    .line 3099
    :try_start_e4
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_a5

    .line 3103
    :cond_e7
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :goto_eb
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3104
    throw p0
.end method

.method public runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .registers 3

    .line 3998
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 4002
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .registers 3

    .line 4007
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 4011
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .registers 2

    .line 3540
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3541
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->suppressResizeConfigChanges(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSwitchUser(Ljava/io/PrintWriter;)I
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 2860
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    .line 2861
    const-string v1, "-w"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_2

    .line 2864
    :cond_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 2869
    :cond_2d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2871
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 2872
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v5

    if-eqz v5, :cond_64

    .line 2874
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: UserSwitchabilityResult="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 2879
    :cond_64
    const-string/jumbo v3, "shell_runSwitchUser"

    const-wide/16 v5, 0x40

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz v1, :cond_75

    .line 2882
    :try_start_6e
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z

    move-result p0

    goto :goto_7b

    :catchall_73
    move-exception p0

    goto :goto_92

    .line 2884
    :cond_75
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p0
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_73

    :goto_7b
    if-eqz p0, :cond_81

    .line 2893
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 2889
    :cond_81
    :try_start_81
    const-string p0, "Error: Failed to switch to user %d\n"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_73

    .line 2893
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :goto_92
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 2894
    throw p0
.end method

.method public runTask(Ljava/io/PrintWriter;)I
    .registers 4

    .line 3846
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3847
    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3848
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3849
    :cond_12
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3850
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3851
    :cond_20
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3852
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3853
    :cond_2e
    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3854
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3856
    :cond_3b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runTaskFocus(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3968
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runTaskLock(Ljava/io/PrintWriter;)I
    .registers 4

    .line 3862
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3863
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3864
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_1c

    .line 3866
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3867
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V

    .line 3869
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity manager is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_31

    const-string p0, ""

    goto :goto_34

    :cond_31
    const-string/jumbo p0, "not "

    :goto_34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "in lockTaskMode"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runTaskResize(Ljava/io/PrintWriter;)I
    .registers 4

    .line 3884
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 3885
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3886
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_19

    .line 3888
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: invalid input bounds"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_19
    const/4 v1, 0x0

    .line 3891
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    return v1
.end method

.method public runTaskResizeable(Ljava/io/PrintWriter;)I
    .registers 3

    .line 3875
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 3876
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3877
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3878
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3879
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->setTaskResizeable(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public runToUri(Ljava/io/PrintWriter;I)I
    .registers 4

    const/4 v0, -0x2

    .line 2808
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object p0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_5} :catch_e

    .line 2812
    invoke-virtual {p0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_e
    move-exception p0

    .line 2810
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runTraceIpc(Ljava/io/PrintWriter;)I
    .registers 4

    .line 1097
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1098
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 1100
    :cond_12
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 1103
    :cond_20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown trace ipc command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runTraceIpcStart(Ljava/io/PrintWriter;)I
    .registers 3

    .line 1109
    const-string v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1111
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    const/4 p0, 0x0

    return p0
.end method

.method public runTraceIpcStop(Ljava/io/PrintWriter;)I
    .registers 6

    .line 1116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 1119
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2e

    .line 1120
    const-string v1, "--dump-file"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1121
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1123
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2e
    if-nez v1, :cond_36

    .line 1128
    const-string p0, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1133
    :cond_36
    const-string/jumbo v2, "w"

    invoke-virtual {p0, v1, v2}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_40

    return v3

    .line 1138
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    if-nez p0, :cond_4e

    .line 1139
    const-string p0, "STOP TRACE FAILED."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1143
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runTraceTimer(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1149
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->traceFeatureEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 1153
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->traceTimers([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1155
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_18

    :catch_16
    move-exception p1

    goto :goto_1a

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0

    .line 1159
    :goto_1a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad trace-timer command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public runTrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3139
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runTrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3142
    :try_start_10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    .line 3143
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 3144
    const-string p0, "Association tracking started."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :catchall_1f
    move-exception p0

    goto :goto_2c

    .line 3146
    :cond_21
    const-string p0, "Association tracking already enabled."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public runUnlockUser(Ljava/io/PrintWriter;)I
    .registers 7

    .line 2979
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2997
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2998
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "!"

    if-nez v2, :cond_25

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2999
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: token parameter not supported"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 3002
    :cond_25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3003
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 3004
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: secret parameter not supported"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 3008
    :cond_3f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->unlockUser2(ILandroid/os/IProgressListener;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3010
    const-string p0, "Success: user unlocked"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_57

    .line 3014
    :cond_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not unlock user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_57
    const/4 p0, 0x0

    return p0
.end method

.method public runUntrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3153
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runUntrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3156
    :try_start_10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 3157
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 3158
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 3159
    const-string p0, "Association tracking stopped."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b

    :catchall_24
    move-exception p0

    goto :goto_30

    .line 3161
    :cond_26
    const-string p0, "Association tracking not running."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .registers 5

    .line 4016
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 4017
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4018
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4020
    :goto_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 4021
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 4023
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 4024
    const-string p0, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runWaitForApplicationBarrier(Ljava/io/PrintWriter;)I
    .registers 7

    .line 4073
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4074
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->waitForApplicationBarrier(Ljava/io/PrintWriter;)V

    return v4
.end method

.method public runWaitForBroadcastBarrier(Ljava/io/PrintWriter;)I
    .registers 8

    .line 4054
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move p1, v4

    move v1, p1

    .line 4058
    :goto_17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 4059
    const-string v5, "--flush-broadcast-loopers"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move p1, v3

    goto :goto_17

    .line 4061
    :cond_27
    const-string v1, "--flush-application-threads"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    move v1, v3

    goto :goto_17

    .line 4064
    :cond_31
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4068
    :cond_4b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastBarrier(Ljava/io/PrintWriter;ZZ)V

    return v4
.end method

.method public runWaitForBroadcastDispatch(Ljava/io/PrintWriter;)I
    .registers 7

    .line 4079
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, -0x2

    .line 4082
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object p1
    :try_end_1a
    .catch Ljava/net/URISyntaxException; {:try_start_16 .. :try_end_1a} :catch_20

    .line 4086
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastDispatch(Ljava/io/PrintWriter;Landroid/content/Intent;)V

    return v4

    :catch_20
    move-exception p0

    .line 4084
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .registers 7

    .line 4038
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/TeeWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Writer;

    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move p1, v4

    .line 4041
    :goto_16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 4042
    const-string p1, "--flush-broadcast-loopers"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    move p1, v3

    goto :goto_16

    .line 4045
    :cond_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4049
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;Z)V

    return v4
.end method

.method public runWatchUids(Ljava/io/PrintWriter;)I
    .registers 10

    const/4 v0, -0x1

    const/16 v1, 0xf

    move v6, v0

    move v7, v1

    .line 2705
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 2706
    const-string v2, "--oom"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2707
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_5

    .line 2708
    :cond_1c
    const-string v2, "--mask"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2709
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 2711
    :cond_2d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 2717
    :cond_46
    new-instance v2, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;II)V

    .line 2718
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    const/4 p0, 0x0

    return p0
.end method

.method public runWrite(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3975
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->flushRecentTasks()V

    .line 3978
    const-string p0, "All tasks persisted."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final switchUserAndWaitForComplete(I)Z
    .registers 7

    .line 2817
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 2818
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v0, :cond_e

    return v1

    .line 2824
    :cond_e
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2825
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V

    .line 2834
    :try_start_18
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-class v3, Lcom/android/server/am/ActivityManagerShellCommand;

    .line 2835
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2834
    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 2838
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_3c

    if-nez p1, :cond_32

    .line 2853
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    const/4 p0, 0x0

    return p0

    .line 2846
    :cond_32
    :try_start_32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_3b} :catch_3e
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_47

    :catchall_3c
    move-exception p1

    goto :goto_4d

    .line 2848
    :catch_3e
    :try_start_3e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: Thread interrupted unexpectedly."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_3c

    .line 2853
    :goto_47
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    return p1

    :goto_4d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2854
    throw p1
.end method

.method public taskResize(ILandroid/graphics/Rect;IZ)V
    .registers 5

    .line 3898
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, p2, p4}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V

    int-to-long p0, p3

    .line 3900
    :try_start_6
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 11

    if-eqz p1, :cond_25

    .line 3357
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10d00000001L

    .line 3358
    iget p5, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10d00000002L

    .line 3360
    iget p5, p6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10d00000003L

    .line 3362
    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_27

    :cond_25
    const-wide/16 p2, -0x1

    :goto_27
    if-eqz p4, :cond_4a

    .line 3366
    const-string/jumbo p5, "stable-width-px: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 3367
    const-string/jumbo p5, "stable-height-px: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 3368
    const-string/jumbo p5, "stable-density-dpi: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 3371
    :cond_4a
    new-instance p5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 3372
    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 3373
    iget-object p6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_94

    const-wide v0, 0x10400000004L

    .line 3375
    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10800000005L

    .line 3377
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    .line 3376
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3379
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-wide v1, 0x10d00000006L

    .line 3378
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000007L

    .line 3381
    invoke-virtual {p6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v2

    .line 3380
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_94
    if-eqz p4, :cond_cd

    .line 3384
    const-string/jumbo v0, "total-ram: "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 3385
    const-string/jumbo p5, "low-ram: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3386
    const-string/jumbo p5, "max-cores: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 3387
    const-string p5, "has-secure-screen-lock: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3392
    :cond_cd
    :try_start_cd
    iget-object p5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p5}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p5
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_d3} :catch_1a7

    .line 3396
    iget p6, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz p6, :cond_f2

    if-eqz p1, :cond_e1

    const-wide v0, 0x10d00000008L

    .line 3398
    invoke-virtual {p1, v0, v1, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_e1
    if-eqz p4, :cond_f2

    .line 3402
    const-string/jumbo p6, "opengl-version: 0x"

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    iget p5, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3407
    :cond_f2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object p5

    .line 3408
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/String;

    .line 3409
    invoke-interface {p5, p6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    .line 3410
    invoke-static {p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 p6, 0x0

    move v0, p6

    .line 3411
    :goto_107
    array-length v1, p5

    if-ge v0, v1, :cond_126

    if-eqz p1, :cond_116

    const-wide v1, 0x20900000009L

    .line 3413
    aget-object v3, p5, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_116
    if-eqz p4, :cond_123

    .line 3417
    const-string/jumbo v1, "opengl-extensions: "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v1, p5, v0

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_123
    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    .line 3422
    :cond_126
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3423
    invoke-virtual {p0, p6}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object p5

    .line 3424
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, p6

    .line 3425
    :goto_13f
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_171

    if-eqz p1, :cond_159

    .line 3428
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x2090000000aL

    .line 3427
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_159
    if-eqz p4, :cond_16e

    .line 3431
    const-string/jumbo v1, "shared-libraries: "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13f

    .line 3435
    :cond_171
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    .line 3436
    new-instance p5, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {p5}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3443
    :goto_17d
    array-length p5, p0

    if-ge p6, p5, :cond_1a1

    .line 3444
    aget-object p5, p0, p6

    iget-object p5, p5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz p5, :cond_19e

    if-eqz p1, :cond_190

    const-wide v0, 0x2090000000bL

    .line 3446
    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_190
    if-eqz p4, :cond_19e

    .line 3449
    const-string p5, "features: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object p5, p0, p6

    iget-object p5, p5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19e
    add-int/lit8 p6, p6, 0x1

    goto :goto_17d

    :cond_1a1
    if-eqz p1, :cond_1a6

    .line 3455
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1a6
    return-void

    :catch_1a7
    move-exception p0

    .line 3394
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
