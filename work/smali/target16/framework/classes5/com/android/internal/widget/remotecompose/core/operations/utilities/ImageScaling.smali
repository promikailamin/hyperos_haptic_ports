.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;
.super Ljava/lang/Object;
.source "ImageScaling.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_FIXED_SCALE:I = 0x7

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCALE_NONE:I


# instance fields
.field private blacklist mDstBottom:F

.field private blacklist mDstLeft:F

.field private blacklist mDstRight:F

.field private blacklist mDstTop:F

.field public blacklist mFinalDstBottom:F

.field public blacklist mFinalDstLeft:F

.field public blacklist mFinalDstRight:F

.field public blacklist mFinalDstTop:F

.field private blacklist mScaleFactor:F

.field private blacklist mScaleType:I

.field private blacklist mSrcBottom:F

.field private blacklist mSrcLeft:F

.field private blacklist mSrcRight:F

.field private blacklist mSrcTop:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FFFFFFFFIF)V
    .registers 11

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    .line 67
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    .line 68
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    .line 69
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    .line 70
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    .line 71
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    .line 72
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    .line 73
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    .line 74
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    .line 75
    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->adjustDrawToType()V

    .line 77
    return-void
.end method

.method private blacklist adjustDrawToType()V
    .registers 10

    .line 133
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 135
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    sub-float/2addr v2, v3

    .line 136
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    sub-float/2addr v3, v4

    .line 137
    float-to-int v4, v2

    .line 138
    float-to-int v5, v3

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 147
    if-eqz v1, :cond_ed

    if-nez v0, :cond_22

    goto/16 :goto_ed

    .line 148
    :cond_22
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_ee

    goto/16 :goto_d3

    .line 213
    :pswitch_2a
    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 214
    int-to-float v0, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 215
    sub-int/2addr v5, v1

    div-int/lit8 v7, v5, 0x2

    .line 216
    add-int v5, v1, v7

    .line 217
    sub-int/2addr v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 218
    add-int v4, v0, v1

    move v0, v7

    move v7, v1

    goto/16 :goto_d4

    .line 211
    :pswitch_42
    goto/16 :goto_d3

    .line 199
    :pswitch_44
    int-to-float v6, v0

    mul-float/2addr v6, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    cmpg-float v2, v6, v2

    if-gez v2, :cond_58

    .line 200
    mul-int/2addr v1, v4

    div-int/2addr v1, v0

    .line 201
    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 202
    add-int v0, v1, v5

    move v8, v5

    move v5, v0

    move v0, v8

    goto/16 :goto_d4

    .line 204
    :cond_58
    mul-int/2addr v0, v5

    div-int/2addr v0, v1

    .line 205
    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 206
    add-int/2addr v0, v4

    .line 208
    move v8, v4

    move v4, v0

    move v0, v7

    move v7, v8

    goto/16 :goto_d4

    .line 188
    :pswitch_64
    int-to-float v6, v0

    mul-float/2addr v6, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    cmpl-float v2, v6, v2

    if-lez v2, :cond_78

    .line 189
    mul-int/2addr v1, v4

    div-int/2addr v1, v0

    .line 190
    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 191
    add-int v0, v1, v5

    move v8, v5

    move v5, v0

    move v0, v8

    goto/16 :goto_d4

    .line 193
    :cond_78
    mul-int/2addr v0, v5

    div-int/2addr v0, v1

    .line 194
    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 195
    add-int/2addr v0, v4

    .line 197
    move v8, v4

    move v4, v0

    move v0, v7

    move v7, v8

    goto :goto_d4

    .line 180
    :pswitch_83
    mul-int/2addr v0, v5

    div-int/2addr v0, v1

    .line 182
    sub-int v1, v5, v5

    div-int/lit8 v7, v1, 0x2

    .line 183
    add-int/2addr v5, v7

    .line 184
    sub-int/2addr v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 185
    add-int v4, v0, v1

    .line 186
    move v0, v7

    move v7, v1

    goto :goto_d4

    .line 172
    :pswitch_92
    mul-int/2addr v1, v4

    div-int/2addr v1, v0

    .line 174
    sub-int/2addr v5, v1

    div-int/lit8 v7, v5, 0x2

    .line 175
    add-int v5, v1, v7

    .line 176
    sub-int v0, v4, v4

    div-int/lit8 v0, v0, 0x2

    .line 177
    add-int/2addr v4, v0

    .line 178
    move v8, v7

    move v7, v0

    move v0, v8

    goto :goto_d4

    .line 158
    :pswitch_a2
    if-le v5, v1, :cond_a8

    if-le v4, v0, :cond_a8

    .line 159
    nop

    .line 160
    goto :goto_b7

    .line 161
    :cond_a8
    int-to-float v6, v0

    mul-float/2addr v6, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    cmpl-float v2, v6, v2

    if-lez v2, :cond_b4

    .line 162
    mul-int/2addr v1, v4

    div-int/2addr v1, v0

    move v0, v4

    goto :goto_b7

    .line 164
    :cond_b4
    mul-int/2addr v0, v5

    div-int/2addr v0, v1

    move v1, v5

    .line 166
    :goto_b7
    sub-int/2addr v5, v1

    div-int/lit8 v7, v5, 0x2

    .line 167
    add-int v5, v1, v7

    .line 168
    sub-int/2addr v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 169
    add-int v4, v0, v1

    .line 170
    move v0, v7

    move v7, v1

    goto :goto_d4

    .line 150
    :pswitch_c4
    nop

    .line 151
    nop

    .line 152
    sub-int/2addr v5, v1

    div-int/lit8 v7, v5, 0x2

    .line 153
    add-int v5, v1, v7

    .line 154
    sub-int/2addr v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 155
    add-int v4, v0, v1

    .line 156
    move v0, v7

    move v7, v1

    goto :goto_d4

    .line 222
    :goto_d3
    move v0, v7

    :goto_d4
    int-to-float v1, v4

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    .line 223
    int-to-float v1, v7

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    .line 224
    int-to-float v1, v5

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    .line 225
    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    .line 230
    return-void

    .line 147
    :cond_ed
    :goto_ed
    return-void

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_a2
        :pswitch_92
        :pswitch_83
        :pswitch_64
        :pswitch_44
        :pswitch_42
        :pswitch_2a
    .end packed-switch
.end method

.method static blacklist str(F)Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 9

    .line 240
    const-string v6, "fill_bounds"

    const-string v7, "fixed_scale"

    const-string v0, "none"

    const-string v1, "inside"

    const-string v2, "fill_width"

    const-string v3, "fill_height"

    const-string v4, "fit"

    const-string v5, "crop"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 250
    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method blacklist print(Ljava/lang/String;FFFF)V
    .registers 8

    .line 125
    nop

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-float/2addr p4, p2

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-float/2addr p5, p3

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public blacklist setup(FFFFFFFFIF)V
    .registers 11

    .line 105
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    .line 106
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    .line 107
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    .line 108
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    .line 109
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    .line 110
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    .line 111
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    .line 112
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    .line 113
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    .line 114
    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    .line 115
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->adjustDrawToType()V

    .line 116
    return-void
.end method
