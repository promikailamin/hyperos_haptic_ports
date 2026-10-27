.class final Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;
.super Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 2

    .line 901
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelStateRequest()V
    .registers 5

    .line 946
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 950
    .local v0, "callingPid":I
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$massertCanControlDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 954
    .local v1, "callingIdentity":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v3, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_17

    .line 956
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DeviceStateManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 971
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 973
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v2, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 975
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    nop

    .line 977
    return-void

    .line 975
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    throw v2
.end method

.method public getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 3

    .line 904
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 905
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 906
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "result"    # Landroid/os/ResultReceiver;

    .line 963
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 964
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 965
    return-void
.end method

.method public registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 911
    if-eqz p1, :cond_19

    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 916
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 918
    .local v1, "token":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v3, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 920
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    nop

    .line 922
    return-void

    .line 920
    :catchall_14
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    throw v3

    .line 912
    .end local v0    # "callingPid":I
    .end local v1    # "token":J
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device state callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestState(Landroid/os/IBinder;II)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "flags"    # I

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 930
    .local v0, "callingPid":I
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$massertCanRequestDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;II)V

    .line 932
    if-eqz p1, :cond_1e

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 938
    .local v1, "callingIdentity":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v3, p2, p3, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIILandroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 940
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    nop

    .line 942
    return-void

    .line 940
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v3

    .line 933
    .end local v1    # "callingIdentity":J
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request token must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
