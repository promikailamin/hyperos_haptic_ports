.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;
.super Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.source "VirtualDeviceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2

    .line 812
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    return-void
.end method


# virtual methods
.method public createVirtualDevice(Landroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
    .registers 10

    .line 817
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 823
    const-string/jumbo v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 824
    invoke-virtual {p1}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "virtual device name must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    move-result-object v1

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 827
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    .line 825
    invoke-static/range {v1 .. v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->-$$Nest$mcreateVirtualDevice(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/companion/AssociationInfo;Landroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p1

    .line 832
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V

    return-object v0

    .line 820
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Missing CREATE_VIRTUAL_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllPersistentDeviceIds()Ljava/util/Set;
    .registers 2

    .line 995
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 996
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmActiveAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 997
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
    .registers 2

    .line 892
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getBaseVirtualDisplayFlags()I

    move-result p0

    return p0
.end method

.method public getDeviceIdForDisplayId(I)I
    .registers 2

    .line 942
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    move-result p0

    return p0
.end method

.method public getDeviceIdsForUid(I)Landroid/util/ArraySet;
    .registers 6

    .line 849
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    .line 850
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    .line 851
    :goto_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 852
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 853
    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isAppRunningOnVirtualDevice(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 854
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2c
    return-object v0
.end method

.method public getDeviceOwnerUid(I)I
    .registers 2

    .line 837
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 838
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getOwnerUid()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public getDimDurationMillisForDeviceId(I)J
    .registers 2

    .line 968
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, -0x1

    return-wide p0

    .line 969
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDimDurationMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public getDisplayIdsForDevice(I)Landroid/util/ArraySet;
    .registers 2

    .line 934
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-nez p0, :cond_e

    .line 935
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 936
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayIds()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;-><init>()V

    .line 937
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPersistentIdForDevice(I)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    .line 986
    const-string p0, "default:0"

    return-object p0

    .line 989
    :cond_5
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 990
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredLocaleListForUid(I)Landroid/os/LocaleList;
    .registers 5

    .line 899
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 900
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 901
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 902
    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isAppRunningOnVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 903
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenOffTimeoutMillisForDeviceId(I)J
    .registers 2

    .line 974
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, -0x1

    return-wide p0

    .line 975
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getScreenOffTimeoutMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;
    .registers 3

    .line 843
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 844
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getVirtualSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAppRunningOnAnyVirtualDevice(I)Z
    .registers 5

    .line 911
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 912
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 913
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isAppRunningOnVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    return v0
.end method

.method public isInputDeviceOwnedByVirtualDevice(I)Z
    .registers 5

    .line 922
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 923
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 924
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 925
    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isInputDeviceOwnedByVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    return v0
.end method

.method public isValidVirtualDeviceId(I)Z
    .registers 2

    .line 980
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->isValidVirtualDeviceId(I)Z

    move-result p0

    return p0
.end method

.method public onAuthenticationPrompt(I)V
    .registers 7

    .line 881
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 882
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 883
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    const v2, 0x104017c

    .line 886
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    .line 884
    invoke-virtual {v1, p1, v2, v4, v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(IIILandroid/os/Looper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method public onVirtualDisplayCreated(Landroid/companion/virtual/IVirtualDevice;ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V
    .registers 5

    .line 863
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 864
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result p1

    .line 863
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 866
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onVirtualDisplayCreated(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V

    :cond_11
    return-void
.end method

.method public onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 3

    .line 872
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 873
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result p1

    .line 872
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 875
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onVirtualDisplayRemoved(I)V

    :cond_11
    return-void
.end method

.method public registerAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V
    .registers 3

    .line 1003
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1004
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmAppsOnVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public registerPersistentDeviceIdRemovedListener(Ljava/util/function/Consumer;)V
    .registers 3

    .line 1019
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1020
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmPersistentDeviceIdRemovedListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public unregisterAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V
    .registers 3

    .line 1011
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1012
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmAppsOnVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1013
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
