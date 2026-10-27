.class public final Landroid/companion/virtual/camera/VirtualCameraSessionConfig;
.super Ljava/lang/Object;
.source "VirtualCameraSessionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/camera/VirtualCameraSessionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSessionParams:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/camera/VirtualCameraSessionConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/camera/VirtualCameraSessionConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 99
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 100
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 101
    :cond_11
    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;

    .line 102
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    iget-object p1, p1, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 100
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getSessionParameters()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 87
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;->mSessionParams:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 88
    return-void
.end method
