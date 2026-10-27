.class Lcom/android/server/SmartStorageMaintIdler$1;
.super Ljava/lang/Object;
.source "SmartStorageMaintIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartStorageMaintIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SmartStorageMaintIdler;


# direct methods
.method constructor <init>(Lcom/android/server/SmartStorageMaintIdler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SmartStorageMaintIdler;

    .line 39
    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 42
    const-string v0, "SmartStorageMaintIdler"

    const-string v1, "Got smart storage maintenance service completion callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    invoke-static {v0}, Lcom/android/server/SmartStorageMaintIdler;->-$$Nest$fgetmStarted(Lcom/android/server/SmartStorageMaintIdler;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 44
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    invoke-static {v0}, Lcom/android/server/SmartStorageMaintIdler;->-$$Nest$fgetmJobParams(Lcom/android/server/SmartStorageMaintIdler;)Landroid/app/job/JobParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SmartStorageMaintIdler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 45
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    invoke-static {v0, v2}, Lcom/android/server/SmartStorageMaintIdler;->-$$Nest$fputmStarted(Lcom/android/server/SmartStorageMaintIdler;Z)V

    .line 48
    :cond_1e
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-static {v0, v1}, Lcom/android/server/SmartStorageMaintIdler;->scheduleSmartIdlePass(Landroid/content/Context;I)V

    .line 50
    return-void
.end method
