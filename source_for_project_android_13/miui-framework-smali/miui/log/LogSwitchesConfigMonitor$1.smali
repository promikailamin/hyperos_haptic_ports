.class Lmiui/log/LogSwitchesConfigMonitor$1;
.super Landroid/os/FileObserver;
.source "LogSwitchesConfigMonitor.java"


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
.method constructor blacklist <init>(Lmiui/log/LogSwitchesConfigMonitor;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lmiui/log/LogSwitchesConfigMonitor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I

    .line 60
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v0}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fgetlogSwitchesFileName(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 64
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    monitor-enter v0

    .line 65
    :try_start_f
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v1}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fgetapplier(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;

    move-result-object v2

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v3}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fgetlogSwitchesFilePath(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/log/LogSwitchesConfigMonitor;->-$$Nest$fputcurrentLogSwitchesConfig(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)V

    .line 66
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v1

    .line 68
    :cond_27
    :goto_27
    return-void
.end method
