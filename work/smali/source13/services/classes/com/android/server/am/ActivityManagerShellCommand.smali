.class final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;,
        Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;,
        Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
    }
.end annotation


# static fields
.field private static final LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final USER_OPERATION_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private mActivityType:I

.field private mAgent:Ljava/lang/String;

.field private mAsync:Z

.field private mAttachAgentDuringBind:Z

.field private mAutoStop:Z

.field private mBroadcastOptions:Landroid/app/BroadcastOptions;

.field private mDismissKeyguardIfInsecure:Z

.field private mDisplayId:I

.field final mDumping:Z

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field private mIsLockTask:Z

.field private mIsTaskOverlay:Z

.field final mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mShowSplashScreen:Z

.field private mStartFlags:I

.field private mStopOption:Z

.field private mStreaming:Z

.field private mTaskId:I

.field final mTaskInterface:Landroid/app/IActivityTaskManager;

.field private mUserId:I

.field private mWaitOption:Z

.field final mWindowInterface:Landroid/view/IWindowManager;

.field private mWindowingMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActivityType(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAsync(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDismissKeyguardIfInsecure(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisplayId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLockTask(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTaskOverlay(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceiverPermission(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRepeat(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSamplingInterval(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowSplashScreen(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStopOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStreaming(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTaskId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 152
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 153
    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 152
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "dumping"    # Z

    .line 193
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 167
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 170
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 194
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 195
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    .line 196
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 197
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 198
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 199
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowInterface:Landroid/view/IWindowManager;

    .line 200
    return-void
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 13
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "surfaceSize"    # [I
    .param p4, "contextAttribs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2317
    .local p5, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2318
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 2320
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_b

    .line 2321
    return-void

    .line 2325
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 2326
    .local v1, "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_17

    .line 2327
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2328
    return-void

    .line 2332
    :cond_17
    invoke-interface {p0, p1, v1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2335
    const/16 v2, 0x1f03

    invoke-static {v2}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 2336
    .local v2, "extensionList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2339
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 2340
    .local v6, "extension":Ljava/lang/String;
    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2339
    .end local v6    # "extension":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 2345
    :cond_38
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2346
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 2347
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2348
    return-void
.end method

.method private bucketNameToBucketValue(Ljava/lang/String;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 2638
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2639
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2640
    const/16 v1, 0xa

    return v1

    .line 2641
    :cond_f
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2642
    const/16 v1, 0x14

    return v1

    .line 2643
    :cond_1b
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2644
    const/16 v1, 0x1e

    return v1

    .line 2645
    :cond_26
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2646
    const/16 v1, 0x28

    return v1

    .line 2647
    :cond_32
    const-string/jumbo v1, "re"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2648
    const/16 v1, 0x2d

    return v1

    .line 2649
    :cond_3e
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2650
    const/16 v1, 0x32

    return v1

    .line 2653
    :cond_4a
    :try_start_4a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4e} :catch_4f

    .line 2654
    .local v1, "bucket":I
    return v1

    .line 2655
    .end local v1    # "bucket":I
    :catch_4f
    move-exception v1

    .line 2656
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2659
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;Z)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "dumping"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3453
    if-eqz p1, :cond_d8

    .line 3454
    const-string v0, "Activity manager dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    const-string v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3456
    const-string v0, "  WHAT may be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    const-string v0, "    a[ctivities]: activity stack state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3458
    const-string v0, "    r[recents]: recent activities state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    const-string v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3460
    const-string v0, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    const-string v0, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    const-string v0, "    p[rocesses] [PACKAGE_NAME]: process state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    const-string v0, "    o[om]: out of memory management"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3464
    const-string v0, "    perm[issions]: URI permission grant state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    const-string v0, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    const-string v0, "    provider [COMP_SPEC]: provider client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    const-string v0, "    s[ervices] [COMP_SPEC ...]: service state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    const-string v0, "    allowed-associations: current package association restrictions"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    const-string v0, "    as[sociations]: tracked app associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3470
    const-string v0, "    exit-info [PACKAGE_NAME]: historical process exit information"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3471
    const-string v0, "    lmk: stats on low memory killer"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3472
    const-string v0, "    lru: raw LRU process list"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3473
    const-string v0, "    binder-proxies: stats on binder objects and IPCs"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3474
    const-string v0, "    settings: currently applied config settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    const-string v0, "    service [COMP_SPEC]: service client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3476
    const-string v0, "    package [PACKAGE_NAME]: all state related to given package"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3477
    const-string v0, "    all: dump all activities"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3478
    const-string v0, "    top: dump the top activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3480
    const-string v0, "    logging: dump enable and disable debug config"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3481
    const-string v0, "    app-logging <PROCESS_NAME> <UID>: dump enable and disable app debug config"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    const-string v0, "  WHAT may also be a COMP_SPEC to dump activities."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3484
    const-string v0, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    const-string v0, "    a partial substring in a component name, a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    const-string v0, "    hex object identifier."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3487
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    const-string v0, "  -c: include client state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    const-string v0, "  -p: limit output to given package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3490
    const-string v0, "  --checkin: output checkin format, resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3491
    const-string v0, "  --C: output checkin format, not resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    const-string v0, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "--dump-dumpable"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "--list-dumpables"

    aput-object v3, v0, v1

    const-string v4, "  %s: dump just the DUMPABLE-related state of an activity. Use the %s option to list the supported DUMPABLEs\n"

    invoke-virtual {p0, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3496
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v1, "  %s: show the available dumpables in an activity\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_669

    .line 3499
    :cond_d8
    const-string v0, "Activity manager (activity) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3500
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3501
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3503
    const-string v0, "  logging <enable-text|disable-text> <CONFIG>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3504
    const-string v0, "  app-logging <PROCESS_NAME> <UID> <enable-text|disable-text> <CONFIG>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3506
    const-string v0, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3507
    const-string v0, "          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3508
    const-string v0, "          [--track-allocation] [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3509
    const-string v0, "      Start an Activity.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3510
    const-string v0, "      -D: enable debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3511
    const-string v0, "      -N: enable native debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3512
    const-string v0, "      -W: wait for launch to complete"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3513
    const-string v0, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3514
    const-string v0, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3515
    const-string v1, "          between samples (use with --start-profiler)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3516
    const-string v1, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    const-string v1, "          (use with --start-profiler)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3518
    const-string v1, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    const-string v1, "      --attach-agent <agent>: attach the given agent before binding"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    const-string v1, "      --attach-agent-bind <agent>: attach the given agent during binding"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    const-string v1, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    const-string v1, "          the top activity will be finished."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    const-string v1, "      -S: force stop the target app before starting the activity"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    const-string v1, "      --track-allocation: enable tracking of object allocations"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3525
    const-string v1, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3526
    const-string v2, "          specified then run as the current user."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3527
    const-string v3, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    const-string v3, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    const-string v3, "      --display <DISPLAY_ID>: The display to launch the activity into."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    const-string v3, "      --splashscreen-icon: Show the splash screen icon on launch."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    const-string v3, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    const-string v3, "      Start a Service.  Options are:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    const-string v3, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3536
    const-string v3, "      Start a foreground Service.  Options are:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    const-string v3, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3540
    const-string v3, "      Stop a Service.  Options are:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3543
    const-string v1, "  broadcast [--user <USER_ID> | all | current]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3544
    const-string v1, "          [--receiver-permission <PERMISSION>]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    const-string v1, "          [--allow-background-activity-starts]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3546
    const-string v1, "          [--async] <INTENT>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3547
    const-string v1, "      Send a broadcast Intent.  Options are:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3548
    const-string v1, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    const-string v1, "          specified then send to all users."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3550
    const-string v1, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    const-string v1, "      --allow-background-activity-starts: The receiver may start activities"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3552
    const-string v1, "          even if in the background."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    const-string v1, "      --async: Send without waiting for the completion of the receiver."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    const-string v1, "  compact <process_name> <Package UID> [some|full]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    const-string v1, "      Force process compaction."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3556
    const-string v1, "      some: execute file compaction."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    const-string v1, "      full: execute anon + file compaction."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    const-string v1, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    const-string v1, "          [--user <USER_ID> | current]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    const-string v1, "          [--no-hidden-api-checks [--no-test-api-access]]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    const-string v1, "          [--no-isolated-storage]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    const-string v1, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    const-string v1, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    const-string v1, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    const-string v1, "      is only one instrumentation.  Options are:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    const-string v1, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    const-string v1, "          [-e perf true] to generate raw output for performance measurements."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    const-string v1, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    const-string v1, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    const-string v1, "      -p <FILE>: write profiling data to <FILE>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3571
    const-string v1, "      -m: Write output as protobuf to stdout (machine readable)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3572
    const-string v1, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3573
    const-string v1, "          readable). If path is not specified, default directory and file name will"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3574
    const-string v1, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    const-string v1, "      -w: wait for instrumentation to finish before returning.  Required for"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    const-string v1, "          test runners."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    const-string v1, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    const-string v1, "          current user if not specified."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3579
    const-string v1, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3580
    const-string v1, "      --no-test-api-access: do not allow access to test APIs, if hidden"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    const-string v1, "          API checks are enabled."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    const-string v1, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3583
    const-string v1, "          mount full external storage"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3584
    const-string v1, "      --no-window-animation: turn off window animations while running."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    const-string v1, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    const-string v1, "          This assumes that the process supports the selected ABI."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    const-string v1, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    const-string v1, "      Trace IPC transactions."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    const-string v1, "      start: start tracing IPC transactions."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    const-string v1, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3591
    const-string v1, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    const-string v1, "  profile start [--user <USER_ID> current]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    const-string v1, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    const-string v1, "      Start profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    const-string v1, "        may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    const-string v2, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    const-string v3, "          specify user of process to profile; uses current user if not"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    const-string v4, "          specified."

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    const-string v0, "          between samples."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    const-string v0, "      --streaming: stream the profiling output to the specified file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    const-string v0, "  profile stop [--user <USER_ID> current] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3603
    const-string v0, "      Stop profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    const-string v0, "  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    const-string v0, "      Dump the heap of a process.  The given <PROCESS> argument may"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    const-string v0, "        be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    const-string v0, "      -n: dump native heap instead of managed heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    const-string v0, "      -g: force GC before dumping the heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    const-string v0, "          specify user of process to dump; uses current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    const-string v0, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    const-string v0, "      Set application <PACKAGE> to debug.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    const-string v0, "      -w: wait for debugger when application starts"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    const-string v0, "      --persistent: retain this value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3619
    const-string v0, "  clear-debug-app"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    const-string v0, "      Clear the previously set-debug-app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    const-string v0, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    const-string v0, "      Start monitoring pss size of <PROCESS>, if it is at or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3623
    const-string v0, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    const-string v0, "  clear-watch-heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    const-string v0, "      Clear the previously set-watch-heap."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3626
    const-string v0, "  clear-exit-info [--user <USER_ID> | all | current] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    const-string v0, "      Clear the process exit-info for given package"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    const-string v0, "  bug-report [--progress | --telephony]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    const-string v0, "      Request bug report generation; will launch a notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    const-string v0, "        when done to select where it should be delivered. Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    const-string v0, "     --progress: will launch a notification right away to show its progress."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    const-string v0, "     --telephony: will dump only telephony sections."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    const-string v0, "  fgs-notification-rate-limit {enable | disable}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3634
    const-string v0, "     Enable/disable rate limit on FGS notification deferral policy."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3635
    const-string v0, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    const-string v0, "      Completely stop the given application package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    const-string v0, "  stop-app [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3638
    const-string v0, "      Stop an app and all of its services.  Unlike `force-stop` this does"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    const-string v0, "      not cancel the app\'s scheduled alarms and jobs."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    const-string v0, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3641
    const-string v0, "      Induce a VM crash in the specified package or process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3642
    const-string v0, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    const-string v0, "      Kill all background processes associated with the given application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    const-string v0, "  kill-all"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    const-string v0, "      Kill all processes that are safe to kill (cached, etc)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    const-string v0, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    const-string v0, "      If the given application\'s uid is in the background and waiting to"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    const-string v0, "      become idle (not allowing background services), do that now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    const-string v0, "  monitor [--gdb <port>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    const-string v0, "      Start monitoring for crashes or ANRs."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    const-string v0, "      --gdb: start gdbserv on the given port at crash/ANR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    const-string v0, "  watch-uids [--oom <uid>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    const-string v0, "      Start watching for and reporting uid state changes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    const-string v0, "      --oom: specify a uid for which to report detailed change messages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    const-string v0, "  hang [--allow-restart]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    const-string v0, "      Hang the system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    const-string v0, "      --allow-restart: allow watchdog to perform normal system restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    const-string v0, "  restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    const-string v0, "      Restart the user-space system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    const-string v0, "  idle-maintenance"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    const-string v0, "      Perform idle maintenance now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    const-string v0, "  screen-compat [on|off] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    const-string v0, "      Control screen compatibility mode of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    const-string v0, "  package-importance <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    const-string v0, "      Print current importance of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    const-string v0, "  to-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    const-string v0, "      Print the given Intent specification as a URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    const-string v0, "  to-intent-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    const-string v0, "      Print the given Intent specification as an intent: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    const-string v0, "  to-app-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    const-string v0, "      Print the given Intent specification as an android-app: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3672
    const-string v0, "  switch-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    const-string v0, "      Switch to put USER_ID in the foreground, starting"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    const-string v0, "      execution of that user if it is currently stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    const-string v0, "  get-current-user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    const-string v0, "      Returns id of the current foreground user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3677
    const-string v0, "  start-user [-w] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    const-string v0, "      Start USER_ID in background if it is currently stopped;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    const-string v0, "      use switch-user if you want to start the user in foreground."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    const-string v0, "      -w: wait for start-user to complete and the user to be unlocked."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    const-string v0, "  unlock-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    const-string v0, "      Unlock the given user.  This will only work if the user doesn\'t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    const-string v0, "      have an LSKF (PIN/pattern/password)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    const-string v0, "  stop-user [-w] [-f] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    const-string v0, "      Stop execution of USER_ID, not allowing it to run any"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    const-string v0, "      code until a later explicit start or switch to it."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    const-string v0, "      -w: wait for stop-user to complete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3688
    const-string v0, "      -f: force stop even if there are related users that cannot be stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    const-string v0, "  is-user-stopped <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    const-string v0, "      Returns whether <USER_ID> has been stopped or not."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3691
    const-string v0, "  get-started-user-state <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    const-string v0, "      Gets the current state of the given started user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    const-string v0, "  track-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    const-string v0, "      Enable association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    const-string v0, "  untrack-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    const-string v0, "      Disable and clear association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    const-string v0, "  get-uid-state <UID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    const-string v0, "      Gets the process state of an app given its <UID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3699
    const-string v0, "  attach-agent <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    const-string v0, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    const-string v0, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    const-string v0, "      Retrieve the configuration and any recent configurations of the device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    const-string v0, "      --days: also return last N days of configurations that have been seen."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    const-string v0, "      --device: also output global device configuration info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    const-string v0, "      --proto: return result as a proto; does not include --days info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    const-string v0, "      --display: Specify for which display to run the command; if not "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    const-string v0, "          specified then run for the default display."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3708
    const-string v0, "  supports-multiwindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    const-string v0, "      Returns true if the device supports multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3710
    const-string v0, "  supports-split-screen-multi-window"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    const-string v0, "      Returns true if the device supports split screen multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    const-string v0, "  suppress-resize-config-changes <true|false>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    const-string v0, "      Suppresses configuration changes due to user resizing an activity/task."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    const-string v0, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    const-string v0, "      Sets the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    const-string v0, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    const-string v0, "      Returns the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    const-string v0, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare|restricted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const-string v0, "      Puts an app in the standby bucket."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    const-string v0, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    const-string v0, "      Returns the standby bucket of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    const-string v0, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    const-string v0, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    const-string v0, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    const-string v0, "  display [COMMAND] [...]: sub-commands for operating on displays."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    const-string v0, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    const-string v0, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3728
    const-string v0, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3729
    const-string v0, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    const-string v0, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    const-string v0, "           bottom (false) of <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3732
    const-string v0, "       list"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3733
    const-string v0, "           List all of the activity stacks and their sizes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    const-string v0, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3735
    const-string v0, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3736
    const-string v0, "       remove <STACK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3737
    const-string v0, "           Remove stack <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3738
    const-string v0, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    const-string v0, "       lock <TASK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    const-string v0, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3741
    const-string v0, "       lock stop"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    const-string v0, "           End the current task lock."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    const-string v0, "       resizeable <TASK_ID> [0|1|2|3]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    const-string v0, "           Change resizeable mode of <TASK_ID> to one of the following:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    const-string v0, "           0: unresizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3746
    const-string v0, "           1: crop_windows"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3747
    const-string v0, "           2: resizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3748
    const-string v0, "           3: resizeable_and_pipable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    const-string v0, "       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    const-string v0, "           Makes sure <TASK_ID> is in a stack with the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    const-string v0, "           Forces the task to be resizeable and creates a stack if no existing stack"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    const-string v0, "           has the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    const-string v0, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    const-string v0, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3755
    const-string v0, "      without restarting any processes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    const-string v0, "  write"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    const-string v0, "      Write all pending state to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3758
    const-string v0, "  compat [COMMAND] [...]: sub-commands for toggling app-compat changes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    const-string v0, "         enable|disable [--no-kill] <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    const-string v0, "            Toggles a change either by id or by name for <PACKAGE_NAME>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    const-string v1, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect) unless --no-kill is provided."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    const-string v2, "         reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    const-string v0, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    const-string v0, "         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    const-string v0, "            Toggles all changes that are gated by <targetSdkVersion>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    const-string v0, "         reset-all [--no-kill] <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3768
    const-string v0, "            Removes all existing overrides for all changes for "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    const-string v0, "            <PACKAGE_NAME> (back to default behaviour)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    const-string v0, "  memory-factor [command] [...]: sub-commands for overriding memory pressure factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    const-string v0, "         set <NORMAL|MODERATE|LOW|CRITICAL>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    const-string v0, "            Overrides memory pressure factor. May also supply a raw int level"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    const-string v0, "         show"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3775
    const-string v0, "            Shows the existing memory pressure factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    const-string v0, "         reset"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3777
    const-string v0, "            Removes existing override for memory pressure factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3778
    const-string v0, "  service-restart-backoff <COMMAND> [...]: sub-commands to toggle service restart backoff policy."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    const-string v0, "         enable|disable <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3780
    const-string v0, "            Toggles the restart backoff policy on/off for <PACKAGE_NAME>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    const-string v0, "         show <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3782
    const-string v0, "            Shows the restart backoff policy state for <PACKAGE_NAME>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    const-string v0, "  get-isolated-pids <UID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    const-string v0, "         Get the PIDs of isolated processes with packages in this <UID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    const-string v0, "  set-stop-user-on-switch [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3786
    const-string v0, "         Sets whether the current user (and its profiles) should be stopped when switching to a different user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    const-string v0, "         Without arguments, it resets to the value defined by platform."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    const-string v0, "  set-bg-abusive-uids [uid=percentage][,uid=percentage...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    const-string v0, "         Force setting the battery usage of the given UID."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3791
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3792
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3794
    :goto_669
    return-void
.end method

.method private getBounds()Landroid/graphics/Rect;
    .registers 13

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2838
    .local v0, "leftStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2839
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2840
    .local v2, "topStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2841
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2842
    .local v4, "rightStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2843
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 2844
    .local v6, "bottomStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2845
    .local v7, "bottom":I
    const/4 v8, 0x0

    if-gez v1, :cond_3e

    .line 2846
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad left arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    return-object v8

    .line 2849
    :cond_3e
    if-gez v3, :cond_5b

    .line 2850
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad top arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    return-object v8

    .line 2853
    :cond_5b
    if-gtz v5, :cond_78

    .line 2854
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad right arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    return-object v8

    .line 2857
    :cond_78
    if-gtz v7, :cond_95

    .line 2858
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad bottom arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    return-object v8

    .line 2861
    :cond_95
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .registers 16
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .line 2255
    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 2257
    .local v0, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2258
    .local v8, "now":J
    mul-int/lit8 v1, p1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    sub-long v10, v8, v1

    .line 2261
    .local v10, "nDaysAgo":J
    const/4 v2, 0x4

    :try_start_1b
    const-string v7, "com.android.shell"

    move-object v1, v0

    move-wide v3, v10

    move-wide v5, v8

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2263
    .local v1, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v1, :cond_2b

    .line 2264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2267
    :cond_2b
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2268
    .local v2, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 2269
    .local v3, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2270
    .local v4, "configStatsListSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    if-ge v5, v4, :cond_75

    .line 2271
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    .line 2272
    .local v6, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v7

    .line 2273
    .local v7, "indexOfKey":I
    if-gez v7, :cond_5b

    .line 2274
    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 2276
    :cond_5b
    nop

    .line 2277
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2276
    invoke-virtual {v2, v7, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2270
    .end local v6    # "stats":Landroid/app/usage/ConfigurationStats;
    .end local v7    # "indexOfKey":I
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 2281
    .end local v5    # "i":I
    :cond_75
    new-instance v5, Lcom/android/server/am/ActivityManagerShellCommand$4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand$4;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 2288
    .local v5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2289
    .local v6, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2290
    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_8d} :catch_8e

    .line 2291
    return-object v6

    .line 2293
    .end local v1    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .end local v2    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    .end local v3    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .end local v4    # "configStatsListSize":I
    .end local v5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    .end local v6    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    :catch_8e
    move-exception v1

    .line 2294
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3433
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3434
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_f

    .line 3435
    const-string v1, "Error: Activity manager has no configuration"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    const/4 v1, 0x0

    return-object v1

    .line 3439
    :cond_f
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3440
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 3442
    new-instance v2, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v2
.end method

.method static synthetic lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 4
    .param p0, "o1"    # Landroid/content/pm/FeatureInfo;
    .param p1, "o2"    # Landroid/content/pm/FeatureInfo;

    .line 2513
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2514
    :cond_8
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, -0x1

    return v0

    .line 2515
    :cond_e
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 2516
    :cond_14
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .registers 5
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 420
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 421
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 422
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 423
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 424
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 425
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 426
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 427
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 428
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 429
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 430
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 431
    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 432
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 433
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 434
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 435
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 437
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static removeWallOption()V
    .registers 4

    .line 932
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 933
    .local v1, "props":Ljava/lang/String;
    if-eqz v1, :cond_1d

    const-string v2, "-Xprofile:wallclock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 934
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_1d
    return-void
.end method

.method private runAppLogging(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 405
    .local v1, "uid":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "enable-text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "disable-text"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 407
    const-string v3, "Error: wrong args , must be enable-text or disable-text"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    return-void

    .line 410
    :cond_26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 412
    .local v3, "enable":Z
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "config":Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 413
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v5, v3, v0, v1}, Landroid/app/IActivityManager;->enableAppDebugConfig(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_2a

    .line 415
    :cond_37
    return-void
.end method

.method private runCompat(Ljava/io/PrintWriter;)I
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3119
    move-object/from16 v1, p1

    .line 3120
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/compat/PlatformCompat;

    .line 3121
    .local v2, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3122
    .local v3, "toggleValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const-string v4, "--no-kill"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    move v5, v0

    .line 3123
    .local v5, "killPackage":Z
    const/4 v6, 0x0

    .line 3124
    .local v6, "toggleAll":Z
    const/4 v7, -0x1

    .line 3125
    .local v7, "targetSdkVersion":I
    const-wide/16 v8, -0x1

    .line 3127
    .local v8, "changeId":J
    const-string v0, "-all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "\'."

    const-string/jumbo v12, "reset"

    const/4 v13, -0x1

    const/4 v14, 0x0

    if-eqz v10, :cond_50

    .line 3128
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3129
    const/4 v6, 0x1

    .line 3130
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 3132
    :try_start_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_47} :catch_49

    move v7, v0

    .line 3136
    goto :goto_82

    .line 3133
    :catch_49
    move-exception v0

    .line 3134
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid targetSdkVersion!"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    return v13

    .line 3139
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 3141
    .local v10, "changeIdString":Ljava/lang/String;
    :try_start_54
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_58} :catch_5a

    move-wide v8, v15

    .line 3144
    goto :goto_61

    .line 3142
    :catch_5a
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 3143
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2, v10}, Lcom/android/server/compat/PlatformCompat;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide v8

    .line 3145
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_61
    const-wide/16 v15, -0x1

    cmp-long v0, v8, v15

    if-nez v0, :cond_82

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown or invalid change: \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    return v13

    .line 3150
    .end local v10    # "changeIdString":Ljava/lang/String;
    :cond_82
    :goto_82
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 3151
    .local v10, "packageName":Ljava/lang/String;
    if-nez v6, :cond_aa

    invoke-virtual {v2, v8, v9}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 3152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning! Change "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " is not known yet. Enabling/disabling it could have no effect."

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    :cond_aa
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v0

    .line 3156
    .local v15, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v16, v0

    .line 3158
    .local v16, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :try_start_b7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_bb
    .catch Ljava/lang/SecurityException; {:try_start_b7 .. :try_end_bb} :catch_28b

    sparse-switch v0, :sswitch_data_29a

    :cond_be
    goto :goto_e1

    :sswitch_bf
    :try_start_bf
    const-string v0, "disable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_e2

    :sswitch_c8
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const/4 v4, 0x2

    goto :goto_e2

    :sswitch_d0
    const-string v0, "enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d6
    .catch Ljava/lang/SecurityException; {:try_start_bf .. :try_end_d6} :catch_da

    if-eqz v0, :cond_be

    move v4, v14

    goto :goto_e2

    .line 3231
    :catch_da
    move-exception v0

    move-object/from16 v4, v16

    move/from16 v16, v6

    goto/16 :goto_290

    .line 3158
    :goto_e1
    move v4, v13

    :goto_e2
    const-string v0, " changes gated by targetSdkVersion "

    const-string v12, " for "

    const-string v13, "."

    packed-switch v4, :pswitch_data_2a8

    .line 3229
    move-object/from16 v4, v16

    move/from16 v16, v6

    .end local v6    # "toggleAll":Z
    .local v4, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v16, "toggleAll":Z
    :try_start_ef
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_f1
    .catch Ljava/lang/SecurityException; {:try_start_ef .. :try_end_f1} :catch_289

    goto/16 :goto_270

    .line 3206
    .end local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "toggleAll":Z
    .local v16, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :pswitch_f3
    const-string v0, " to default value."

    if-eqz v6, :cond_11b

    .line 3207
    if-eqz v5, :cond_fd

    .line 3208
    :try_start_f9
    invoke-virtual {v2, v10}, Lcom/android/server/compat/PlatformCompat;->clearOverrides(Ljava/lang/String;)V

    goto :goto_100

    .line 3210
    :cond_fd
    invoke-virtual {v2, v10}, Lcom/android/server/compat/PlatformCompat;->clearOverridesForTest(Ljava/lang/String;)V

    .line 3212
    :goto_100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset all changes for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    return v14

    .line 3216
    :cond_11b
    if-eqz v5, :cond_122

    .line 3217
    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/compat/PlatformCompat;->clearOverride(JLjava/lang/String;)Z

    move-result v4

    .local v4, "existed":Z
    goto :goto_126

    .line 3219
    .end local v4    # "existed":Z
    :cond_122
    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/compat/PlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v4

    .line 3221
    .restart local v4    # "existed":Z
    :goto_126
    if-eqz v4, :cond_14b

    .line 3222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reset change "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_165

    .line 3225
    :cond_14b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No override exists for changeId "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    :goto_165
    return v14

    .line 3183
    .end local v4    # "existed":Z
    :pswitch_166
    if-eqz v6, :cond_1a2

    .line 3184
    invoke-virtual {v2, v10, v7}, Lcom/android/server/compat/PlatformCompat;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 3186
    .local v4, "numChanges":I
    if-nez v4, :cond_175

    .line 3187
    const-string v0, "No changes were disabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    const/4 v11, -0x1

    return v11

    .line 3190
    :cond_175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disabled "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/SecurityException; {:try_start_f9 .. :try_end_19f} :catch_da

    .line 3192
    .end local v4    # "numChanges":I
    move-object/from16 v4, v16

    goto :goto_1e0

    .line 3193
    :cond_1a2
    :try_start_1a2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1a6
    .catch Ljava/lang/SecurityException; {:try_start_1a2 .. :try_end_1a6} :catch_1e7

    move-object/from16 v4, v16

    .end local v16    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v4, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :try_start_1a8
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3194
    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v11, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v11, v15, v4}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v0, v11}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 3197
    .local v0, "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    if-eqz v5, :cond_1bb

    .line 3198
    invoke-virtual {v2, v0, v10}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_1be

    .line 3200
    :cond_1bb
    invoke-virtual {v2, v0, v10}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 3202
    :goto_1be
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disabled change "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e0
    .catch Ljava/lang/SecurityException; {:try_start_1a8 .. :try_end_1e0} :catch_1e2

    .line 3204
    .end local v0    # "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :goto_1e0
    const/4 v11, 0x0

    return v11

    .line 3231
    :catch_1e2
    move-exception v0

    move/from16 v16, v6

    goto/16 :goto_290

    .end local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v16    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :catch_1e7
    move-exception v0

    move-object/from16 v4, v16

    move/from16 v16, v6

    .end local v16    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    goto/16 :goto_290

    .line 3160
    .end local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v16    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :pswitch_1ee
    move-object/from16 v4, v16

    .end local v16    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-eqz v6, :cond_230

    .line 3161
    :try_start_1f2
    invoke-virtual {v2, v10, v7}, Lcom/android/server/compat/PlatformCompat;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v11
    :try_end_1f6
    .catch Ljava/lang/SecurityException; {:try_start_1f2 .. :try_end_1f6} :catch_22c

    .line 3163
    .local v11, "numChanges":I
    if-nez v11, :cond_1ff

    .line 3164
    :try_start_1f8
    const-string v0, "No changes were enabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1fd
    .catch Ljava/lang/SecurityException; {:try_start_1f8 .. :try_end_1fd} :catch_1e2

    .line 3165
    const/4 v12, -0x1

    return v12

    .line 3167
    :cond_1ff
    :try_start_1ff
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_204
    .catch Ljava/lang/SecurityException; {:try_start_1ff .. :try_end_204} :catch_22c

    move/from16 v16, v6

    .end local v6    # "toggleAll":Z
    .local v16, "toggleAll":Z
    :try_start_206
    const-string v6, "Enabled "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    .end local v11    # "numChanges":I
    goto :goto_26e

    .line 3231
    .end local v16    # "toggleAll":Z
    .restart local v6    # "toggleAll":Z
    :catch_22c
    move-exception v0

    move/from16 v16, v6

    .end local v6    # "toggleAll":Z
    .restart local v16    # "toggleAll":Z
    goto :goto_290

    .line 3170
    .end local v16    # "toggleAll":Z
    .restart local v6    # "toggleAll":Z
    :cond_230
    move/from16 v16, v6

    .end local v6    # "toggleAll":Z
    .restart local v16    # "toggleAll":Z
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3171
    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v6, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v6, v15, v4}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v0, v6}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 3174
    .restart local v0    # "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    if-eqz v5, :cond_249

    .line 3175
    invoke-virtual {v2, v0, v10}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_24c

    .line 3177
    :cond_249
    invoke-virtual {v2, v0, v10}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 3179
    :goto_24c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabled change "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    .end local v0    # "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :goto_26e
    const/4 v6, 0x0

    return v6

    .line 3229
    :goto_270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid toggle value: \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_288
    .catch Ljava/lang/SecurityException; {:try_start_206 .. :try_end_288} :catch_289

    .line 3233
    goto :goto_297

    .line 3231
    :catch_289
    move-exception v0

    goto :goto_290

    .end local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "toggleAll":Z
    .local v16, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :catch_28b
    move-exception v0

    move-object/from16 v4, v16

    move/from16 v16, v6

    .line 3232
    .end local v6    # "toggleAll":Z
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v4    # "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v16, "toggleAll":Z
    :goto_290
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_297
    const/4 v6, -0x1

    return v6

    nop

    :sswitch_data_29a
    .sparse-switch
        -0x4d6ada7d -> :sswitch_d0
        0x6761d4f -> :sswitch_c8
        0x639e22e8 -> :sswitch_bf
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_1ee
        :pswitch_166
        :pswitch_f3
    .end packed-switch
.end method

.method private runGetIsolatedProcesses(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3336
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getIsolatedProcesses()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 3339
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3338
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v0

    .line 3340
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3341
    if-eqz v0, :cond_38

    .line 3342
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_25
    if-ge v1, v2, :cond_38

    .line 3343
    if-lez v1, :cond_2e

    .line 3344
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3346
    :cond_2e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3342
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 3349
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_38
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    const/4 v1, 0x0

    return v1
.end method

.method private runListBgExemptionsConfig(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3419
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 3421
    .local v0, "sysConfigs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_23

    .line 3422
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_d
    if-ge v1, v2, :cond_20

    .line 3423
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3424
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3422
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3426
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3428
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private runLogging(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "enable-text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "disable-text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 392
    const-string v1, "Error: wrong args , must be enable-text or disable-text"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    return-void

    .line 395
    :cond_1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 397
    .local v1, "enable":Z
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "config":Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 398
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->enableAmsDebugConfig(Ljava/lang/String;Z)V

    goto :goto_1e

    .line 400
    :cond_2b
    return-void
.end method

.method private runMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3296
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runMemoryFactor()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3300
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_6c

    :cond_16
    goto :goto_38

    :sswitch_17
    const-string/jumbo v1, "reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    goto :goto_39

    :sswitch_22
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2d
    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    goto :goto_39

    :goto_38
    move v1, v2

    :goto_39
    packed-switch v1, :pswitch_data_7a

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3309
    return v2

    .line 3306
    :pswitch_5d
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runResetMemoryFactor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 3304
    :pswitch_62
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runShowMemoryFactor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 3302
    :pswitch_67
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetMemoryFactor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :sswitch_data_6c
    .sparse-switch
        0x1bc62 -> :sswitch_2d
        0x35dafd -> :sswitch_22
        0x6761d4f -> :sswitch_17
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_67
        :pswitch_62
        :pswitch_5d
    .end packed-switch
.end method

.method private runProfile(Ljava/io/PrintWriter;)I
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 942
    .local v2, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 943
    .local v0, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 944
    .local v3, "start":Z
    const/4 v4, 0x0

    .line 945
    .local v4, "wall":Z
    const/4 v5, -0x2

    .line 946
    .local v5, "userId":I
    const/4 v12, 0x0

    .line 947
    .local v12, "profileType":I
    const/4 v13, 0x0

    iput v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 948
    iput-boolean v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 950
    const/4 v6, 0x0

    .line 952
    .local v6, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 954
    .local v7, "cmd":Ljava/lang/String;
    const-string/jumbo v8, "start"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Error: Unknown option: "

    const-string v11, "--user"

    const/4 v14, -0x1

    if-eqz v9, :cond_80

    .line 955
    const/4 v3, 0x1

    .line 957
    :goto_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "opt":Ljava/lang/String;
    if-eqz v8, :cond_78

    .line 958
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_24

    .line 960
    :cond_3a
    const-string v8, "--wall"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 961
    const/4 v4, 0x1

    goto :goto_24

    .line 962
    :cond_44
    const-string v8, "--streaming"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 963
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_24

    .line 964
    :cond_50
    const-string v8, "--sampling"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_24

    .line 967
    :cond_63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    return v14

    .line 971
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 972
    .end local v9    # "opt":Ljava/lang/String;
    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_d5

    :cond_80
    const-string/jumbo v9, "stop"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_bc

    .line 974
    :goto_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_b4

    .line 975
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_89

    .line 978
    :cond_9f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    return v14

    .line 982
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 983
    .end local v9    # "opt":Ljava/lang/String;
    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_d5

    .line 985
    :cond_bc
    move-object v6, v7

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 987
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 988
    const/4 v3, 0x1

    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_d5

    .line 989
    :cond_cc
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_169

    move-object v15, v6

    move-object/from16 v16, v7

    .line 994
    .end local v6    # "process":Ljava/lang/String;
    .end local v7    # "cmd":Ljava/lang/String;
    .local v15, "process":Ljava/lang/String;
    .local v16, "cmd":Ljava/lang/String;
    :goto_d5
    if-ne v5, v14, :cond_dd

    .line 995
    const-string v6, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    return v14

    .line 999
    :cond_dd
    const/4 v6, 0x0

    .line 1000
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .line 1002
    .local v7, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v3, :cond_110

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1004
    const-string/jumbo v8, "w"

    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1005
    if-nez v6, :cond_ef

    .line 1006
    return v14

    .line 1008
    :cond_ef
    new-instance v8, Landroid/app/ProfilerInfo;

    iget v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    const/16 v21, 0x0

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v9

    move/from16 v22, v10

    invoke-direct/range {v17 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v7, v8

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_116

    .line 1002
    :cond_110
    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 1013
    .end local v0    # "profileFile":Ljava/lang/String;
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v17, "profileFile":Ljava/lang/String;
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_116
    if-eqz v4, :cond_13d

    .line 1015
    :try_start_118
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_128

    const-string v6, "-Xprofile:wallclock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13d

    .line 1017
    .end local v0    # "props":Ljava/lang/String;
    :cond_128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " -Xprofile:wallclock"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_13d

    .line 1029
    :catchall_13b
    move-exception v0

    goto :goto_168

    .line 1020
    :cond_13d
    :goto_13d
    nop

    .line 1023
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v15

    move v8, v5

    move v9, v3

    move-object/from16 v10, v19

    move v11, v12

    invoke-interface/range {v6 .. v11}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_166

    .line 1024
    const/4 v4, 0x0

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROFILE FAILED on process "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_163
    .catchall {:try_start_118 .. :try_end_163} :catchall_13b

    .line 1026
    nop

    .line 1029
    nop

    .line 1026
    return v14

    .line 1029
    :cond_166
    nop

    .line 1033
    return v13

    .line 1032
    :goto_168
    throw v0

    .line 990
    .end local v15    # "process":Ljava/lang/String;
    .end local v16    # "cmd":Ljava/lang/String;
    .end local v17    # "profileFile":Ljava/lang/String;
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profileFile":Ljava/lang/String;
    .local v6, "process":Ljava/lang/String;
    .local v7, "cmd":Ljava/lang/String;
    :cond_169
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profile command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private runResetMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3291
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    .line 3292
    const/4 v0, 0x0

    return v0
.end method

.method private runServiceRestartBackoff(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3314
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_PROCESS_LIMIT"

    const-string/jumbo v2, "runServiceRestartBackoff()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3318
    .local v0, "opt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_8a

    :cond_18
    goto :goto_38

    :sswitch_19
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_39

    :sswitch_23
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    goto :goto_39

    :sswitch_2e
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v4

    goto :goto_39

    :goto_38
    move v1, v3

    :goto_39
    const-string/jumbo v5, "shell"

    packed-switch v1, :pswitch_data_98

    .line 3330
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    return v3

    .line 3326
    :pswitch_60
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->isServiceRestartBackoffEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 3327
    const-string v1, "enabled"

    goto :goto_71

    :cond_6f
    const-string v1, "disabled"

    .line 3326
    :goto_71
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    return v4

    .line 3323
    :pswitch_75
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setServiceRestartBackoffEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3324
    return v4

    .line 3320
    :pswitch_7f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setServiceRestartBackoffEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3321
    return v4

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x4d6ada7d -> :sswitch_2e
        0x35dafd -> :sswitch_23
        0x639e22e8 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_75
        :pswitch_60
    .end packed-switch
.end method

.method private runSetBgAbusiveUids(Ljava/io/PrintWriter;)I
    .registers 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3378
    const-string v1, "Malformed input"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3379
    .local v2, "arg":Ljava/lang/String;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const-class v4, Lcom/android/server/am/AppBatteryTracker;

    .line 3380
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppRestrictionController;->getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppBatteryTracker;

    .line 3381
    .local v4, "batteryTracker":Lcom/android/server/am/AppBatteryTracker;
    const/4 v5, -0x1

    if-nez v4, :cond_22

    .line 3382
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Unable to get bg battery tracker"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3383
    return v5

    .line 3385
    :cond_22
    const/4 v0, 0x0

    if-nez v2, :cond_29

    .line 3386
    invoke-virtual {v4}, Lcom/android/server/am/AppBatteryTracker;->clearDebugUidPercentage()V

    .line 3387
    return v0

    .line 3389
    :cond_29
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3390
    .local v6, "pairs":[Ljava/lang/String;
    array-length v7, v6

    new-array v7, v7, [I

    .line 3391
    .local v7, "uids":[I
    array-length v8, v6

    new-array v8, v8, [[D

    .line 3393
    .local v8, "values":[[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_36
    :try_start_36
    array-length v10, v6

    if-ge v9, v10, :cond_83

    .line 3394
    aget-object v10, v6, v9

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3395
    .local v10, "pair":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4d

    .line 3396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3397
    return v5

    .line 3399
    :cond_4d
    aget-object v11, v10, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v7, v9

    .line 3400
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3401
    .local v11, "vals":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x5

    if-eq v12, v13, :cond_6a

    .line 3402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3403
    return v5

    .line 3405
    :cond_6a
    array-length v12, v11

    new-array v12, v12, [D

    aput-object v12, v8, v9

    .line 3406
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_70
    array-length v13, v11

    if-ge v12, v13, :cond_80

    .line 3407
    aget-object v13, v8, v9

    aget-object v14, v11, v12

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    aput-wide v14, v13, v12
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_7d} :catch_88

    .line 3406
    add-int/lit8 v12, v12, 0x1

    goto :goto_70

    .line 3393
    .end local v10    # "pair":[Ljava/lang/String;
    .end local v11    # "vals":[Ljava/lang/String;
    .end local v12    # "j":I
    :cond_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 3413
    .end local v9    # "i":I
    :cond_83
    nop

    .line 3414
    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/AppBatteryTracker;->setDebugUidPercentage([I[[D)V

    .line 3415
    return v0

    .line 3410
    :catch_88
    move-exception v0

    .line 3411
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3412
    return v5
.end method

.method private runSetMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3239
    .local v0, "levelArg":Ljava/lang/String;
    const/4 v1, -0x1

    .line 3240
    .local v1, "level":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_72

    :cond_f
    goto :goto_38

    :sswitch_10
    const-string v2, "MODERATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_39

    :sswitch_1a
    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "CRITICAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    goto :goto_39

    :sswitch_2e
    const-string v2, "NORMAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    goto :goto_39

    :goto_38
    move v2, v5

    :goto_39
    packed-switch v2, :pswitch_data_84

    .line 3255
    :try_start_3c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_40} :catch_4b

    goto :goto_49

    .line 3251
    :pswitch_41
    const/4 v1, 0x3

    .line 3252
    goto :goto_51

    .line 3248
    :pswitch_43
    const/4 v1, 0x2

    .line 3249
    goto :goto_51

    .line 3245
    :pswitch_45
    const/4 v1, 0x1

    .line 3246
    goto :goto_51

    .line 3242
    :pswitch_47
    const/4 v1, 0x0

    .line 3243
    goto :goto_51

    .line 3255
    :goto_49
    move v1, v2

    .line 3257
    goto :goto_4c

    .line 3256
    :catch_4b
    move-exception v2

    .line 3258
    :goto_4c
    if-ltz v1, :cond_57

    if-le v1, v3, :cond_51

    goto :goto_57

    .line 3263
    :cond_51
    :goto_51
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    .line 3264
    return v4

    .line 3259
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown level option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    return v5

    :sswitch_data_72
    .sparse-switch
        -0x76664f19 -> :sswitch_2e
        -0x5cfe9861 -> :sswitch_24
        0x12734 -> :sswitch_1a
        0x9c2ed03 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_47
        :pswitch_45
        :pswitch_43
        :pswitch_41
    .end packed-switch
.end method

.method private runSetStopUserOnSwitch(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3354
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "setStopUserOnSwitch()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3357
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-nez v0, :cond_25

    .line 3358
    const-string/jumbo v3, "setStopUserOnSwitch(): resetting to default value"

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 3360
    const-string v1, "Reset to default value"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    return v2

    .line 3364
    :cond_25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3365
    .local v3, "stop":Z
    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    .line 3366
    move v5, v4

    goto :goto_2f

    .line 3367
    :cond_2e
    move v5, v2

    :goto_2f
    nop

    .line 3369
    .local v5, "value":I
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const-string/jumbo v4, "runSetStopUserOnSwitch(): setting to %d (%b)"

    invoke-static {v1, v4, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3370
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 3371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    return v2
.end method

.method private runShowMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3268
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    move-result v0

    .line 3269
    .local v0, "level":I
    packed-switch v0, :pswitch_data_2e

    goto :goto_28

    .line 3283
    :pswitch_a
    const-string v1, "CRITICAL"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 3280
    :pswitch_10
    const-string v1, "LOW"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    goto :goto_28

    .line 3277
    :pswitch_16
    const-string v1, "MODERATE"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    goto :goto_28

    .line 3274
    :pswitch_1c
    const-string v1, "NORMAL"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    goto :goto_28

    .line 3271
    :pswitch_22
    const-string v1, "<UNKNOWN>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    nop

    .line 3286
    :goto_28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 3287
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method private switchUserAndWaitForComplete(I)Z
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1979
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v2, :cond_e

    .line 1981
    return v1

    .line 1985
    :cond_e
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 1986
    .local v1, "switchLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V

    const-class v4, Lcom/android/server/am/ActivityManagerShellCommand;

    .line 1994
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1986
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 1997
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v2

    .line 1998
    .local v2, "switched":Z
    if-nez v2, :cond_2e

    .line 2000
    const/4 v3, 0x0

    return v3

    .line 2005
    :cond_2e
    const-wide/32 v3, 0x1d4c0

    :try_start_31
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_37} :catch_39

    move v2, v3

    .line 2008
    goto :goto_43

    .line 2006
    :catch_39
    move-exception v3

    .line 2007
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: Thread interrupted unexpectedly."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_43
    return v2
.end method

.method private writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 25
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "config"    # Landroid/content/res/Configuration;
    .param p6, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 2431
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    const-wide/16 v5, -0x1

    .line 2432
    .local v5, "token":J
    if-eqz v2, :cond_2e

    .line 2433
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2434
    const-wide v7, 0x10d00000001L

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2436
    const-wide v7, 0x10d00000002L

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2438
    const-wide v7, 0x10d00000003L

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v2, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2441
    :cond_2e
    if-eqz v3, :cond_51

    .line 2442
    const-string/jumbo v0, "stable-width-px: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2443
    const-string/jumbo v0, "stable-height-px: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2444
    const-string/jumbo v0, "stable-density-dpi: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2447
    :cond_51
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    move-object v7, v0

    .line 2448
    .local v7, "memreader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2449
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/KeyguardManager;

    .line 2450
    .local v8, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_9d

    .line 2451
    const-wide v9, 0x10400000004L

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2452
    const-wide v9, 0x10800000005L

    .line 2453
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 2452
    invoke-virtual {v2, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2454
    const-wide v9, 0x10d00000006L

    .line 2455
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 2454
    invoke-virtual {v2, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2456
    const-wide v9, 0x10800000007L

    .line 2457
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    .line 2456
    invoke-virtual {v2, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2459
    :cond_9d
    if-eqz v3, :cond_d7

    .line 2460
    const-string/jumbo v0, "total-ram: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 2461
    const-string/jumbo v0, "low-ram: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2462
    const-string/jumbo v0, "max-cores: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2463
    const-string/jumbo v0, "has-secure-screen-lock: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2466
    :cond_d7
    const/4 v9, 0x0

    .line 2468
    .local v9, "configInfo":Landroid/content/pm/ConfigurationInfo;
    :try_start_d8
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_de} :catch_1c6

    .line 2471
    .end local v9    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .local v0, "configInfo":Landroid/content/pm/ConfigurationInfo;
    nop

    .line 2472
    iget v9, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz v9, :cond_100

    .line 2473
    if-eqz v2, :cond_ef

    .line 2474
    const-wide v9, 0x10d00000008L

    iget v11, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v2, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2477
    :cond_ef
    if-eqz v3, :cond_100

    .line 2478
    const-string/jumbo v9, "opengl-version: 0x"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    iget v9, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    :cond_100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v9

    .line 2484
    .local v9, "glExtensionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 2485
    .local v10, "glExtensions":[Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, [Ljava/lang/String;

    .line 2486
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2487
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_115
    array-length v12, v10

    if-ge v11, v12, :cond_134

    .line 2488
    if-eqz v2, :cond_124

    .line 2489
    const-wide v12, 0x20900000009L

    aget-object v14, v10, v11

    invoke-virtual {v2, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2492
    :cond_124
    if-eqz v3, :cond_131

    .line 2493
    const-string/jumbo v12, "opengl-extensions: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v12, v10, v11

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2487
    :cond_131
    add-int/lit8 v11, v11, 0x1

    goto :goto_115

    .line 2498
    .end local v11    # "i":I
    :cond_134
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2499
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v12

    .line 2500
    .local v12, "slibs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    new-instance v13, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v13}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2501
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_14e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_187

    .line 2502
    if-eqz v2, :cond_16b

    .line 2503
    const-wide v14, 0x2090000000aL

    .line 2504
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/SharedLibraryInfo;

    move-object/from16 v17, v0

    .end local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .local v17, "configInfo":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2503
    invoke-virtual {v2, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_16d

    .line 2502
    .end local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_16b
    move-object/from16 v17, v0

    .line 2506
    .end local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    :goto_16d
    if-eqz v3, :cond_182

    .line 2507
    const-string/jumbo v0, "shared-libraries: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    :cond_182
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_14e

    .end local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_187
    move-object/from16 v17, v0

    .line 2511
    .end local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .end local v13    # "i":I
    .restart local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2512
    .local v0, "features":[Landroid/content/pm/FeatureInfo;
    new-instance v13, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v13}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2519
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_196
    array-length v14, v0

    if-ge v13, v14, :cond_1c0

    .line 2520
    aget-object v14, v0, v13

    iget-object v14, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_1bb

    .line 2521
    if-eqz v2, :cond_1ad

    .line 2522
    const-wide v14, 0x2090000000bL

    aget-object v1, v0, v13

    iget-object v1, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2524
    :cond_1ad
    if-eqz v3, :cond_1bb

    .line 2525
    const-string v1, "features: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v1, v0, v13

    iget-object v1, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    :cond_1bb
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    goto :goto_196

    .line 2530
    .end local v13    # "i":I
    :cond_1c0
    if-eqz v2, :cond_1c5

    .line 2531
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2533
    :cond_1c5
    return-void

    .line 2469
    .end local v0    # "features":[Landroid/content/pm/FeatureInfo;
    .end local v10    # "glExtensions":[Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "slibs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .local v9, "configInfo":Landroid/content/pm/ConfigurationInfo;
    :catch_1c6
    move-exception v0

    .line 2470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2355
    .local v0, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljavax/microedition/khronos/egl/EGL10;

    .line 2356
    .local v13, "egl":Ljavax/microedition/khronos/egl/EGL10;
    if-nez v13, :cond_18

    .line 2357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    return-object v0

    .line 2362
    :cond_18
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v14

    .line 2363
    .local v14, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 2364
    .local v15, "version":[I
    invoke-interface {v13, v14, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 2367
    const/4 v12, 0x1

    new-array v10, v12, [I

    .line 2368
    .local v10, "numConfigs":[I
    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-interface {v13, v14, v1, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2369
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    return-object v0

    .line 2374
    :cond_39
    aget v1, v10, v9

    new-array v8, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 2375
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    aget v1, v10, v9

    invoke-interface {v13, v14, v8, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    return-object v0

    .line 2383
    :cond_4f
    const/4 v1, 0x5

    new-array v4, v1, [I

    fill-array-data v4, :array_d6

    .line 2391
    .local v4, "surfaceSize":[I
    const/16 v16, 0x3098

    .line 2392
    .local v16, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v1, 0x3

    new-array v11, v1, [I

    fill-array-data v11, :array_e4

    .line 2395
    .local v11, "gles2":[I
    new-array v7, v12, [I

    .line 2397
    .local v7, "attrib":[I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_61
    aget v1, v10, v9

    if-ge v6, v1, :cond_d1

    .line 2399
    aget-object v1, v8, v6

    const/16 v2, 0x3027

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2400
    aget v1, v7, v9

    const/16 v2, 0x3050

    if-ne v1, v2, :cond_7b

    .line 2401
    move/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    goto/16 :goto_c8

    .line 2407
    :cond_7b
    aget-object v1, v8, v6

    const/16 v2, 0x3033

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2408
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-nez v1, :cond_8f

    .line 2409
    move/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    goto :goto_c8

    .line 2412
    :cond_8f
    const/16 v17, 0x1

    .line 2413
    .local v17, "EGL_OPENGL_ES_BIT":I
    const/16 v18, 0x4

    .line 2414
    .local v18, "EGL_OPENGL_ES2_BIT":I
    aget-object v1, v8, v6

    const/16 v2, 0x3040

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2415
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-eqz v1, :cond_ab

    .line 2416
    aget-object v3, v8, v6

    const/4 v5, 0x0

    move-object v1, v13

    move-object v2, v14

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_ad

    .line 2415
    .end local v19    # "i":I
    .restart local v6    # "i":I
    :cond_ab
    move/from16 v19, v6

    .line 2418
    .end local v6    # "i":I
    .restart local v19    # "i":I
    :goto_ad
    aget v1, v7, v9

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c3

    .line 2419
    aget-object v1, v8, v19

    move-object v2, v7

    .end local v7    # "attrib":[I
    .local v2, "attrib":[I
    move-object v7, v13

    move-object v3, v8

    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v8, v14

    move v5, v9

    move-object v9, v1

    move-object v1, v10

    .end local v10    # "numConfigs":[I
    .local v1, "numConfigs":[I
    move-object v10, v4

    move v6, v12

    move-object v12, v0

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_c8

    .line 2418
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v7    # "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_c3
    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    .line 2397
    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .end local v17    # "EGL_OPENGL_ES_BIT":I
    .end local v18    # "EGL_OPENGL_ES2_BIT":I
    .restart local v1    # "numConfigs":[I
    .restart local v2    # "attrib":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_c8
    add-int/lit8 v7, v19, 0x1

    move-object v10, v1

    move-object v8, v3

    move v9, v5

    move v12, v6

    move v6, v7

    move-object v7, v2

    .end local v19    # "i":I
    .local v7, "i":I
    goto :goto_61

    .line 2424
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v7, "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_d1
    invoke-interface {v13, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 2426
    return-object v0

    nop

    :array_d6
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_e4
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method getStepSize(IIIZ)I
    .registers 7
    .param p1, "current"    # I
    .param p2, "target"    # I
    .param p3, "inStepSize"    # I
    .param p4, "greaterThanTarget"    # Z

    .line 3020
    const/4 v0, 0x0

    .line 3021
    .local v0, "stepSize":I
    if-eqz p4, :cond_c

    if-ge p2, p1, :cond_c

    .line 3022
    sub-int/2addr p1, p3

    .line 3023
    move v0, p3

    .line 3024
    if-le p2, p1, :cond_c

    .line 3025
    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    .line 3028
    :cond_c
    if-nez p4, :cond_17

    if-le p2, p1, :cond_17

    .line 3029
    add-int/2addr p1, p3

    .line 3030
    move v0, p3

    .line 3031
    if-ge p2, p1, :cond_17

    .line 3032
    sub-int v1, p1, p2

    add-int/2addr v0, v1

    .line 3035
    :cond_17
    return v0
.end method

.method getUidState(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2244
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    .line 2247
    .local v0, "state":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2248
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "PROCESS_STATE_"

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2250
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    return v2
.end method

.method moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;
    .param p3, "stackRect"    # Landroid/graphics/Rect;
    .param p4, "stepSize"    # I
    .param p5, "maxToTravel"    # I
    .param p6, "movingForward"    # Z
    .param p7, "horizontal"    # Z
    .param p8, "delay_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2980
    const/4 v0, 0x0

    if-eqz p6, :cond_44

    .line 2981
    :goto_3
    if-lez p5, :cond_85

    if-eqz p7, :cond_d

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_15

    :cond_d
    if-nez p7, :cond_85

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_85

    .line 2984
    :cond_15
    if-eqz p7, :cond_2c

    .line 2985
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2986
    .local v1, "maxMove":I
    sub-int/2addr p5, v1

    .line 2987
    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2988
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_40

    .line 2990
    .end local v1    # "maxMove":I
    :cond_2c
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2991
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2992
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2993
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2995
    :goto_40
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_3

    .line 2998
    .end local v1    # "maxMove":I
    :cond_44
    :goto_44
    if-gez p5, :cond_85

    if-eqz p7, :cond_4e

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_56

    :cond_4e
    if-nez p7, :cond_85

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_85

    .line 3001
    :cond_56
    if-eqz p7, :cond_6d

    .line 3002
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3003
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 3004
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 3005
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_81

    .line 3007
    .end local v1    # "maxMove":I
    :cond_6d
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3008
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 3009
    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 3010
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 3012
    :goto_81
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_44

    .line 3016
    .end local v1    # "maxMove":I
    :cond_85
    return p5
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 204
    if-nez p1, :cond_7

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 207
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 209
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_5ae

    :cond_16
    goto/16 :goto_40d

    :sswitch_18
    const-string v2, "app-logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x50

    goto/16 :goto_40e

    :sswitch_24
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x28

    goto/16 :goto_40e

    :sswitch_31
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x9

    goto/16 :goto_40e

    :sswitch_3e
    const-string/jumbo v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x22

    goto/16 :goto_40e

    :sswitch_4b
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x41

    goto/16 :goto_40e

    :sswitch_58
    const-string/jumbo v2, "set-stop-user-on-switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x48

    goto/16 :goto_40e

    :sswitch_65
    const-string/jumbo v2, "stop-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x18

    goto/16 :goto_40e

    :sswitch_72
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x39

    goto/16 :goto_40e

    :sswitch_7e
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x42

    goto/16 :goto_40e

    :sswitch_8b
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2c

    goto/16 :goto_40e

    :sswitch_98
    const-string/jumbo v2, "move-to-privatecast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x4d

    goto/16 :goto_40e

    :sswitch_a5
    const-string/jumbo v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xc

    goto/16 :goto_40e

    :sswitch_b2
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1e

    goto/16 :goto_40e

    :sswitch_bf
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2e

    goto/16 :goto_40e

    :sswitch_cb
    const-string/jumbo v2, "refresh-settings-cache"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x44

    goto/16 :goto_40e

    :sswitch_d8
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x40

    goto/16 :goto_40e

    :sswitch_e5
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x21

    goto/16 :goto_40e

    :sswitch_f2
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x12

    goto/16 :goto_40e

    :sswitch_fe
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3d

    goto/16 :goto_40e

    :sswitch_10a
    const-string v2, "compact"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xb

    goto/16 :goto_40e

    :sswitch_116
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x7

    goto/16 :goto_40e

    :sswitch_122
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x11

    goto/16 :goto_40e

    :sswitch_12f
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x14

    goto/16 :goto_40e

    :sswitch_13b
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x13

    goto/16 :goto_40e

    :sswitch_148
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x26

    goto/16 :goto_40e

    :sswitch_155
    const-string/jumbo v2, "set-bg-abusive-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x49

    goto/16 :goto_40e

    :sswitch_162
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3e

    goto/16 :goto_40e

    :sswitch_16f
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xd

    goto/16 :goto_40e

    :sswitch_17c
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3f

    goto/16 :goto_40e

    :sswitch_189
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x16

    goto/16 :goto_40e

    :sswitch_195
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x30

    goto/16 :goto_40e

    :sswitch_1a2
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v4

    goto/16 :goto_40e

    :sswitch_1ae
    const-string/jumbo v2, "logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x4f

    goto/16 :goto_40e

    :sswitch_1bb
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x27

    goto/16 :goto_40e

    :sswitch_1c8
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v3

    goto/16 :goto_40e

    :sswitch_1d4
    const-string/jumbo v2, "memory-factor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x45

    goto/16 :goto_40e

    :sswitch_1e1
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3c

    goto/16 :goto_40e

    :sswitch_1ee
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v5

    goto/16 :goto_40e

    :sswitch_1fa
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3a

    goto/16 :goto_40e

    :sswitch_207
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1a

    goto/16 :goto_40e

    :sswitch_213
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x17

    goto/16 :goto_40e

    :sswitch_21f
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3b

    goto/16 :goto_40e

    :sswitch_22c
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1b

    goto/16 :goto_40e

    :sswitch_239
    const-string/jumbo v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x20

    goto/16 :goto_40e

    :sswitch_246
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1d

    goto/16 :goto_40e

    :sswitch_253
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x4

    goto/16 :goto_40e

    :sswitch_25f
    const-string v2, "clear-exit-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x15

    goto/16 :goto_40e

    :sswitch_26b
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1f

    goto/16 :goto_40e

    :sswitch_278
    const-string/jumbo v2, "list-bg-exemptions-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x4a

    goto/16 :goto_40e

    :sswitch_285
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x34

    goto/16 :goto_40e

    :sswitch_292
    const-string v2, "exit-to-privatecast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x4e

    goto/16 :goto_40e

    :sswitch_29e
    const-string/jumbo v2, "service-restart-backoff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x46

    goto/16 :goto_40e

    :sswitch_2ab
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xe

    goto/16 :goto_40e

    :sswitch_2b8
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x23

    goto/16 :goto_40e

    :sswitch_2c5
    const-string/jumbo v2, "move-to-cast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x4b

    goto/16 :goto_40e

    :sswitch_2d2
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2f

    goto/16 :goto_40e

    :sswitch_2df
    const-string v2, "fgs-notification-rate-limit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x19

    goto/16 :goto_40e

    :sswitch_2eb
    const-string/jumbo v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2d

    goto/16 :goto_40e

    :sswitch_2f8
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1c

    goto/16 :goto_40e

    :sswitch_305
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x32

    goto/16 :goto_40e

    :sswitch_311
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x36

    goto/16 :goto_40e

    :sswitch_31e
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x29

    goto/16 :goto_40e

    :sswitch_32a
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x25

    goto/16 :goto_40e

    :sswitch_337
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x6

    goto/16 :goto_40e

    :sswitch_343
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2b

    goto/16 :goto_40e

    :sswitch_350
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x5

    goto/16 :goto_40e

    :sswitch_35c
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x8

    goto/16 :goto_40e

    :sswitch_369
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x31

    goto/16 :goto_40e

    :sswitch_375
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    goto/16 :goto_40e

    :sswitch_381
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x38

    goto/16 :goto_40e

    :sswitch_38e
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x33

    goto/16 :goto_40e

    :sswitch_39b
    const-string v2, "compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x43

    goto/16 :goto_40e

    :sswitch_3a7
    const-string v2, "exit-cast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x4c

    goto :goto_40e

    :sswitch_3b2
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    goto :goto_40e

    :sswitch_3bd
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2a

    goto :goto_40e

    :sswitch_3c9
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x37

    goto :goto_40e

    :sswitch_3d4
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x24

    goto :goto_40e

    :sswitch_3e0
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x35

    goto :goto_40e

    :sswitch_3eb
    const-string v2, "get-isolated-pids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x47

    goto :goto_40e

    :sswitch_3f6
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x10

    goto :goto_40e

    :sswitch_402
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xf

    goto :goto_40e

    :goto_40d
    move v2, v1

    :goto_40e
    packed-switch v2, :pswitch_data_6f4

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_595

    .line 376
    :pswitch_417
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAppLogging(Ljava/io/PrintWriter;)V

    .line 377
    return v5

    .line 373
    :pswitch_41b
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runLogging(Ljava/io/PrintWriter;)V

    .line 374
    return v5

    .line 370
    :pswitch_41f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowInterface:Landroid/view/IWindowManager;

    invoke-interface {v2, v4, v5}, Landroid/view/IWindowManager;->setScreenProjectionList(II)V

    .line 371
    return v5

    .line 366
    :pswitch_425
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowInterface:Landroid/view/IWindowManager;

    invoke-interface {v2, v4, v4}, Landroid/view/IWindowManager;->setScreenProjectionList(II)V

    .line 367
    return v5

    .line 362
    :pswitch_42b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->exitCastMode()V

    .line 363
    return v5

    .line 358
    :pswitch_431
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->moveTopActivityToCastMode()V

    .line 359
    return v5

    .line 354
    :pswitch_437
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runListBgExemptionsConfig(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 352
    :pswitch_43c
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgAbusiveUids(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 350
    :pswitch_441
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStopUserOnSwitch(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 348
    :pswitch_446
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetIsolatedProcesses(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 346
    :pswitch_44b
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runServiceRestartBackoff(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 344
    :pswitch_450
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMemoryFactor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 342
    :pswitch_455
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRefreshSettingsCache()I

    move-result v1

    return v1

    .line 340
    :pswitch_45a
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompat(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 338
    :pswitch_45f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 336
    :pswitch_464
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 334
    :pswitch_469
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 332
    :pswitch_46e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 330
    :pswitch_473
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 328
    :pswitch_478
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 326
    :pswitch_47d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 324
    :pswitch_482
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 322
    :pswitch_487
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 320
    :pswitch_48c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 318
    :pswitch_491
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 316
    :pswitch_496
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 314
    :pswitch_49b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 312
    :pswitch_4a0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 310
    :pswitch_4a5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 308
    :pswitch_4aa
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 306
    :pswitch_4af
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 304
    :pswitch_4b4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 302
    :pswitch_4b9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 300
    :pswitch_4be
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 298
    :pswitch_4c3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 296
    :pswitch_4c8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 294
    :pswitch_4cd
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 292
    :pswitch_4d2
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 290
    :pswitch_4d7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 288
    :pswitch_4dc
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 286
    :pswitch_4e1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 284
    :pswitch_4e6
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v1

    return v1

    .line 282
    :pswitch_4eb
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v1

    return v1

    .line 280
    :pswitch_4f0
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v1

    return v1

    .line 278
    :pswitch_4f5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 276
    :pswitch_4fa
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 274
    :pswitch_4ff
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 272
    :pswitch_504
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 270
    :pswitch_509
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 268
    :pswitch_50e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 266
    :pswitch_513
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 264
    :pswitch_518
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 262
    :pswitch_51d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 260
    :pswitch_522
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 258
    :pswitch_527
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 256
    :pswitch_52c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runFgsNotificationRateLimit(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 254
    :pswitch_531
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 252
    :pswitch_536
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 250
    :pswitch_53b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 248
    :pswitch_540
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearExitInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 246
    :pswitch_545
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 244
    :pswitch_54a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 242
    :pswitch_54f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 240
    :pswitch_554
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 238
    :pswitch_559
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 236
    :pswitch_55e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 234
    :pswitch_563
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 232
    :pswitch_568
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 229
    :pswitch_56d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    return v1

    .line 227
    :pswitch_577
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompact(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 225
    :pswitch_57c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 223
    :pswitch_581
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 220
    :pswitch_586
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v1

    return v1

    .line 215
    :pswitch_58b
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v1

    return v1

    .line 212
    :pswitch_590
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_594
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_594} :catch_596

    return v1

    .line 380
    :goto_595
    return v1

    .line 382
    :catch_596
    move-exception v2

    .line 383
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

    .line 385
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_5ae
    .sparse-switch
        -0x7e761220 -> :sswitch_402
        -0x7566d004 -> :sswitch_3f6
        -0x6ee359bb -> :sswitch_3eb
        -0x6684cefe -> :sswitch_3e0
        -0x65f435a5 -> :sswitch_3d4
        -0x6366a39f -> :sswitch_3c9
        -0x608449aa -> :sswitch_3bd
        -0x607e173f -> :sswitch_3b2
        -0x546a1972 -> :sswitch_3a7
        -0x50c0cc7e -> :sswitch_39b
        -0x4ef4b7a7 -> :sswitch_38e
        -0x4db101b9 -> :sswitch_381
        -0x436e13b6 -> :sswitch_375
        -0x3bc220e3 -> :sswitch_369
        -0x3988e78d -> :sswitch_35c
        -0x376fe74e -> :sswitch_350
        -0x3619e74c -> :sswitch_343
        -0x3530e48a -> :sswitch_337
        -0x33db6ce6 -> :sswitch_32a
        -0x30697b4a -> :sswitch_31e
        -0x2c900a2b -> :sswitch_311
        -0x29b36e67 -> :sswitch_305
        -0x2420b54e -> :sswitch_2f8
        -0x20b34e72 -> :sswitch_2eb
        -0x1a75f64b -> :sswitch_2df
        -0x171366ac -> :sswitch_2d2
        -0x165edeab -> :sswitch_2c5
        -0x152733fd -> :sswitch_2b8
        -0x12717657 -> :sswitch_2ab
        -0xd7815ae -> :sswitch_29e
        -0xcfac481 -> :sswitch_292
        -0xa310e8a -> :sswitch_285
        -0x8efed14 -> :sswitch_278
        -0x8b4339f -> :sswitch_26b
        -0x83a5383 -> :sswitch_25f
        -0x5ffb810 -> :sswitch_253
        -0x1a6e7d0 -> :sswitch_246
        0x30c072 -> :sswitch_239
        0x323b5e -> :sswitch_22c
        0x363585 -> :sswitch_21f
        0x547b9a4 -> :sswitch_213
        0x5a863a7 -> :sswitch_207
        0x68ac288 -> :sswitch_1fa
        0x68ac462 -> :sswitch_1ee
        0x6c257df -> :sswitch_1e1
        0x80c339b -> :sswitch_1d4
        0xb07b013 -> :sswitch_1c8
        0xe24026e -> :sswitch_1bb
        0x1466cb5f -> :sswitch_1ae
        0x20c2801a -> :sswitch_1a2
        0x251993ad -> :sswitch_195
        0x27c1d6ad -> :sswitch_189
        0x2894b589 -> :sswitch_17c
        0x2b19d394 -> :sswitch_16f
        0x2d9208a0 -> :sswitch_162
        0x2ea76694 -> :sswitch_155
        0x302bd54d -> :sswitch_148
        0x304b5275 -> :sswitch_13b
        0x30b487aa -> :sswitch_12f
        0x310633ae -> :sswitch_122
        0x35abdbf4 -> :sswitch_116
        0x38a73b23 -> :sswitch_10a
        0x3d13bd7d -> :sswitch_fe
        0x404a0027 -> :sswitch_f2
        0x416a9e0f -> :sswitch_e5
        0x434f294b -> :sswitch_d8
        0x465c428a -> :sswitch_cb
        0x48b444b2 -> :sswitch_bf
        0x49b0bd5a -> :sswitch_b2
        0x532d63e7 -> :sswitch_a5
        0x584b9c6c -> :sswitch_98
        0x5e69b6b6 -> :sswitch_8b
        0x607e963c -> :sswitch_7e
        0x63a518c2 -> :sswitch_72
        0x662425d6 -> :sswitch_65
        0x696c1ea0 -> :sswitch_58
        0x6e6f530e -> :sswitch_4b
        0x6ef5269a -> :sswitch_3e
        0x6f0f8fea -> :sswitch_31
        0x7c2bb6c4 -> :sswitch_24
        0x7fb577b3 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_6f4
    .packed-switch 0x0
        :pswitch_590
        :pswitch_590
        :pswitch_58b
        :pswitch_58b
        :pswitch_586
        :pswitch_586
        :pswitch_586
        :pswitch_586
        :pswitch_581
        :pswitch_581
        :pswitch_57c
        :pswitch_577
        :pswitch_56d
        :pswitch_568
        :pswitch_563
        :pswitch_55e
        :pswitch_559
        :pswitch_554
        :pswitch_54f
        :pswitch_54a
        :pswitch_545
        :pswitch_540
        :pswitch_53b
        :pswitch_536
        :pswitch_531
        :pswitch_52c
        :pswitch_527
        :pswitch_522
        :pswitch_51d
        :pswitch_518
        :pswitch_513
        :pswitch_50e
        :pswitch_509
        :pswitch_504
        :pswitch_4ff
        :pswitch_4fa
        :pswitch_4f5
        :pswitch_4f0
        :pswitch_4eb
        :pswitch_4e6
        :pswitch_4e1
        :pswitch_4dc
        :pswitch_4d7
        :pswitch_4d2
        :pswitch_4cd
        :pswitch_4c8
        :pswitch_4c3
        :pswitch_4be
        :pswitch_4b9
        :pswitch_4b4
        :pswitch_4af
        :pswitch_4aa
        :pswitch_4a5
        :pswitch_4a0
        :pswitch_49b
        :pswitch_496
        :pswitch_491
        :pswitch_48c
        :pswitch_487
        :pswitch_482
        :pswitch_47d
        :pswitch_478
        :pswitch_473
        :pswitch_46e
        :pswitch_469
        :pswitch_464
        :pswitch_45f
        :pswitch_45a
        :pswitch_455
        :pswitch_450
        :pswitch_44b
        :pswitch_446
        :pswitch_441
        :pswitch_43c
        :pswitch_437
        :pswitch_431
        :pswitch_42b
        :pswitch_425
        :pswitch_41f
        :pswitch_41b
        :pswitch_417
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 3447
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3448
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    .line 3449
    return-void
.end method

.method runAttachAgent(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3055
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3058
    .local v0, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3060
    .local v1, "agent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 3061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const/4 v2, -0x1

    return v2

    .line 3064
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    const/4 v2, 0x0

    return v2
.end method

.method runBugReport(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    const/4 v0, 0x1

    .line 1208
    .local v0, "fullBugreport":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 1209
    const-string v1, "--progress"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1210
    const/4 v0, 0x0

    .line 1211
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V

    goto :goto_1

    .line 1212
    :cond_17
    const-string v1, "--telephony"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1213
    const/4 v0, 0x0

    .line 1215
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v3, ""

    invoke-interface {v1, v3, v3}, Landroid/app/IActivityManager;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1217
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    const/4 v1, -0x1

    return v1

    .line 1221
    :cond_44
    if-eqz v0, :cond_4b

    .line 1222
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestFullBugReport()V

    .line 1224
    :cond_4b
    const-string v1, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    const/4 v1, 0x0

    return v1
.end method

.method runClearDebugApp(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1165
    return v2
.end method

.method runClearExitInfo(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runClearExitInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const/4 v0, -0x2

    .line 1186
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1187
    .local v1, "packageName":Ljava/lang/String;
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 1188
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 1191
    :cond_24
    move-object v1, v3

    goto :goto_c

    .line 1194
    :cond_26
    const/4 v2, -0x2

    if-ne v0, v2, :cond_35

    .line 1195
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1196
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_33

    .line 1197
    const/4 v4, -0x1

    return v4

    .line 1199
    :cond_33
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1201
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_35
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/AppExitInfoTracker;->clearHistoryProcessExitInfo(Ljava/lang/String;I)V

    .line 1202
    const/4 v2, 0x0

    return v2
.end method

.method runClearWatchHeap(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1177
    .local v6, "proc":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method runCompact(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, "op":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1043
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 1044
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_107

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process record found pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    const-string v3, "full"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_8f

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing full compaction for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1049
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v6, v6, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1050
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished full compaction for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_dd

    .line 1050
    :catchall_89
    move-exception v5

    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v5

    .line 1052
    :cond_8f
    const-string/jumbo v3, "some"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing some compaction for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_b5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1055
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v6, v6, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1056
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_b5 .. :try_end_c2} :catchall_df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished some compaction for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    :goto_dd
    const/4 v3, 0x0

    return v3

    .line 1056
    :catchall_df
    move-exception v5

    :try_start_e0
    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v5

    .line 1059
    :cond_e5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown compact command \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    const/4 v3, -0x1

    return v3

    .line 1044
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_107
    move-exception v4

    :try_start_108
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v4
.end method

.method runCrash(Ljava/io/PrintWriter;)I
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    move-object/from16 v1, p0

    const/4 v0, -0x1

    move v2, v0

    .line 1282
    .local v2, "userId":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v0, :cond_38

    .line 1283
    const-string v0, "--user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    .line 1286
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    return v4

    .line 1291
    :cond_38
    const/4 v5, -0x1

    .line 1292
    .local v5, "pid":I
    const/4 v6, 0x0

    .line 1293
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 1296
    .local v7, "arg":Ljava/lang/String;
    :try_start_3e
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_42} :catch_44

    move v5, v0

    .line 1299
    goto :goto_48

    .line 1297
    :catch_44
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 1298
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v6, v7

    .line 1301
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_48
    const/4 v0, 0x0

    if-ne v2, v4, :cond_54

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getUserIds()[I

    move-result-object v4

    goto :goto_59

    .line 1302
    :cond_54
    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v2, v4, v0

    :goto_59
    nop

    .line 1303
    .local v4, "userIds":[I
    array-length v15, v4

    move v14, v0

    :goto_5c
    if-ge v14, v15, :cond_ad

    aget v13, v4, v14

    .line 1304
    .local v13, "id":I
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v9, "no_debugging_features"

    invoke-virtual {v8, v9, v13}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shell does not have permission to crash packages for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    move/from16 v18, v14

    move/from16 v16, v15

    goto :goto_a8

    .line 1310
    :cond_8c
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v9, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x5

    const-string/jumbo v18, "shell-induced crash"

    move v10, v5

    move-object v11, v6

    move v12, v13

    move/from16 v19, v13

    .end local v13    # "id":I
    .local v19, "id":I
    move-object/from16 v13, v18

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, v17

    invoke-interface/range {v8 .. v15}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 1303
    .end local v19    # "id":I
    :goto_a8
    add-int/lit8 v14, v18, 0x1

    move/from16 v15, v16

    goto :goto_5c

    .line 1313
    :cond_ad
    return v0
.end method

.method runDisplay(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2808
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2809
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_42

    :cond_c
    goto :goto_18

    :pswitch_d
    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_19

    :goto_18
    move v1, v2

    :goto_19
    packed-switch v1, :pswitch_data_48

    .line 2813
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2814
    return v2

    .line 2811
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_data_42
    .packed-switch 0x60e6318c
        :pswitch_d
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3d
    .end packed-switch
.end method

.method runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2865
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2866
    .local v0, "rootTaskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2867
    .local v1, "rootTaskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2868
    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2869
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityTaskManager;->moveRootTaskToDisplay(II)V

    .line 2870
    const/4 v4, 0x0

    return v4
.end method

.method runDumpHeap(Ljava/io/PrintWriter;)I
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 1068
    .local v3, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x1

    .line 1069
    .local v0, "managed":Z
    const/4 v4, 0x0

    .line 1070
    .local v4, "mallocInfo":Z
    const/4 v5, -0x2

    .line 1071
    .local v5, "userId":I
    const/4 v6, 0x0

    move/from16 v16, v6

    move v6, v5

    move v5, v4

    move v4, v0

    .line 1074
    .end local v0    # "managed":Z
    .local v4, "managed":Z
    .local v5, "mallocInfo":Z
    .local v6, "userId":I
    .local v16, "runGc":Z
    :cond_11
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .local v14, "opt":Ljava/lang/String;
    const/4 v13, -0x1

    if-eqz v0, :cond_68

    .line 1075
    const-string v0, "--user"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v6

    .line 1077
    if-ne v6, v13, :cond_11

    .line 1078
    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    return v13

    .line 1081
    :cond_31
    const-string v0, "-n"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1082
    const/4 v4, 0x0

    goto :goto_11

    .line 1083
    :cond_3b
    const-string v0, "-g"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1084
    const/16 v16, 0x1

    goto :goto_11

    .line 1085
    :cond_46
    const-string v0, "-m"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1086
    const/4 v4, 0x0

    .line 1087
    const/4 v5, 0x1

    goto :goto_11

    .line 1089
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    return v13

    .line 1093
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 1094
    .local v12, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "heapFile":Ljava/lang/String;
    if-nez v0, :cond_9b

    .line 1096
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v7

    invoke-static {v7}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 1097
    .local v7, "localDateTime":Ljava/time/LocalDateTime;
    sget-object v8, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v8, v7}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v8

    .line 1098
    .local v8, "logNameTimeString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/local/tmp/heapdump-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".prof"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_9c

    .line 1095
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v8    # "logNameTimeString":Ljava/lang/String;
    :cond_9b
    move-object v11, v0

    .line 1102
    .end local v0    # "heapFile":Ljava/lang/String;
    .local v11, "heapFile":Ljava/lang/String;
    :goto_9c
    const-string/jumbo v0, "w"

    invoke-virtual {v1, v11, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 1103
    .local v17, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v17, :cond_a6

    .line 1104
    return v13

    .line 1107
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 1110
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v10, v0

    .line 1112
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v7, 0x0

    invoke-direct {v15, v0, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 1119
    .local v15, "finishCallback":Landroid/os/RemoteCallback;
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v8, v12

    move v9, v6

    move-object/from16 v18, v10

    .end local v10    # "latch":Ljava/util/concurrent/CountDownLatch;
    .local v18, "latch":Ljava/util/concurrent/CountDownLatch;
    move v10, v4

    move-object/from16 v19, v11

    .end local v11    # "heapFile":Ljava/lang/String;
    .local v19, "heapFile":Ljava/lang/String;
    move v11, v5

    move-object v1, v12

    .end local v12    # "process":Ljava/lang/String;
    .local v1, "process":Ljava/lang/String;
    move/from16 v12, v16

    move v0, v13

    move-object/from16 v13, v19

    move-object/from16 v20, v14

    .end local v14    # "opt":Ljava/lang/String;
    .local v20, "opt":Ljava/lang/String;
    move-object/from16 v14, v17

    invoke-interface/range {v7 .. v15}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v7

    if-nez v7, :cond_102

    .line 1121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HEAP DUMP FAILED on process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    return v0

    .line 1124
    :cond_102
    const-string v0, "Waiting for dump to finish..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 1127
    :try_start_10a
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_10d
    .catch Ljava/lang/InterruptedException; {:try_start_10a .. :try_end_10d} :catch_10e

    .line 1130
    goto :goto_116

    .line 1128
    :catch_10e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1129
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v7, "Caught InterruptedException"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_116
    const/4 v0, 0x0

    return v0
.end method

.method runFgsNotificationRateLimit(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "toggleValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_38

    :cond_c
    goto :goto_21

    :sswitch_d
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_22

    :sswitch_17
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_22

    :goto_21
    const/4 v1, -0x1

    :goto_22
    packed-switch v1, :pswitch_data_42

    .line 1271
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument must be either \'enable\' or \'disable\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1268
    :pswitch_2d
    const/4 v1, 0x0

    .line 1269
    .local v1, "enable":Z
    goto :goto_31

    .line 1265
    .end local v1    # "enable":Z
    :pswitch_2f
    const/4 v1, 0x1

    .line 1266
    .restart local v1    # "enable":Z
    nop

    .line 1274
    :goto_31
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->enableFgsNotificationRateLimit(Z)Z

    .line 1275
    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        -0x4d6ada7d -> :sswitch_17
        0x639e22e8 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2d
    .end packed-switch
.end method

.method runForceStop(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    const/4 v0, -0x1

    .line 1232
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1233
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1236
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    const/4 v1, -0x1

    return v1

    .line 1240
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1241
    const/4 v1, 0x0

    return v1
.end method

.method runGetConfig(Ljava/io/PrintWriter;)I
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2536
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, -0x1

    .line 2537
    .local v0, "days":I
    const/4 v1, 0x0

    .line 2538
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2539
    .local v2, "asProto":Z
    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    .line 2542
    .end local v0    # "days":I
    .end local v1    # "displayId":I
    .end local v2    # "asProto":Z
    .local v9, "days":I
    .local v10, "displayId":I
    .local v11, "asProto":Z
    .local v12, "inclDevice":Z
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_79

    .line 2543
    const-string v0, "--days"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2545
    if-lez v9, :cond_27

    goto :goto_c

    .line 2546
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--days must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2548
    :cond_2f
    const-string v0, "--proto"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2549
    const/4 v11, 0x1

    goto :goto_c

    .line 2550
    :cond_39
    const-string v0, "--device"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2551
    const/4 v12, 0x1

    goto :goto_c

    .line 2552
    :cond_43
    const-string v0, "--display"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2554
    if-ltz v10, :cond_56

    goto :goto_c

    .line 2555
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--display must be a non-negative integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2558
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    return v1

    .line 2563
    :cond_79
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 2564
    .local v14, "config":Landroid/content/res/Configuration;
    if-nez v14, :cond_8b

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Activity manager has no configuration"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    return v1

    .line 2569
    :cond_8b
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/display/DisplayManager;

    .line 2570
    .local v15, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v15, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 2572
    .local v6, "display":Landroid/view/Display;
    if-nez v6, :cond_b9

    .line 2573
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Display does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    return v1

    .line 2577
    :cond_b9
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v0

    .line 2578
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2580
    if-eqz v11, :cond_fc

    .line 2581
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 2582
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v0, 0x10b00000001L

    invoke-virtual {v14, v4, v0, v1, v5}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    .line 2583
    if-eqz v12, :cond_f1

    .line 2584
    const-wide v2, 0x10b00000002L

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v17, v4

    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v17, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    move-object v5, v14

    move-object/from16 v18, v6

    .end local v6    # "display":Landroid/view/Display;
    .local v18, "display":Landroid/view/Display;
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_f7

    .line 2583
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .end local v17    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v18    # "display":Landroid/view/Display;
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_f1
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    .line 2586
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v17    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v18    # "display":Landroid/view/Display;
    :goto_f7
    invoke-virtual/range {v17 .. v17}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2587
    .end local v17    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto/16 :goto_184

    .line 2588
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .end local v18    # "display":Landroid/view/Display;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_fc
    move-object/from16 v16, v5

    move-object/from16 v18, v6

    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v18    # "display":Landroid/view/Display;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v16

    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {v14, v6}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    if-eqz v12, :cond_14a

    .line 2591
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object v5, v14

    move-object/from16 v16, v6

    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_14c

    .line 2590
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    :cond_14a
    move-object/from16 v16, v6

    .line 2594
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    :goto_14c
    if-ltz v9, :cond_184

    .line 2595
    invoke-direct {v7, v9}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object v0

    .line 2596
    .local v0, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2597
    .local v1, "recentConfigSize":I
    if-lez v1, :cond_184

    .line 2598
    const-string/jumbo v2, "recentConfigs:"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15f
    if-ge v2, v1, :cond_184

    .line 2600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2601
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 2600
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    add-int/lit8 v2, v2, 0x1

    goto :goto_15f

    .line 2607
    .end local v0    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    .end local v1    # "recentConfigSize":I
    .end local v2    # "i":I
    :cond_184
    :goto_184
    const/4 v0, 0x0

    return v0
.end method

.method runGetCurrentUser(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result v0

    .line 2053
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_f

    .line 2056
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2057
    const/4 v1, 0x0

    return v1

    .line 2054
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Current user not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method runGetInactive(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2731
    const/4 v0, -0x2

    .line 2734
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 2735
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2736
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2738
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    const/4 v1, -0x1

    return v1

    .line 2742
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2744
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2746
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    const-string v4, "com.android.shell"

    invoke-interface {v3, v1, v0, v4}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 2747
    .local v4, "isIdle":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Idle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    const/4 v5, 0x0

    return v5
.end method

.method runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    const/4 v0, -0x2

    .line 2704
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 2705
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2708
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    const/4 v1, -0x1

    return v1

    .line 2712
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2714
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2716
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    if-eqz v1, :cond_4f

    .line 2717
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2718
    .local v4, "bucket":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2719
    .end local v4    # "bucket":I
    goto :goto_79

    .line 2720
    :cond_4f
    const-string v4, "com.android.shell"

    invoke-interface {v3, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2722
    .local v4, "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/AppStandbyInfo;

    .line 2723
    .local v6, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v7, v6, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2724
    iget v7, v6, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 2725
    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    goto :goto_5d

    .line 2727
    .end local v4    # "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :cond_79
    :goto_79
    const/4 v4, 0x0

    return v4
.end method

.method runGetStartedUserState(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2207
    .local v0, "userId":I
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 2210
    goto :goto_33

    .line 2208
    :catch_1c
    move-exception v1

    .line 2209
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_33
    const/4 v1, 0x0

    return v1
.end method

.method runHang(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, "allowRestart":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 1888
    const-string v1, "--allow-restart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1889
    const/4 v0, 0x1

    goto :goto_1

    .line 1891
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    const/4 v1, -0x1

    return v1

    .line 1896
    :cond_2e
    const-string v1, "Hanging the system..."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1899
    :try_start_36
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_43} :catch_46

    .line 1905
    nop

    .line 1906
    const/4 v1, 0x0

    return v1

    .line 1900
    :catch_46
    move-exception v1

    .line 1901
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hanging failed, since caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not provide a ShellCallback!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1904
    const/4 v3, 0x1

    return v3
.end method

.method runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    const/4 v0, -0x1

    return v0

    .line 1929
    :cond_23
    const-string v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 1931
    const/4 v0, 0x0

    return v0
.end method

.method runIsUserStopped(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2196
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2197
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result v1

    .line 2198
    .local v1, "stopped":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2199
    const/4 v2, 0x0

    return v2
.end method

.method runKill(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    const/4 v0, -0x1

    .line 1320
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1321
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1324
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    const/4 v1, -0x1

    return v1

    .line 1328
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1329
    const/4 v1, 0x0

    return v1
.end method

.method runKillAll(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method runMakeIdle(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    const/4 v0, -0x1

    .line 1341
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1342
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1345
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    const/4 v1, -0x1

    return v1

    .line 1349
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    .line 1350
    const/4 v1, 0x0

    return v1
.end method

.method runMonitor(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    const/4 v0, 0x0

    .line 1668
    .local v0, "gdbPort":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1669
    .local v1, "monkey":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v8, "opt":Ljava/lang/String;
    if-eqz v2, :cond_3c

    .line 1670
    const-string v2, "--gdb"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1671
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1672
    :cond_16
    const-string v2, "-m"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1673
    const/4 v1, 0x1

    goto :goto_2

    .line 1675
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    const/4 v2, -0x1

    return v2

    .line 1680
    :cond_3c
    new-instance v9, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v9

    move-object v4, p1

    move-object v6, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 1682
    .local v2, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    .line 1683
    const/4 v3, 0x0

    return v3
.end method

.method runNoHomeScreen(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3100
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3101
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 3102
    const/4 v1, -0x1

    return v1

    .line 3104
    :cond_8
    const v1, 0x1110185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3105
    const/4 v1, 0x0

    return v1
.end method

.method runPackageImportance(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1961
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v2, "com.android.shell"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1962
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1963
    const/4 v2, 0x0

    return v2
.end method

.method runRefreshSettingsCache()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3114
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->refreshSettingsCache()V

    .line 3115
    const/4 v0, 0x0

    return v0
.end method

.method runRestart(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    const/4 v0, -0x1

    return v0

    .line 1916
    :cond_23
    const-string v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1918
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V

    .line 1919
    const/4 v0, 0x0

    return v0
.end method

.method runRootTaskInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2902
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2903
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2904
    .local v1, "activityType":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    .line 2905
    .local v2, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2906
    const/4 v3, 0x0

    return v3
.end method

.method runRootTaskRemove(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2910
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2911
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2912
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    .line 2913
    const/4 v2, 0x0

    return v2
.end method

.method runScreenCompat(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1937
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1938
    const/4 v1, 0x1

    .local v1, "enabled":Z
    goto :goto_19

    .line 1939
    .end local v1    # "enabled":Z
    :cond_f
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1940
    const/4 v1, 0x0

    .line 1946
    .restart local v1    # "enabled":Z
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1949
    .local v2, "packageName":Ljava/lang/String;
    :cond_1d
    const/4 v3, 0x0

    :try_start_1e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    if-eqz v1, :cond_24

    .line 1950
    const/4 v5, 0x1

    goto :goto_25

    .line 1951
    :cond_24
    move v5, v3

    .line 1949
    :goto_25
    invoke-interface {v4, v2, v5}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    .line 1953
    goto :goto_2a

    .line 1952
    :catch_29
    move-exception v4

    .line 1954
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1955
    if-nez v2, :cond_1d

    .line 1956
    return v3

    .line 1942
    .end local v1    # "enabled":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    const/4 v1, -0x1

    return v1
.end method

.method runSendBroadcast(Ljava/io/PrintWriter;)I
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 860
    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_69

    .line 863
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 864
    const/high16 v3, 0x400000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 865
    new-instance v8, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v8, v2}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    .line 866
    .local v8, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v20, 0x0

    if-nez v3, :cond_1d

    move-object v12, v4

    goto :goto_23

    .line 867
    :cond_1d
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v20

    move-object v12, v5

    :goto_23
    nop

    .line 868
    .local v12, "requiredPermissions":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 870
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    if-nez v3, :cond_44

    move-object/from16 v16, v4

    goto :goto_4a

    :cond_44
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v16, v3

    .line 871
    .local v16, "bundle":Landroid/os/Bundle;
    :goto_4a
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move/from16 v19, v6

    move-object v6, v0

    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 874
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    if-nez v3, :cond_68

    .line 875
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    .line 877
    :cond_68
    return v20

    .line 861
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v8    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .end local v12    # "requiredPermissions":[Ljava/lang/String;
    .end local v16    # "bundle":Landroid/os/Bundle;
    :catch_69
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 862
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method runSendTrimMemory(Ljava/io/PrintWriter;)I
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2752
    const/4 v0, -0x2

    .line 2754
    .local v0, "userId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_40

    .line 2755
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2756
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2757
    if-ne v0, v3, :cond_1

    .line 2758
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: Can\'t use user \'all\'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2759
    return v3

    .line 2762
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2763
    return v3

    .line 2767
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2768
    .local v1, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2770
    .local v4, "levelArg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_e4

    :cond_50
    goto :goto_97

    :sswitch_51
    const-string v5, "HIDDEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    move v5, v6

    goto :goto_98

    :sswitch_5b
    const-string v5, "RUNNING_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x3

    goto :goto_98

    :sswitch_65
    const-string v5, "COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x6

    goto :goto_98

    :sswitch_6f
    const-string v5, "MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x4

    goto :goto_98

    :sswitch_79
    const-string v5, "RUNNING_MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x1

    goto :goto_98

    :sswitch_83
    const-string v5, "BACKGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x2

    goto :goto_98

    :sswitch_8d
    const-string v5, "RUNNING_CRITICAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x5

    goto :goto_98

    :goto_97
    move v5, v3

    :goto_98
    packed-switch v5, :pswitch_data_102

    .line 2794
    :try_start_9b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_9f} :catch_c8

    goto :goto_b4

    .line 2790
    :pswitch_a0
    const/16 v5, 0x50

    .line 2791
    .local v5, "level":I
    goto :goto_b5

    .line 2787
    .end local v5    # "level":I
    :pswitch_a3
    const/16 v5, 0xf

    .line 2788
    .restart local v5    # "level":I
    goto :goto_b5

    .line 2784
    .end local v5    # "level":I
    :pswitch_a6
    const/16 v5, 0x3c

    .line 2785
    .restart local v5    # "level":I
    goto :goto_b5

    .line 2781
    .end local v5    # "level":I
    :pswitch_a9
    const/16 v5, 0xa

    .line 2782
    .restart local v5    # "level":I
    goto :goto_b5

    .line 2778
    .end local v5    # "level":I
    :pswitch_ac
    const/16 v5, 0x28

    .line 2779
    .restart local v5    # "level":I
    goto :goto_b5

    .line 2775
    .end local v5    # "level":I
    :pswitch_af
    const/4 v5, 0x5

    .line 2776
    .restart local v5    # "level":I
    goto :goto_b5

    .line 2772
    .end local v5    # "level":I
    :pswitch_b1
    const/16 v5, 0x14

    .line 2773
    .restart local v5    # "level":I
    goto :goto_b5

    .line 2798
    :goto_b4
    nop

    .line 2800
    :goto_b5
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v7, v1, v0, v5}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 2801
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Unknown error: failed to set trim level"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    return v3

    .line 2804
    :cond_c7
    return v6

    .line 2795
    .end local v5    # "level":I
    :catch_c8
    move-exception v5

    .line 2796
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown level option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2797
    return v3

    :sswitch_data_e4
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_8d
        -0x327dbed2 -> :sswitch_83
        -0xd10205d -> :sswitch_79
        0x9c2ed03 -> :sswitch_6f
        0xaeb2139 -> :sswitch_65
        0x3fef1094 -> :sswitch_5b
        0x7f0191aa -> :sswitch_51
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
    .end packed-switch
.end method

.method runSetAgentApp(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1159
    .local v1, "agent":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const/4 v2, 0x0

    return v2
.end method

.method runSetDebugApp(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "wait":Z
    const/4 v1, 0x0

    .line 1140
    .local v1, "persistent":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_39

    .line 1141
    const-string v2, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1142
    const/4 v0, 0x1

    goto :goto_2

    .line 1143
    :cond_13
    const-string v2, "--persistent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1144
    const/4 v1, 0x1

    goto :goto_2

    .line 1146
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    const/4 v2, -0x1

    return v2

    .line 1151
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v0, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1153
    const/4 v4, 0x0

    return v4
.end method

.method runSetInactive(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    const/4 v0, -0x2

    .line 2620
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 2621
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2622
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2624
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    const/4 v1, -0x1

    return v1

    .line 2628
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2629
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2631
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "usagestats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v4

    .line 2633
    .local v4, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v4, v1, v5, v0}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    .line 2634
    const/4 v5, 0x0

    return v5
.end method

.method runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2663
    const/4 v0, -0x2

    .line 2666
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_35

    .line 2667
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2670
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    return v3

    .line 2674
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2675
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2676
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2677
    .local v5, "bucket":I
    if-gez v5, :cond_44

    return v3

    .line 2678
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    move v3, v6

    .line 2681
    .local v3, "multiple":Z
    :goto_4e
    const-string/jumbo v7, "usagestats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v7

    .line 2683
    .local v7, "usm":Landroid/app/usage/IUsageStatsManager;
    if-nez v3, :cond_63

    .line 2684
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v1, v8, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_93

    .line 2686
    :cond_63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2687
    .local v8, "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    :goto_70
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_8b

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2690
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2691
    if-gez v5, :cond_82

    goto :goto_70

    .line 2692
    :cond_82
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 2694
    :cond_8b
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v9, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2695
    .local v9, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v7, v9, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 2697
    .end local v8    # "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v9    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :goto_93
    return v6
.end method

.method runSetWatchHeap(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1170
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 1171
    .local v7, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method runStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2819
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2820
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_72

    :cond_c
    goto :goto_39

    :sswitch_d
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_3a

    :sswitch_18
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_3a

    :sswitch_23
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto :goto_3a

    :sswitch_2e
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    goto :goto_3a

    :goto_39
    move v1, v2

    :goto_3a
    packed-switch v1, :pswitch_data_84

    .line 2830
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    return v2

    .line 2828
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runRootTaskRemove(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2826
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runRootTaskInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2824
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2822
    :pswitch_6d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :sswitch_data_72
    .sparse-switch
        -0x37b5077c -> :sswitch_2e
        0x3164ae -> :sswitch_23
        0x32b09e -> :sswitch_18
        0x3ceed601 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
    .end packed-switch
.end method

.method runStackList(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2894
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 2895
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 2896
    .local v2, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2897
    .end local v2    # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    goto :goto_a

    .line 2898
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method runStackMoveTask(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2874
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2875
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2876
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2877
    .local v2, "rootTaskIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2878
    .local v3, "rootTaskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2880
    .local v4, "toTopStr":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2881
    const/4 v5, 0x1

    .local v5, "toTop":Z
    goto :goto_28

    .line 2882
    .end local v5    # "toTop":Z
    :cond_1f
    const-string v5, "false"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2883
    const/4 v5, 0x0

    .line 2889
    .restart local v5    # "toTop":Z
    :goto_28
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V

    .line 2890
    const/4 v6, 0x0

    return v6

    .line 2885
    .end local v5    # "toTop":Z
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: bad toTop arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    const/4 v5, -0x1

    return v5
.end method

.method runStartActivity(Ljava/io/PrintWriter;)I
    .registers 28
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 540
    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_3cc

    move-object v15, v0

    .line 543
    .local v15, "intent":Landroid/content/Intent;
    nop

    .line 545
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v14, -0x1

    const/4 v13, 0x1

    if-ne v0, v14, :cond_1b

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    return v13

    .line 550
    :cond_1b
    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_46

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 552
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 553
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_48

    .line 557
    :cond_46
    move-object/from16 v16, v0

    .end local v0    # "mimeType":Ljava/lang/String;
    .local v16, "mimeType":Ljava/lang/String;
    :goto_48
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_fb

    .line 559
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 560
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .local v0, "packageName":Ljava/lang/String;
    goto :goto_b8

    .line 563
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_5d
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 564
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 563
    const-string v9, "ActivityManagerShellCommand"

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "userIdForQuery":I
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/16 v6, 0x0

    move-object v4, v15

    move-object/from16 v5, v16

    move v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 567
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 568
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_e0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_8d

    goto :goto_e0

    .line 572
    :cond_8d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_ae

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    return v13

    .line 578
    :cond_ae
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 580
    .end local v0    # "userIdForQuery":I
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v4, "packageName":Ljava/lang/String;
    :goto_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 582
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v4, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 584
    const-wide/16 v5, 0xfa

    :try_start_da
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_dd
    .catch Ljava/lang/InterruptedException; {:try_start_da .. :try_end_dd} :catch_de

    .line 586
    goto :goto_fb

    .line 585
    :catch_de
    move-exception v0

    goto :goto_fb

    .line 569
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v0    # "userIdForQuery":I
    .restart local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_e0
    :goto_e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Intent does not match any activities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    return v13

    .line 589
    .end local v0    # "userIdForQuery":I
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_fb
    :goto_fb
    const/4 v0, 0x0

    .line 591
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-nez v3, :cond_104

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v4, :cond_133

    .line 592
    :cond_104
    const/4 v4, 0x0

    .line 593
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_111

    .line 594
    const-string/jumbo v5, "w"

    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 595
    if-nez v4, :cond_111

    .line 596
    return v13

    .line 599
    :cond_111
    new-instance v3, Landroid/app/ProfilerInfo;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v0, v3

    .line 603
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 605
    const/high16 v3, 0x10000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    const/16 v17, 0x0

    .line 609
    .local v17, "result":Landroid/app/WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 610
    .local v18, "startTime":J
    const/4 v3, 0x0

    .line 611
    .local v3, "options":Landroid/app/ActivityOptions;
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v4, v14, :cond_165

    .line 612
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 613
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 615
    :cond_165
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v4, :cond_174

    .line 616
    if-nez v3, :cond_16f

    .line 617
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 619
    :cond_16f
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 621
    :cond_174
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v4, :cond_183

    .line 622
    if-nez v3, :cond_17e

    .line 623
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 625
    :cond_17e
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 627
    :cond_183
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v4, v14, :cond_199

    .line 628
    if-nez v3, :cond_18d

    .line 629
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 631
    :cond_18d
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 633
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v4, :cond_199

    .line 634
    invoke-virtual {v3, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 637
    :cond_199
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v4, :cond_1a6

    .line 638
    if-nez v3, :cond_1a3

    .line 639
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 641
    :cond_1a3
    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 643
    :cond_1a6
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    if-eqz v4, :cond_1b3

    .line 644
    if-nez v3, :cond_1b0

    .line 645
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 647
    :cond_1b0
    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 649
    :cond_1b3
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    if-eqz v4, :cond_1c3

    .line 650
    if-nez v3, :cond_1bd

    .line 651
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 653
    :cond_1bd
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    move-object/from16 v20, v3

    goto :goto_1c5

    .line 649
    :cond_1c3
    move-object/from16 v20, v3

    .line 655
    .end local v3    # "options":Landroid/app/ActivityOptions;
    .local v20, "options":Landroid/app/ActivityOptions;
    :goto_1c5
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_201

    .line 656
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 658
    if-eqz v20, :cond_1d9

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :cond_1d9
    move-object/from16 v21, v4

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 656
    const-string v22, "com.android.shell"

    move-object v4, v5

    move-object/from16 v5, v22

    move/from16 v22, v7

    move-object v7, v15

    move/from16 v23, v8

    move-object/from16 v8, v16

    move/from16 v24, v12

    move/from16 v12, v23

    move/from16 v23, v13

    move-object v13, v0

    move/from16 v25, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v21, "intent":Landroid/content/Intent;
    move/from16 v15, v22

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    .line 659
    .end local v17    # "result":Landroid/app/WaitResult;
    .local v3, "result":Landroid/app/WaitResult;
    iget v4, v3, Landroid/app/WaitResult;->result:I

    move-object/from16 v17, v3

    .local v4, "res":I
    goto :goto_228

    .line 661
    .end local v3    # "result":Landroid/app/WaitResult;
    .end local v4    # "res":I
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "result":Landroid/app/WaitResult;
    :cond_201
    move/from16 v24, v12

    move/from16 v23, v13

    move/from16 v25, v14

    move-object/from16 v21, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v21    # "intent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 663
    if-eqz v20, :cond_218

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :cond_218
    move-object v14, v4

    iget v15, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 661
    const-string v7, "com.android.shell"

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v16

    move-object v13, v0

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v4

    .line 665
    .restart local v4    # "res":I
    :goto_228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 666
    .local v5, "endTime":J
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v3, :cond_232

    move-object v3, v2

    goto :goto_236

    :cond_232
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 667
    .local v3, "out":Ljava/io/PrintWriter;
    :goto_236
    const/4 v7, 0x0

    .line 668
    .local v7, "launched":Z
    sparse-switch v4, :sswitch_data_3da

    .line 729
    move-object/from16 v9, v21

    .end local v21    # "intent":Landroid/content/Intent;
    .local v9, "intent":Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity not started, unknown error code "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2fb

    .line 673
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v21    # "intent":Landroid/content/Intent;
    :sswitch_254
    const/4 v7, 0x1

    .line 674
    const-string v8, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    move-object/from16 v9, v21

    goto/16 :goto_2fb

    .line 679
    :sswitch_25e
    const/4 v7, 0x1

    .line 680
    const-string v8, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    move-object/from16 v9, v21

    goto/16 :goto_2fb

    .line 692
    :sswitch_268
    const/4 v7, 0x1

    .line 693
    const-string v8, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    move-object/from16 v9, v21

    goto/16 :goto_2fb

    .line 686
    :sswitch_272
    const/4 v7, 0x1

    .line 687
    const-string v8, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    move-object/from16 v9, v21

    goto/16 :goto_2fb

    .line 670
    :sswitch_27c
    const/4 v7, 0x1

    .line 671
    move-object/from16 v9, v21

    goto/16 :goto_2fb

    .line 698
    :sswitch_281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, unable to resolve "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 700
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 698
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    move-object/from16 v9, v21

    goto :goto_2fb

    .line 703
    :sswitch_29e
    const-string v8, "Error type 3"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 705
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 704
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    move-object/from16 v9, v21

    goto :goto_2fb

    .line 709
    :sswitch_2ca
    const-string v8, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    move-object/from16 v9, v21

    goto :goto_2fb

    .line 714
    :sswitch_2d2
    const-string v8, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    move-object/from16 v9, v21

    goto :goto_2fb

    .line 719
    :sswitch_2da
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, v21

    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    goto :goto_2fb

    .line 724
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v21    # "intent":Landroid/content/Intent;
    :sswitch_2f3
    move-object/from16 v9, v21

    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v8, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    nop

    .line 733
    :goto_2fb
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 734
    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v8, :cond_3b3

    if-eqz v7, :cond_3b3

    .line 735
    if-nez v17, :cond_312

    .line 736
    new-instance v8, Landroid/app/WaitResult;

    invoke-direct {v8}, Landroid/app/WaitResult;-><init>()V

    .line 737
    .end local v17    # "result":Landroid/app/WaitResult;
    .local v8, "result":Landroid/app/WaitResult;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_314

    .line 735
    .end local v8    # "result":Landroid/app/WaitResult;
    .restart local v17    # "result":Landroid/app/WaitResult;
    :cond_312
    move-object/from16 v8, v17

    .line 739
    .end local v17    # "result":Landroid/app/WaitResult;
    .restart local v8    # "result":Landroid/app/WaitResult;
    :goto_314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v8, Landroid/app/WaitResult;->timeout:Z

    if-eqz v11, :cond_327

    const-string/jumbo v11, "timeout"

    goto :goto_32a

    :cond_327
    const-string/jumbo v11, "ok"

    :goto_32a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LaunchState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/app/WaitResult;->launchState:I

    invoke-static {v11}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    iget-object v10, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v10, :cond_371

    .line 742
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    :cond_371
    iget-wide v10, v8, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_391

    .line 745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TotalTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v8, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    :cond_391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WaitTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v5, v18

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const-string v10, "Complete"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    move-object/from16 v17, v8

    .line 751
    .end local v8    # "result":Landroid/app/WaitResult;
    .restart local v17    # "result":Landroid/app/WaitResult;
    :cond_3b3
    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 752
    if-lez v8, :cond_3c0

    .line 753
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v8}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    .line 755
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "res":I
    .end local v5    # "endTime":J
    .end local v7    # "launched":Z
    .end local v17    # "result":Landroid/app/WaitResult;
    .end local v18    # "startTime":J
    .end local v20    # "options":Landroid/app/ActivityOptions;
    :cond_3c0
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v0, :cond_3c5

    .line 756
    return v24

    .line 755
    :cond_3c5
    move-object v15, v9

    move/from16 v13, v23

    move/from16 v14, v25

    goto/16 :goto_48

    .line 541
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "mimeType":Ljava/lang/String;
    :catch_3cc
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 542
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :sswitch_data_3da
    .sparse-switch
        -0x62 -> :sswitch_2f3
        -0x61 -> :sswitch_2da
        -0x5e -> :sswitch_2d2
        -0x5d -> :sswitch_2ca
        -0x5c -> :sswitch_29e
        -0x5b -> :sswitch_281
        0x0 -> :sswitch_27c
        0x1 -> :sswitch_272
        0x2 -> :sswitch_268
        0x3 -> :sswitch_25e
        0x64 -> :sswitch_254
    .end sparse-switch
.end method

.method runStartService(Ljava/io/PrintWriter;Z)I
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "asForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 763
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_e0

    .line 766
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 767
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v10, -0x1

    if-ne v2, v10, :cond_15

    .line 768
    const-string v2, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return v10

    .line 772
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 773
    .local v11, "callingUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_38

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t start from invalid source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    return v10

    .line 778
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 780
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v7, "com.android.shell"

    move-object v4, v1

    move v6, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 782
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_6b

    .line 783
    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    return v10

    .line 785
    :cond_6b
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    return v10

    .line 788
    :cond_92
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Error: "

    if-eqz v3, :cond_b9

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    return v10

    .line 791
    :cond_b9
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    return v10

    .line 795
    :cond_de
    const/4 v3, 0x0

    return v3

    .line 764
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v11    # "callingUid":I
    :catch_e0
    move-exception v1

    .line 765
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStartUser(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2061
    const/4 v0, 0x0

    .line 2063
    .local v0, "wait":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 2064
    const-string v1, "-w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2065
    const/4 v0, 0x1

    goto :goto_1

    .line 2067
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    const/4 v1, -0x1

    return v1

    .line 2071
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2073
    .local v1, "userId":I
    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter-IA;)V

    move-object v3, v4

    .line 2074
    .local v3, "waiter":Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
    :cond_3f
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    .line 2075
    .local v4, "success":Z
    if-eqz v0, :cond_50

    if-eqz v4, :cond_50

    .line 2076
    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->waitForFinish(J)Z

    move-result v4

    .line 2079
    :cond_50
    if-eqz v4, :cond_58

    .line 2080
    const-string v5, "Success: user started"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_61

    .line 2082
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: could not start user"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    :goto_61
    const/4 v5, 0x0

    return v5
.end method

.method runStopApp(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    const/4 v0, 0x0

    .line 1248
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1249
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1252
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    const/4 v1, -0x1

    return v1

    .line 1256
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V

    .line 1257
    const/4 v1, 0x0

    return v1
.end method

.method runStopService(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 802
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_56

    .line 805
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 806
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 807
    const-string v2, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    return v3

    .line 810
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 812
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 813
    .local v2, "result":I
    if-nez v2, :cond_43

    .line 814
    const-string v4, "Service not stopped: was not running."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    return v3

    .line 816
    :cond_43
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4c

    .line 817
    const-string v4, "Service stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    return v3

    .line 819
    :cond_4c
    if-ne v2, v3, :cond_54

    .line 820
    const-string v4, "Error stopping service"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    return v3

    .line 823
    :cond_54
    const/4 v3, 0x0

    return v3

    .line 803
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":I
    :catch_56
    move-exception v1

    .line 804
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStopUser(Ljava/io/PrintWriter;)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2153
    const/4 v0, 0x0

    .line 2154
    .local v0, "wait":Z
    const/4 v1, 0x0

    .line 2156
    .local v1, "force":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_39

    .line 2157
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2158
    const/4 v0, 0x1

    goto :goto_2

    .line 2159
    :cond_14
    const-string v2, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2160
    const/4 v1, 0x1

    goto :goto_2

    .line 2162
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    return v4

    .line 2166
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2167
    .local v2, "user":I
    if-eqz v0, :cond_49

    new-instance v5, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>()V

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    .line 2169
    .local v5, "callback":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    :goto_4a
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v2, v1, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v6

    .line 2170
    .local v6, "res":I
    if-eqz v6, :cond_b0

    .line 2171
    const-string v7, ""

    .line 2172
    .local v7, "txt":Ljava/lang/String;
    packed-switch v6, :pswitch_data_b8

    goto :goto_91

    .line 2177
    :pswitch_58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Unknown user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2178
    goto :goto_91

    .line 2174
    :pswitch_72
    const-string v7, " (Can\'t stop current user)"

    .line 2175
    goto :goto_91

    .line 2180
    :pswitch_75
    const-string v7, " (System user cannot be stopped)"

    .line 2181
    goto :goto_91

    .line 2183
    :pswitch_78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Can\'t stop user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - one of its related users can\'t be stopped)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2187
    :goto_91
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Switch failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    return v4

    .line 2189
    .end local v7    # "txt":Ljava/lang/String;
    :cond_b0
    if-eqz v5, :cond_b5

    .line 2190
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V

    .line 2192
    :cond_b5
    const/4 v4, 0x0

    return v4

    nop

    :pswitch_data_b8
    .packed-switch -0x4
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_58
    .end packed-switch
.end method

.method runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3069
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3070
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 3071
    const/4 v1, -0x1

    return v1

    .line 3073
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3074
    const/4 v1, 0x0

    return v1
.end method

.method runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3078
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3079
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 3080
    const/4 v1, -0x1

    return v1

    .line 3082
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3083
    const/4 v1, 0x0

    return v1
.end method

.method runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2611
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2612
    .local v0, "suppress":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->suppressResizeConfigChanges(Z)V

    .line 2613
    const/4 v1, 0x0

    return v1
.end method

.method runSwitchUser(Ljava/io/PrintWriter;)I
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2015
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result v1

    .line 2016
    .local v1, "userSwitchable":I
    const/4 v2, -0x1

    if-eqz v1, :cond_2e

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    return v2

    .line 2020
    :cond_2e
    const/4 v3, 0x0

    .line 2022
    .local v3, "wait":Z
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    if-eqz v4, :cond_5b

    .line 2023
    const-string v4, "-w"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2024
    const/4 v3, 0x1

    goto :goto_2f

    .line 2026
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    return v2

    .line 2031
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2033
    .local v2, "userId":I
    const-wide/16 v6, 0x40

    const-string/jumbo v4, "shell_runSwitchUser"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2035
    if-eqz v3, :cond_72

    .line 2036
    :try_start_6d
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z

    move-result v4

    .local v4, "switched":Z
    goto :goto_78

    .line 2038
    .end local v4    # "switched":Z
    :cond_72
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v4
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_93

    .line 2040
    .restart local v4    # "switched":Z
    :goto_78
    const/4 v8, 0x0

    if-eqz v4, :cond_80

    .line 2041
    nop

    .line 2047
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2041
    return v8

    .line 2043
    :cond_80
    :try_start_80
    const-string v9, "Error: Failed to switch to user %d\n"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {p1, v9, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_93

    .line 2044
    nop

    .line 2047
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2044
    return v10

    .line 2047
    .end local v4    # "switched":Z
    :catchall_93
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2048
    throw v4
.end method

.method runTask(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2918
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2919
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2920
    :cond_12
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2921
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2922
    :cond_20
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2923
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2924
    :cond_2e
    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2927
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    const/4 v1, -0x1

    return v1
.end method

.method runTaskFocus(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3039
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3040
    .local v0, "taskId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V

    .line 3042
    const/4 v1, 0x0

    return v1
.end method

.method runTaskLock(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2933
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2934
    .local v0, "taskIdStr":Ljava/lang/String;
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2935
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_1c

    .line 2937
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2938
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V

    .line 2940
    .end local v1    # "taskId":I
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, ""

    goto :goto_35

    :cond_32
    const-string/jumbo v2, "not "

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "in lockTaskMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const/4 v1, 0x0

    return v1
.end method

.method runTaskResize(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2955
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2956
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2957
    .local v1, "taskId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2958
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_19

    .line 2959
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    const/4 v3, -0x1

    return v3

    .line 2962
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    .line 2963
    return v3
.end method

.method runTaskResizeable(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2946
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2947
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2948
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2949
    .local v2, "resizeableStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2950
    .local v3, "resizeableMode":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityTaskManager;->setTaskResizeable(II)V

    .line 2951
    const/4 v4, 0x0

    return v4
.end method

.method runToUri(Ljava/io/PrintWriter;I)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    const/4 v0, -0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_5} :catch_f

    .line 1972
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1973
    invoke-virtual {v0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    const/4 v1, 0x0

    return v1

    .line 1970
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_f
    move-exception v0

    .line 1971
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method runTraceIpc(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 883
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 884
    :cond_12
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 887
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown trace ipc command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    const/4 v1, -0x1

    return v1
.end method

.method runTraceIpcStart(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    const-string v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 895
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method runTraceIpcStop(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 902
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 903
    .local v1, "filename":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_31

    .line 904
    const-string v2, "--dump-file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 905
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 907
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    return v4

    .line 911
    :cond_31
    if-nez v1, :cond_39

    .line 912
    const-string v2, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    return v4

    .line 917
    :cond_39
    const-string/jumbo v2, "w"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 918
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_43

    .line 919
    return v4

    .line 922
    :cond_43
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v5, v2}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 923
    const-string v5, "STOP TRACE FAILED."

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    return v4

    .line 927
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    const/4 v4, 0x0

    return v4
.end method

.method runTrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2215
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runTrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2218
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_21

    .line 2219
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 2220
    const-string v1, "Association tracking started."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 2222
    :cond_21
    const-string v1, "Association tracking already enabled."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2225
    const/4 v0, 0x0

    return v0

    .line 2224
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUnlockUser(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2106
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2107
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "!"

    if-nez v2, :cond_25

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2108
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: token parameter not supported"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    return v3

    .line 2111
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2112
    .local v2, "secret":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: secret parameter not supported"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    return v3

    .line 2117
    :cond_3f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, v4, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v3

    .line 2118
    .local v3, "success":Z
    if-eqz v3, :cond_4e

    .line 2119
    const-string v4, "Success: user unlocked"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_57

    .line 2123
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: could not unlock user"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    :goto_57
    const/4 v4, 0x0

    return v4
.end method

.method runUntrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2229
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runUntrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2232
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2233
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 2234
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2235
    const-string v1, "Association tracking stopped."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 2237
    :cond_28
    const-string v1, "Association tracking not running."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2240
    return v2

    .line 2239
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3087
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 3088
    .local v0, "userid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3089
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 3092
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 3094
    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 3095
    const-string v2, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const/4 v2, 0x0

    return v2
.end method

.method runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3109
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;)V

    .line 3110
    const/4 v0, 0x0

    return v0
.end method

.method runWatchUids(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1868
    const/4 v0, -0x1

    .line 1869
    .local v0, "uid":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1870
    const-string v1, "--oom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1873
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    const/4 v1, -0x1

    return v1

    .line 1879
    :cond_35
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v3, p1, v4, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V

    .line 1880
    .local v1, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    .line 1881
    const/4 v3, 0x0

    return v3
.end method

.method runWrite(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3046
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->flushRecentTasks()V

    .line 3049
    const-string v0, "All tasks persisted."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const/4 v0, 0x0

    return v0
.end method

.method taskResize(ILandroid/graphics/Rect;IZ)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delay_ms"    # I
    .param p4, "pretendUserResize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2968
    move v0, p4

    .line 2969
    .local v0, "resizeMode":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 2971
    int-to-long v1, p3

    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2973
    goto :goto_c

    .line 2972
    :catch_b
    move-exception v1

    .line 2974
    :goto_c
    return-void
.end method
