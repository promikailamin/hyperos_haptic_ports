.class public final Landroid/view/Display$HdrCapabilities;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdrCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities$HdrType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HDR_TYPES:[I

.field public static final whitelist HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final whitelist HDR_TYPE_HDR10:I = 0x2

.field public static final whitelist HDR_TYPE_HDR10_PLUS:I = 0x4

.field public static final whitelist HDR_TYPE_HLG:I = 0x3

.field public static final whitelist HDR_TYPE_INVALID:I = -0x1

.field public static final whitelist INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private greylist-max-o mMaxAverageLuminance:F

.field private greylist-max-o mMaxLuminance:F

.field private greylist-max-o mMinLuminance:F

.field private greylist-max-o mSupportedHdrTypes:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F
    .registers 1

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F
    .registers 1

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F
    .registers 1

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2932
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    .line 3032
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2950
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2951
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2952
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2953
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2959
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2950
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2951
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2952
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2953
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 3045
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 3046
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-r <init>([IFFF)V
    .registers 6

    .line 2966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2950
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2951
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2952
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2953
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2967
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2968
    iget-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2969
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2970
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2971
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2972
    return-void
.end method

.method public static blacklist hdrTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 3092
    packed-switch p0, :pswitch_data_12

    .line 3102
    const-string p0, "HDR_TYPE_INVALID"

    return-object p0

    .line 3100
    :pswitch_6
    const-string p0, "HDR_TYPE_HDR10_PLUS"

    return-object p0

    .line 3098
    :pswitch_9
    const-string p0, "HDR_TYPE_HLG"

    return-object p0

    .line 3096
    :pswitch_c
    const-string p0, "HDR_TYPE_HDR10"

    return-object p0

    .line 3094
    :pswitch_f
    const-string p0, "HDR_TYPE_DOLBY_VISION"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3075
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3007
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3008
    return v0

    .line 3011
    :cond_4
    instance-of v1, p1, Landroid/view/Display$HdrCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3012
    return v2

    .line 3014
    :cond_a
    check-cast p1, Landroid/view/Display$HdrCapabilities;

    .line 3016
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v3, p1, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    iget v3, p1, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2f

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    iget v3, p1, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2f

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    iget p1, p1, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    return v0
.end method

.method public whitelist getDesiredMaxAverageLuminance()F
    .registers 2

    .line 2996
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return v0
.end method

.method public whitelist getDesiredMaxLuminance()F
    .registers 2

    .line 2990
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return v0
.end method

.method public whitelist getDesiredMinLuminance()F
    .registers 2

    .line 3002
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return v0
.end method

.method public whitelist getSupportedHdrTypes()[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2984
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3024
    nop

    .line 3025
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    const/16 v1, 0x187

    add-int/2addr v1, v0

    .line 3026
    mul-int/lit8 v1, v1, 0x11

    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 3027
    mul-int/lit8 v1, v1, 0x11

    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 3028
    mul-int/lit8 v1, v1, 0x11

    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 3029
    return v1
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 3052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3053
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 3054
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_16

    .line 3055
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 3054
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3057
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 3058
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 3059
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 3060
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrCapabilities{mSupportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 3081
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAverageLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3080
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 3064
    iget-object p2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    const/4 p2, 0x0

    :goto_7
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v0, v0

    if-ge p2, v0, :cond_16

    .line 3066
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 3068
    :cond_16
    iget p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3069
    iget p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3070
    iget p2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3071
    return-void
.end method
