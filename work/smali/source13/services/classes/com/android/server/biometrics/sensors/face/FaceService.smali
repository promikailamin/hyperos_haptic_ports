.class public Lcom/android/server/biometrics/sensors/face/FaceService;
.super Lcom/android/server/SystemService;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FaceService"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 744
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 745
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 746
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 747
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    .line 749
    return-void
.end method

.method public static native acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;
.end method

.method private getProviderForSensor(I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .registers 5
    .param p1, "sensorId"    # I

    .line 93
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 94
    .local v1, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->containsSensor(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 95
    return-object v1

    .line 97
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_19
    goto :goto_6

    .line 98
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSensorProperties()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 130
    .local v2, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    .end local v2    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    goto :goto_b

    .line 132
    :cond_1f
    return-object v0
.end method

.method private getSingleProvider()Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FaceService"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_29

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple sensors found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v2

    .line 115
    :cond_29
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 116
    .local v1, "sensorId":I
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 117
    .local v5, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v5, v1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->containsSensor(I)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 118
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 120
    .end local v5    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_54
    goto :goto_38

    .line 122
    :cond_55
    const-string v4, "Single sensor, but provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v2
.end method

.method public static native releaseSurfaceHandle(Landroid/os/NativeHandle;)V
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 754
    return-void
.end method
