.class public Lcom/android/server/SerialService$1;
.super Landroid/hardware/SerialManagerInternal;
.source "SerialService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SerialService;


# direct methods
.method public constructor <init>(Lcom/android/server/SerialService;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-direct {p0}, Landroid/hardware/SerialManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addVirtualSerialPortForTest(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 7

    .line 119
    iget-object v0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-static {v0}, Lcom/android/server/SerialService;->-$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-static {v1}, Lcom/android/server/SerialService;->-$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Port %s already defined"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const-string/jumbo v1, "virtual:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Port %s must be under %s"

    const-string/jumbo v3, "virtual:"

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object p0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-static {p0}, Lcom/android/server/SerialService;->-$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public removeVirtualSerialPortForTest(Ljava/lang/String;)V
    .registers 6

    .line 130
    iget-object v0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-static {v0}, Lcom/android/server/SerialService;->-$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 131
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-static {v1}, Lcom/android/server/SerialService;->-$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Port %s not yet defined"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v1, "virtual:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Port %s must be under %s"

    const-string/jumbo v3, "virtual:"

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-static {p0}, Lcom/android/server/SerialService;->-$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw p0
.end method
