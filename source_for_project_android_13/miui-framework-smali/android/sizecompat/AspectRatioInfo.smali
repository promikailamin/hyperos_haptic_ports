.class public Landroid/sizecompat/AspectRatioInfo;
.super Ljava/lang/Object;
.source "AspectRatioInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sizecompat/AspectRatioInfo$Builder;,
        Landroid/sizecompat/AspectRatioInfo$AspectGravity;,
        Landroid/sizecompat/AspectRatioInfo$ScaleMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/sizecompat/AspectRatioInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_GRAVITY:I = 0x11

.field public static final blacklist GRAVITY_BOTTOM:I = 0x50

.field public static final blacklist GRAVITY_CENTER:I = 0x11

.field public static final blacklist GRAVITY_TOP:I = 0x30

.field public static final blacklist RATIO_16_TO_9:F = 1.7777778f

.field public static final blacklist RATIO_4_TO_3:F = 1.3333333f

.field public static final blacklist RATIO_FULLSCREEN:F = 0.0f

.field public static final blacklist RATIO_UNDEFINED:F = -1.0f

.field public static final blacklist SCALE_MODE_DISABLE:I = 0x3

.field public static final blacklist SCALE_MODE_LANDSCAPE:I = 0x1

.field public static final blacklist SCALE_MODE_PORTRAIT:I = 0x2

.field public static final blacklist SCALE_MODE_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AspectRatioInfo"

.field public static final blacklist UNDEFINED:F = -1.0f


# instance fields
.field public blacklist mApplicationName:Ljava/lang/String;

.field public blacklist mAspectRatio:F

.field public blacklist mGravity:I

.field public blacklist mLastAspectRatio:F

.field public blacklist mPkgName:Ljava/lang/String;

.field private blacklist mScaleMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Landroid/sizecompat/AspectRatioInfo$1;

    invoke-direct {v0}, Landroid/sizecompat/AspectRatioInfo$1;-><init>()V

    sput-object v0, Landroid/sizecompat/AspectRatioInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Landroid/sizecompat/AspectRatioInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/sizecompat/AspectRatioInfo$Builder;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 46
    iget-object v0, p1, Landroid/sizecompat/AspectRatioInfo$Builder;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Landroid/sizecompat/AspectRatioInfo$Builder;->mApplicationName:Ljava/lang/String;

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    .line 48
    iget v0, p1, Landroid/sizecompat/AspectRatioInfo$Builder;->mAspectRatio:F

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    .line 49
    iget v0, p1, Landroid/sizecompat/AspectRatioInfo$Builder;->mGravity:I

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    .line 50
    invoke-static {p1}, Landroid/sizecompat/AspectRatioInfo$Builder;->-$$Nest$fgetmScaleMode(Landroid/sizecompat/AspectRatioInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/sizecompat/AspectRatioInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/sizecompat/AspectRatioInfo;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 100
    iget-object v0, p1, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    .line 102
    iget v0, p1, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 103
    iget v0, p1, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    .line 104
    iget v0, p1, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    .line 105
    iget v0, p1, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;F)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "ratio"    # F

    .line 88
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Landroid/sizecompat/AspectRatioInfo;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FI)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "ratio"    # F
    .param p3, "gravity"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 82
    iput-object p1, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    .line 83
    iput p2, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    .line 84
    iput p3, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 92
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Landroid/sizecompat/AspectRatioInfo;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ratio"    # F

    .line 96
    const/16 v0, 0x11

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/sizecompat/AspectRatioInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FI)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;FI)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "gravity"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 75
    iput-object p1, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    .line 77
    iput p3, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    .line 78
    iput p4, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    .line 79
    return-void
.end method

.method public static blacklist isGravityEffect(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .line 189
    and-int/lit8 v0, p0, 0x71

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isValidScaleModeStr(Ljava/lang/String;)Z
    .registers 5
    .param p0, "scaleModeStr"    # Ljava/lang/String;

    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_8
    const/4 v0, 0x0

    .line 247
    .local v0, "result":Z
    :try_start_9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_13

    .line 248
    .local v1, "scaleMode":I
    packed-switch v1, :pswitch_data_2e

    goto :goto_12

    .line 253
    :pswitch_11
    const/4 v0, 0x1

    .line 257
    .end local v1    # "scaleMode":I
    :goto_12
    goto :goto_2c

    .line 255
    :catch_13
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AspectRatioInfo"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static blacklist parseScaleModeStr(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 228
    packed-switch p0, :pswitch_data_14

    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_8
    const-string v0, "SCALE_MODE_DISABLE"

    return-object v0

    .line 234
    :pswitch_b
    const-string v0, "SCALE_MODE_PORTRAIT"

    return-object v0

    .line 232
    :pswitch_e
    const-string v0, "SCALE_MODE_LANDSCAPE"

    return-object v0

    .line 230
    :pswitch_11
    const-string v0, "SCALE_MODE_UNDEFINED"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAspectRatio()F
    .registers 2

    .line 195
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    return v0
.end method

.method public blacklist getLastAspectRatio()F
    .registers 3

    .line 199
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_9

    const/high16 v0, -0x40800000    # -1.0f

    :cond_9
    return v0
.end method

.method public blacklist getRatioStr()Ljava/lang/String;
    .registers 3

    .line 216
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_a

    .line 217
    const-string v0, "\u5168\u5c4f"

    return-object v0

    .line 219
    :cond_a
    const v1, 0x3faaaaaa

    cmpl-float v1, v0, v1

    if-nez v1, :cond_14

    .line 220
    const-string v0, "4:3"

    return-object v0

    .line 222
    :cond_14
    const v1, 0x3fe38e39

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1e

    .line 223
    const-string v0, "16:9"

    return-object v0

    .line 225
    :cond_1e
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScaleMode()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    return v0
.end method

.method public blacklist setAspectRatio(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .line 203
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    .line 204
    iput p1, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    .line 205
    return-void
.end method

.method public blacklist setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .line 208
    iput p1, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 209
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AspectRatioInfo{mPkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mApplicationName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScaleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    .line 266
    invoke-static {v1}, Landroid/sizecompat/AspectRatioInfo;->parseScaleModeStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastAspectRatio= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroid/sizecompat/AspectRatioInfo;->mApplicationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mScaleMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/sizecompat/AspectRatioInfo;->mLastAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    return-void
.end method
