.class public final Landroid/hardware/devicestate/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceState$Configuration;,
        Landroid/hardware/devicestate/DeviceState$SystemDeviceStateProperties;,
        Landroid/hardware/devicestate/DeviceState$PhysicalDeviceStateProperties;,
        Landroid/hardware/devicestate/DeviceState$DeviceStateProperties;
    }
.end annotation


# static fields
.field public static final blacklist PROPERTY_APP_INACCESSIBLE:I = 0x9

.field public static final whitelist PROPERTY_EMULATED_ONLY:I = 0xa

.field public static final whitelist PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY:I = 0xf

.field public static final whitelist PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT:I = 0x11

.field public static final whitelist PROPERTY_FEATURE_REAR_DISPLAY:I = 0x10

.field public static final blacklist PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT:I = 0x3e9

.field public static final whitelist PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY:I = 0xc

.field public static final whitelist PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY:I = 0xb

.field public static final whitelist PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED:I = 0x1

.field public static final whitelist PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN:I = 0x2

.field public static final whitelist PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN:I = 0x3

.field public static final whitelist PROPERTY_LAPTOP_HARDWARE_CONFIGURATION_DOCKED:I = 0x68

.field public static final whitelist PROPERTY_LAPTOP_HARDWARE_CONFIGURATION_LID_CLOSED:I = 0x65

.field public static final whitelist PROPERTY_LAPTOP_HARDWARE_CONFIGURATION_LID_OPEN:I = 0x66

.field public static final whitelist PROPERTY_LAPTOP_HARDWARE_CONFIGURATION_SLATE:I = 0x67

.field public static final blacklist PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST:I = 0x8

.field public static final blacklist PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS:I = 0x4

.field public static final blacklist PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP:I = 0x5

.field public static final blacklist PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE:I = 0x7

.field public static final blacklist PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL:I = 0x6

.field public static final whitelist PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP:I = 0xd

.field public static final whitelist PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE:I = 0xe


# instance fields
.field private final blacklist mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V
    .registers 3

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const-string v0, "Device StateConfiguration is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 300
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 328
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 329
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 330
    :cond_11
    check-cast p1, Landroid/hardware/devicestate/DeviceState;

    .line 331
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    iget-object p1, p1, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 329
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    return-object v0
.end method

.method public whitelist getIdentifier()I
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist hasProperties([I)Z
    .registers 5

    .line 351
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_11

    .line 352
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 353
    return v0

    .line 351
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 356
    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist hasProperty(I)Z
    .registers 4

    .line 343
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->-$$Nest$fgetmSystemProperties(Landroid/hardware/devicestate/DeviceState$Configuration;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->-$$Nest$fgetmPhysicalProperties(Landroid/hardware/devicestate/DeviceState$Configuration;)Landroid/util/ArraySet;

    move-result-object v0

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    .line 343
    :goto_24
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState{identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 317
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_accessible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 318
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v1

    .line 319
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 318
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancel_when_requester_not_on_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 321
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v1

    .line 322
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 321
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method
