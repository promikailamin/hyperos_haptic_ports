.class Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderCheckPoint"
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mCallerProcessId:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;ILjava/lang/String;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/power/ShutdownCheckPoints$Injector;
    .param p2, "callerProcessId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 289
    invoke-direct {p0, p1, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    .line 290
    iput p2, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    .line 291
    invoke-interface {p1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->activityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mActivityManager:Landroid/app/IActivityManager;

    .line 292
    return-void
.end method


# virtual methods
.method dumpDetails(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "methodName":Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, "Failed to get method name"

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "processName":Ljava/lang/String;
    const-string v2, "From process "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    if-nez v1, :cond_1b

    const-string v2, "?"

    goto :goto_1c

    :cond_1b
    move-object v2, v1

    :goto_1c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method getOrigin()Ljava/lang/String;
    .registers 2

    .line 296
    const-string v0, "BINDER"

    return-object v0
.end method

.method getProcessName()Ljava/lang/String;
    .registers 6

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mActivityManager:Landroid/app/IActivityManager;

    .line 314
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 316
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v4, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    if-ne v3, v4, :cond_1f

    .line 317
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_21

    return-object v1

    .line 319
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1f
    goto :goto_a

    .line 322
    .end local v0    # "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_20
    goto :goto_29

    .line 320
    :catch_21
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ShutdownCheckPoints"

    const-string v2, "Failed to get running app processes from ActivityManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method
