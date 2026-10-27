.class public abstract Landroid/hardware/input/VirtualInputDeviceConfig;
.super Ljava/lang/Object;
.source "VirtualInputDeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_NAME_MAX_LENGTH:I = 0x50


# instance fields
.field private final blacklist mAssociatedDisplayId:I

.field private final blacklist mInputDeviceName:Ljava/lang/String;

.field private final blacklist mProductId:I

.field private final blacklist mVendorId:I


# direct methods
.method protected constructor whitelist <init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmVendorId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    .line 61
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmProductId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    .line 62
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmAssociatedDisplayId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    .line 63
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmInputDeviceName(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Missing device name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->createVirtualKeyboardApi()Z

    move-result p1

    if-nez p1, :cond_37

    .line 67
    iget p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2f

    goto :goto_37

    .line 68
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Display association is required for virtual input devices."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_37
    :goto_37
    iget-object p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0x50

    if-ge p1, v0, :cond_45

    .line 80
    return-void

    .line 77
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input device name exceeds maximum length of 80bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Missing device name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .registers 2

    .line 162
    const-string v0, ""

    return-object v0
.end method

.method public blacklist checkForAssociatedDisplay()V
    .registers 3

    .line 136
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->getAssociatedDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 140
    return-void

    .line 137
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display association is required for virtual devices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAssociatedDisplayId()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    return v0
.end method

.method public whitelist getInputDeviceName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    return v0
.end method

.method public whitelist getVendorId()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(  name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " associatedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->additionalFieldsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 143
    iget p2, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p2, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object p2, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 147
    return-void
.end method
