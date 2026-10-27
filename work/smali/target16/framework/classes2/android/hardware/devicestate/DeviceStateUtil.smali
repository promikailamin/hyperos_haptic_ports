.class public Landroid/hardware/devicestate/DeviceStateUtil;
.super Ljava/lang/Object;
.source "DeviceStateUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateBaseStateIdentifier(Landroid/hardware/devicestate/DeviceState;Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/devicestate/DeviceState;",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p0

    .line 46
    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 48
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 49
    goto :goto_3b

    .line 51
    :cond_20
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v1

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 51
    invoke-static {v1, v2}, Landroid/hardware/devicestate/DeviceStateUtil;->isDeviceStateMatchingPhysicalProperties(Ljava/util/Set;Landroid/hardware/devicestate/DeviceState;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    return p0

    .line 46
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 56
    :cond_3e
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist isDeviceStateMatchingPhysicalProperties(Ljava/util/Set;Landroid/hardware/devicestate/DeviceState;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/devicestate/DeviceState;",
            ")Z"
        }
    .end annotation

    .line 66
    nop

    .line 67
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 68
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 70
    const/4 p0, 0x0

    return p0

    .line 73
    :cond_1d
    const/4 p0, 0x1

    return p0
.end method
