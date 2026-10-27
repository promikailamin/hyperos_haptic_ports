.class abstract Landroid/hardware/input/VirtualTouchDeviceConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualTouchDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    .line 37
    invoke-virtual {p0}, Landroid/hardware/input/VirtualTouchDeviceConfig;->checkForAssociatedDisplay()V

    .line 39
    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmWidth(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    .line 40
    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmHeight(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result p1

    iput p1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    .line 41
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {p0}, Landroid/hardware/input/VirtualTouchDeviceConfig;->checkForAssociatedDisplay()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    .line 49
    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    return v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 63
    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget p2, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
