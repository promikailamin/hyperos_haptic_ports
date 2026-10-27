.class public Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$-Ano8h-ZUDbanb1qv6XuLTPsimU(Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->lambda$onLimitReached$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 9258
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public final handleLimitReached(I)V
    .registers 10

    .line 9266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sent too many Binders to uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9267
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9266
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 9268
    invoke-static {}, Landroid/os/BinderProxy;->dumpProxyDebugInfo()V

    .line 9269
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->logExcessiveBinderCalls(I)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_36

    .line 9271
    const-string p0, "Skipping kill (uid is SYSTEM)"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9273
    :cond_36
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v6, 0x1d

    const-string v7, "Too many Binders sent to SYSTEM"

    const/16 v5, 0x9

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mkillUid(Lcom/android/server/am/ActivityManagerService;IIIILjava/lang/String;)V

    .line 9287
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p0

    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    return-void
.end method

.method public final synthetic lambda$onLimitReached$0(I)V
    .registers 2

    .line 9262
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->handleLimitReached(I)V

    return-void
.end method

.method public onLimitReached(I)V
    .registers 5

    .line 9262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinderProxy Dump: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onWarningThresholdReached(I)V
    .registers 3

    .line 9293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sent too many ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1676

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") Binders to uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9294
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9293
    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x355

    .line 9295
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method
