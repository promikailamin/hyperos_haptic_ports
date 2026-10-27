.class public Lcom/android/server/SerialService;
.super Landroid/hardware/ISerialManager$Stub;
.source "SerialService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInternal:Landroid/hardware/SerialManagerInternal;

.field public final mSerialPorts:Ljava/util/LinkedHashMap;


# direct methods
.method public static synthetic $r8$lambda$LK872c4oRhwS3trdsecKSyuUPUM(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 60
    invoke-static {p0}, Lcom/android/server/SerialService;->tryOpen(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternal(Lcom/android/server/SerialService;)Landroid/hardware/SerialManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/SerialService;->mInternal:Landroid/hardware/SerialManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSerialPorts(Lcom/android/server/SerialService;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 53
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/ISerialManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 115
    new-instance v1, Lcom/android/server/SerialService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SerialService$1;-><init>(Lcom/android/server/SerialService;)V

    iput-object v1, p0, Lcom/android/server/SerialService;->mInternal:Landroid/hardware/SerialManagerInternal;

    .line 54
    iput-object p1, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    .line 56
    monitor-enter v0

    .line 57
    :try_start_18
    invoke-static {p1}, Lcom/android/server/SerialService;->getSerialPorts(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 58
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    .line 59
    iget-object v4, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :catchall_2f
    move-exception p0

    goto :goto_33

    .line 63
    :cond_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public static getSerialPorts(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tryOpen(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 142
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    sget v1, Landroid/system/OsConstants;->O_NOCTTY:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SerialService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .registers 5

    .line 88
    invoke-super {p0}, Landroid/hardware/ISerialManager$Stub;->getSerialPorts_enforcePermission()V

    .line 90
    iget-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 91
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    const-string/jumbo v3, "virtual:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_4a

    .line 94
    :cond_38
    :goto_38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 97
    :cond_3c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 98
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_36

    throw p0
.end method

.method public openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 103
    invoke-super {p0}, Landroid/hardware/ISerialManager$Stub;->openSerialPort_enforcePermission()V

    .line 105
    iget-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 106
    :try_start_6
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Supplier;

    if-eqz p0, :cond_1a

    .line 108
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    goto :goto_31

    .line 110
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid serial port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_18

    throw p0
.end method
