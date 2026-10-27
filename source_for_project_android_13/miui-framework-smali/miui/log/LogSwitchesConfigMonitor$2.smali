.class Lmiui/log/LogSwitchesConfigMonitor$2;
.super Ljava/lang/Object;
.source "LogSwitchesConfigMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/log/LogSwitchesConfigMonitor;


# direct methods
.method constructor blacklist <init>(Lmiui/log/LogSwitchesConfigMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/log/LogSwitchesConfigMonitor;

    .line 77
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 80
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v1}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fgetapplier(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;

    move-result-object v2

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v3}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fgetlogSwitchesFilePath(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fputcurrentLogSwitchesConfig(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)V

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
