.class public final Landroid/hardware/devicestate/DeviceState$Configuration$Builder;
.super Ljava/lang/Object;
.source "DeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceState$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mIdentifier:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mPhysicalProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    nop

    .line 497
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mSystemProperties:Ljava/util/Set;

    .line 498
    nop

    .line 500
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mPhysicalProperties:Ljava/util/Set;

    .line 503
    iput p1, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mIdentifier:I

    .line 504
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mName:Ljava/lang/String;

    .line 505
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/devicestate/DeviceState$Configuration;
    .registers 7

    .line 529
    new-instance v0, Landroid/hardware/devicestate/DeviceState$Configuration;

    iget v1, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mIdentifier:I

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mName:Ljava/lang/String;

    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mSystemProperties:Ljava/util/Set;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mPhysicalProperties:Ljava/util/Set;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/devicestate/DeviceState$Configuration;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/hardware/devicestate/DeviceState-IA;)V

    return-object v0
.end method

.method public blacklist setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/devicestate/DeviceState$Configuration$Builder;"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mPhysicalProperties:Ljava/util/Set;

    .line 520
    return-object p0
.end method

.method public blacklist setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/devicestate/DeviceState$Configuration$Builder;"
        }
    .end annotation

    .line 511
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->mSystemProperties:Ljava/util/Set;

    .line 512
    return-object p0
.end method
