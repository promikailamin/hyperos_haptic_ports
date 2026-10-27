.class public Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;
.super Landroid/os/vibrator/IVibrationSessionCallback$Stub;
.source "VibratorManagerService.java"


# instance fields
.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mDeathBinder:Landroid/os/IBinder;

.field public final mHandler:Landroid/os/Handler;

.field public final mPrinter:Ljava/io/PrintWriter;

.field public final mReason:Ljava/lang/String;

.field public final mVibration:Landroid/os/CombinedVibration;


# direct methods
.method public static synthetic $r8$lambda$f-kRq6fT2wwLST5vqgas46scTBY(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;Landroid/os/vibrator/IVibrationSession;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->lambda$onStarted$0(Landroid/os/vibrator/IVibrationSession;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/io/PrintWriter;Landroid/os/IBinder;Landroid/os/CombinedVibration;Ljava/lang/String;)V
    .registers 8

    .line 3008
    invoke-direct {p0}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;-><init>()V

    .line 3005
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3009
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mHandler:Landroid/os/Handler;

    .line 3010
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mPrinter:Ljava/io/PrintWriter;

    .line 3011
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mDeathBinder:Landroid/os/IBinder;

    .line 3012
    iput-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mVibration:Landroid/os/CombinedVibration;

    .line 3013
    iput-object p5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 3018
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mDeathBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public final synthetic lambda$onStarted$0(Landroid/os/vibrator/IVibrationSession;)V
    .registers 3

    .line 3028
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mPrinter:Ljava/io/PrintWriter;

    const-string v0, "Finishing session..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    invoke-interface {p1}, Landroid/os/vibrator/IVibrationSession;->finishSession()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 3031
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onFinished(I)V
    .registers 5

    .line 3043
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mPrinter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    invoke-static {p1}, Landroid/os/vibrator/VendorVibrationSession;->sessionStatusToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3043
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onFinishing()V
    .registers 2

    .line 3038
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mPrinter:Ljava/io/PrintWriter;

    const-string v0, "Session finishing..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onStarted(Landroid/os/vibrator/IVibrationSession;)V
    .registers 4

    .line 3023
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mPrinter:Ljava/io/PrintWriter;

    const-string v1, "Session started, vibrating..."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mVibration:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mReason:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/os/vibrator/IVibrationSession;->vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V

    .line 3026
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;Landroid/os/vibrator/IVibrationSession;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public waitForEnd()V
    .registers 1

    .line 3050
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
