.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BcRadioSrv"


# instance fields
.field private final mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field private final mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

.field private mV1Modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHal1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHal2(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmV1Modules(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 50
    iput-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    .line 55
    new-instance v1, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {v1, v0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 56
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/BroadcastRadioService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/BroadcastRadioService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v1

    .line 58
    .local v1, "max":Ljava/util/OptionalInt;
    new-instance v2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 59
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    invoke-direct {v2, v3, v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 60
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const-string v1, "broadcastradio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    return-void
.end method
