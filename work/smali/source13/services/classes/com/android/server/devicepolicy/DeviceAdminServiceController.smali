.class public Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.super Ljava/lang/Object;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "constants"    # Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 83
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 84
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 87
    return-void
.end method

.method private disconnectServiceOnUserLocked(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "actionForLog"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 170
    .local v0, "conn":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    if-eqz v0, :cond_12

    .line 175
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->unbind()V

    .line 176
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 178
    :cond_12
    return-void
.end method

.method private findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 95
    const-class v4, Landroid/app/admin/DeviceAdminService;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 101
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v2, "android.app.action.DEVICE_ADMIN_SERVICE"

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 184
    monitor-exit v0

    return-void

    .line 186
    :cond_d
    const-string v1, "Owner Services:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 189
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 190
    .local v2, "userId":I
    const-string v3, "User: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 192
    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 193
    .local v3, "con":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 194
    const-string v4, ""

    invoke-virtual {v3, v4, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 195
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 188
    nop

    .end local v2    # "userId":I
    .end local v3    # "con":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 197
    .end local v1    # "i":I
    :cond_43
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public startServiceForOwner(Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "actionForLog"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 113
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_42

    .line 114
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 115
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_19

    .line 120
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 121
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_3f

    .line 149
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 121
    return-void

    .line 124
    :cond_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 125
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PersistentConnection;

    .line 126
    .local v4, "existing":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<Landroid/app/admin/IDeviceAdminService;>;"
    if-eqz v4, :cond_26

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 142
    :cond_26
    new-instance v5, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 144
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v5, p0, p2, v6}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;-><init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V

    .line 145
    .local v5, "conn":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->bind()V

    .line 147
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v4    # "existing":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<Landroid/app/admin/IDeviceAdminService;>;"
    .end local v5    # "conn":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_3f

    .line 149
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 150
    nop

    .line 151
    return-void

    .line 147
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "actionForLog":Ljava/lang/String;
    :try_start_41
    throw v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 149
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "actionForLog":Ljava/lang/String;
    :catchall_42
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 150
    throw v2
.end method

.method public stopServiceForOwner(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "actionForLog"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 159
    .local v0, "token":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    .line 160
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 161
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    .line 163
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 164
    nop

    .line 165
    return-void

    .line 161
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .end local p1    # "userId":I
    .end local p2    # "actionForLog":Ljava/lang/String;
    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 163
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .restart local p1    # "userId":I
    .restart local p2    # "actionForLog":Ljava/lang/String;
    :catchall_17
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 164
    throw v2
.end method
