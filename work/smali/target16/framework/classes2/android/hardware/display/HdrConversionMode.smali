.class public final Landroid/hardware/display/HdrConversionMode;
.super Ljava/lang/Object;
.source "HdrConversionMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/HdrConversionMode$ConversionMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/HdrConversionMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HDR_CONVERSION_FORCE:I = 0x3

.field public static final whitelist HDR_CONVERSION_PASSTHROUGH:I = 0x1

.field public static final whitelist HDR_CONVERSION_SYSTEM:I = 0x2

.field public static final whitelist HDR_CONVERSION_UNSUPPORTED:I


# instance fields
.field private final blacklist mConversionMode:I

.field private blacklist mPreferredHdrOutputType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/hardware/display/HdrConversionMode$1;

    invoke-direct {v0}, Landroid/hardware/display/HdrConversionMode$1;-><init>()V

    sput-object v0, Landroid/hardware/display/HdrConversionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    .line 101
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    .line 102
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_b

    :cond_8
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 95
    :cond_b
    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    .line 96
    iput p2, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    .line 97
    return-void

    .line 91
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferredHdrOutputType must not be set if the conversion mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-static {p1}, Landroid/hardware/display/HdrConversionMode;->hdrConversionModeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    .line 106
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/HdrConversionMode-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist equals(Landroid/hardware/display/HdrConversionMode;)Z
    .registers 4

    .line 147
    if-eqz p1, :cond_14

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    .line 148
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    .line 149
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result p1

    if-ne v0, p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 147
    :goto_15
    return p1
.end method

.method private static blacklist hdrConversionModeString(I)Ljava/lang/String;
    .registers 1

    .line 153
    packed-switch p0, :pswitch_data_10

    .line 161
    const-string p0, "HDR_CONVERSION_UNSUPPORTED"

    return-object p0

    .line 159
    :pswitch_6
    const-string p0, "HDR_CONVERSION_FORCE"

    return-object p0

    .line 157
    :pswitch_9
    const-string p0, "HDR_CONVERSION_SYSTEM"

    return-object p0

    .line 155
    :pswitch_c
    const-string p0, "HDR_CONVERSION_PASSTHROUGH"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 131
    instance-of v0, p1, Landroid/hardware/display/HdrConversionMode;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p0, p1}, Landroid/hardware/display/HdrConversionMode;->equals(Landroid/hardware/display/HdrConversionMode;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist getConversionMode()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    return v0
.end method

.method public whitelist getPreferredHdrOutputType()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrConversionMode{ConversionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/display/HdrConversionMode;->hdrConversionModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PreferredHdrOutputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display$HdrCapabilities;->hdrTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 125
    iget p2, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
