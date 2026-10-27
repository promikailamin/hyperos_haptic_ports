.class Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;
.super Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ServiceConfigAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerFlagsOriginPrioritiesSupplier"
.end annotation


# instance fields
.field private final mServerFlags:Lcom/android/server/timedetector/ServerFlags;


# direct methods
.method private constructor <init>(Lcom/android/server/timedetector/ServerFlags;)V
    .registers 3
    .param p1, "serverFlags"    # Lcom/android/server/timedetector/ServerFlags;

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier-IA;)V

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/ServerFlags;

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timedetector/ServerFlags;Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    return-void
.end method


# virtual methods
.method protected lookupPriorityStrings()[Ljava/lang/String;
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "time_detector_origin_priorities_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalStringArray(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 227
    .local v0, "priorityStrings":Ljava/util/Optional;, "Ljava/util/Optional<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
