.class public Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$triggerType:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;I)V
    .registers 5

    .line 19968
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$uid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$triggerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 19971
    :try_start_0
    invoke-static {}, Landroid/os/ProfilingServiceHelper;->getInstance()Landroid/os/ProfilingServiceHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$uid:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$16;->val$triggerType:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/ProfilingServiceHelper;->onProfilingTriggerOccurred(ILjava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 19975
    const-string v0, "ActivityManager"

    const-string v1, "Profiling trigger not sent due to Service not running."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
