.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;
.super Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;
.source "VirtualDeviceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2

    .line 794
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceIdForDisplayId(I)I
    .registers 2

    .line 808
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    move-result p0

    return p0
.end method

.method public getDeviceIdsForUid(I)[I
    .registers 2

    .line 797
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmLocalService(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getDevicePolicy(II)I
    .registers 3

    .line 803
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDevicePolicy(II)I

    move-result p0

    return p0
.end method
