.class public abstract Landroid/bluetooth/BluetoothProfileConnector;
.super Ljava/lang/Object;
.source "BluetoothProfileConnector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;


# instance fields
.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mProfileId:I

.field private final blacklist mProfileName:Ljava/lang/String;

.field private final blacklist mProfileProxy:Landroid/bluetooth/BluetoothProfile;

.field private volatile blacklist mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProfileId(Landroid/bluetooth/BluetoothProfileConnector;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileProxy(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoBind(Landroid/bluetooth/BluetoothProfileConnector;)Z
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothProfileConnector;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDebug(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const/4 v0, -0x3

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothProfileConnector;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "profileId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 112
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    .line 57
    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$1;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 92
    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$2;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    .line 113
    iput p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    .line 114
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    .line 115
    iput-object p3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private blacklist doBind()Z
    .registers 8

    .line 128
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-nez v1, :cond_69

    .line 130
    const-string v1, "Binding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v2, "doUnbind"

    invoke-virtual {v1, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_6c

    .line 133
    const/4 v1, 0x0

    :try_start_14
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothProfileConnector;->resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    .line 135
    .local v3, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    if-eqz v3, :cond_38

    iget-object v4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/bluetooth/BluetoothProfileConnector;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_38

    .line 144
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "comp":Landroid/content/ComponentName;
    :cond_37
    goto :goto_69

    .line 138
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "comp":Landroid/content/ComponentName;
    :cond_38
    :goto_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_4e} :catch_50
    .catchall {:try_start_14 .. :try_end_4e} :catchall_6c

    .line 139
    :try_start_4e
    monitor-exit v0

    return v1

    .line 141
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "comp":Landroid/content/ComponentName;
    :catch_50
    move-exception v2

    .line 142
    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    .line 143
    monitor-exit v0

    return v1

    .line 146
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_69
    :goto_69
    monitor-exit v0

    .line 147
    const/4 v0, 0x1

    return v0

    .line 146
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private blacklist doUnbind()V
    .registers 6

    .line 151
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 153
    const-string v1, "Unbinding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3e

    .line 156
    const/4 v1, 0x0

    :try_start_12
    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1e
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    .line 160
    :try_start_19
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_3e

    .line 161
    :goto_1b
    goto :goto_3c

    .line 160
    :catchall_1c
    move-exception v2

    goto :goto_38

    .line 157
    :catch_1e
    move-exception v2

    .line 158
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    .line 160
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :try_start_35
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    goto :goto_1b

    :goto_38
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    .line 161
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    throw v2

    .line 163
    .restart local p0    # "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private blacklist logDebug(Ljava/lang/String;)V
    .registers 3
    .param p1, "log"    # Ljava/lang/String;

    .line 217
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method private blacklist logError(Ljava/lang/String;)V
    .registers 3
    .param p1, "log"    # Ljava/lang/String;

    .line 221
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method private blacklist resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 70
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    nop

    .line 71
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    .line 70
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_f

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_f
    const/4 v1, 0x0

    .line 76
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 78
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_28

    .line 79
    goto :goto_3a

    .line 81
    :cond_28
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v4, "foundComp":Landroid/content/ComponentName;
    if-nez v1, :cond_3d

    .line 87
    move-object v1, v4

    .line 76
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 84
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_3d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    .end local v2    # "i":I
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_6a
    return-object v1
.end method


# virtual methods
.method blacklist connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 167
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 169
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 174
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_27

    .line 175
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_27

    .line 177
    :cond_1f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need BLUETOOTH permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_27
    :goto_27
    if-eqz v0, :cond_46

    .line 182
    :try_start_29
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 185
    goto :goto_46

    .line 183
    :catch_2f
    move-exception v1

    .line 184
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register state change callback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    .line 187
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_46
    :goto_46
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    .line 188
    return-void
.end method

.method blacklist disconnect()V
    .registers 5

    .line 191
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 192
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 193
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_2a

    .line 195
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 198
    goto :goto_2a

    .line 196
    :catch_13
    move-exception v1

    .line 197
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister state change callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    .line 200
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    .line 201
    return-void
.end method

.method public whitelist test-api finalize()V
    .registers 2

    .line 122
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 123
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    .line 124
    return-void
.end method

.method blacklist getService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 204
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract blacklist getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
