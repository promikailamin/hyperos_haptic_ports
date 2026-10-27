.class public final Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
.super Ljava/lang/Object;
.source "DeviceStateSensorOrientationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;,
        Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$DeviceState;
    }
.end annotation


# static fields
.field public static final whitelist FOLDED:J = 0x4L

.field public static final whitelist NORMAL:J


# instance fields
.field private final blacklist mDeviceStateOrientationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mElements:[J


# direct methods
.method private constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mElements:[J

    .line 124
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 125
    iget-object v1, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mElements:[J

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 127
    :cond_23
    iput-object p2, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    .line 128
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor blacklist <init>([J)V
    .registers 8

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mElements:[J

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    .line 101
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5e

    .line 106
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_5d

    .line 107
    add-int/lit8 v1, v0, 0x1

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x5a

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_42

    .line 112
    iget-object v2, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v0, v0, 0x2

    goto :goto_1a

    .line 108
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor orientation not divisible by 90: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_5d
    return-void

    .line 102
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device state sensor orientation map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not even!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 159
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 160
    return v0

    .line 162
    :cond_4
    if-ne p0, p1, :cond_8

    .line 163
    const/4 p1, 0x1

    return p1

    .line 165
    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    if-eqz v1, :cond_17

    .line 166
    check-cast p1, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    .line 167
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mElements:[J

    iget-object p1, p1, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mElements:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 169
    :cond_17
    return v0
.end method

.method public whitelist getSensorOrientation(J)I
    .registers 6

    .line 141
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 145
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 142
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid device state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->mElements:[J

    filled-new-array {v0}, [[J

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
