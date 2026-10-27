.class public Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.source "ShutdownCheckPoints.java"


# instance fields
.field public final mCallerProcessId:I


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .registers 5

    .line 275
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    .line 276
    iput p3, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    return-void
.end method


# virtual methods
.method public dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
    .registers 4

    .line 286
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findMethodName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 287
    const-string v0, "Failed to get method name"

    :cond_8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    invoke-interface {p1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->activityManager()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->findProcessName(Landroid/app/IActivityManager;)Ljava/lang/String;

    move-result-object p1

    .line 290
    const-string v0, "From process "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p1, :cond_1c

    .line 291
    const-string p1, "?"

    :cond_1c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findProcessName(Landroid/app/IActivityManager;)Ljava/lang/String;
    .registers 7

    .line 299
    const-string v0, "ShutdownCheckPoints"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 300
    :try_start_5
    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    goto :goto_23

    :catch_a
    move-exception p0

    goto :goto_3e

    .line 302
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ActivityManager to find name of process with pid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_23
    if-eqz p1, :cond_43

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 307
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v4, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    if-ne v3, v4, :cond_29

    .line 308
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3d} :catch_a

    return-object p0

    .line 313
    :goto_3e
    const-string p1, "Failed to get running app processes from ActivityManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    return-object v1
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 1

    .line 281
    const-string p0, "BINDER"

    return-object p0
.end method
