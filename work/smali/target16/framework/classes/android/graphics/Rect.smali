.class public final Landroid/graphics/Rect;
.super Ljava/lang/Object;
.source "Rect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Rect$UnflattenHelper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist bottom:I

.field public whitelist left:I

.field public whitelist right:I

.field public whitelist top:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 770
    new-instance v0, Landroid/graphics/Rect$1;

    invoke-direct {v0}, Landroid/graphics/Rect$1;-><init>()V

    sput-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 88
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 89
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 90
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_f

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1f

    .line 118
    :cond_f
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 119
    iget v0, p1, Landroid/graphics/Insets;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 120
    iget v0, p1, Landroid/graphics/Insets;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 121
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 123
    :goto_1f
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_f

    .line 102
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1f

    .line 104
    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 105
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 106
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 107
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 109
    :goto_1f
    return-void
.end method

.method public static greylist-max-o copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    .line 132
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static whitelist intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    .line 635
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1a

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static whitelist unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 6

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 213
    return-object v1

    .line 216
    :cond_8
    invoke-static {p0}, Landroid/graphics/Rect$UnflattenHelper;->getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_13

    .line 218
    return-object v1

    .line 220
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 222
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 223
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    return-object v0
.end method


# virtual methods
.method public final whitelist centerX()I
    .registers 3

    .line 325
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist centerY()I
    .registers 3

    .line 334
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist contains(II)Z
    .registers 5

    .line 484
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_1e

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_1e

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public whitelist contains(IIII)Z
    .registers 7

    .line 502
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_1e

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-gt p1, p2, :cond_1e

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-lt p1, p3, :cond_1e

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt p1, p4, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public whitelist contains(Landroid/graphics/Rect;)Z
    .registers 4

    .line 518
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 246
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 247
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 248
    const-wide v0, 0x10500000002L

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 249
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 250
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 251
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 252
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 140
    :cond_12
    check-cast p1, Landroid/graphics/Rect;

    .line 141
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    .line 138
    :cond_2f
    :goto_2f
    return v1
.end method

.method public final whitelist exactCenterX()F
    .registers 3

    .line 341
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final whitelist exactCenterY()F
    .registers 3

    .line 348
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public whitelist flattenToString()Ljava/lang/String;
    .registers 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 146
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 150
    return v0
.end method

.method public final whitelist height()I
    .registers 3

    .line 316
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist inset(II)V
    .registers 4

    .line 426
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 427
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 428
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 429
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 430
    return-void
.end method

.method public whitelist inset(IIII)V
    .registers 6

    .line 466
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 467
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 468
    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 469
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 470
    return-void
.end method

.method public whitelist inset(Landroid/graphics/Insets;)V
    .registers 4

    .line 451
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 452
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 453
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 454
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 455
    return-void
.end method

.method public greylist-max-o inset(Landroid/graphics/Rect;)V
    .registers 4

    .line 439
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 440
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 441
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 442
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 443
    return-void
.end method

.method public whitelist intersect(IIII)Z
    .registers 6

    .line 543
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p4, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_2a

    .line 544
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p1, :cond_16

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 545
    :cond_16
    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_1c

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 546
    :cond_1c
    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-le p1, p3, :cond_22

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 547
    :cond_22
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p4, :cond_28

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 548
    :cond_28
    const/4 p1, 0x1

    return p1

    .line 550
    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist intersect(Landroid/graphics/Rect;)Z
    .registers 5

    .line 566
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o intersectUnchecked(Landroid/graphics/Rect;)V
    .registers 4

    .line 576
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 577
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 578
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 579
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 580
    return-void
.end method

.method public whitelist intersects(IIII)Z
    .registers 6

    .line 621
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_12

    iget p3, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, p3, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p1, p4, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final whitelist isEmpty()Z
    .registers 3

    .line 292
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_f

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 300
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist offset(II)V
    .registers 4

    .line 396
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 397
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 398
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 399
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 400
    return-void
.end method

.method public whitelist offsetTo(II)V
    .registers 5

    .line 410
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 411
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 412
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 413
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 414
    return-void
.end method

.method public greylist printShortString(Ljava/io/PrintWriter;)V
    .registers 4

    .line 232
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 233
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 235
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 801
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 264
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 266
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    .line 267
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    goto :goto_43

    .line 278
    :pswitch_13
    const-wide v0, 0x10500000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_43

    .line 275
    :pswitch_1f
    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 276
    goto :goto_43

    .line 272
    :pswitch_2b
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 273
    goto :goto_43

    .line 269
    :pswitch_37
    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_49

    .line 270
    nop

    .line 279
    :goto_43
    goto :goto_4

    .line 284
    :cond_44
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 285
    nop

    .line 286
    return-void

    .line 284
    :catchall_49
    move-exception v0

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 285
    throw v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
        :pswitch_13
    .end packed-switch
.end method

.method public greylist scale(F)V
    .registers 4

    .line 809
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_28

    .line 810
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 811
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 812
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 813
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 815
    :cond_28
    return-void
.end method

.method public whitelist set(IIII)V
    .registers 5

    .line 369
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 370
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 371
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 372
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 373
    return-void
.end method

.method public whitelist set(Landroid/graphics/Rect;)V
    .registers 3

    .line 382
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 383
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 384
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 385
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 386
    return-void
.end method

.method public whitelist setEmpty()V
    .registers 2

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 356
    return-void
.end method

.method public whitelist setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    .line 596
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_42

    .line 597
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 598
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 599
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 600
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 601
    const/4 p1, 0x1

    return p1

    .line 603
    :cond_42
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist sort()V
    .registers 3

    .line 703
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_e

    .line 704
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 705
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 706
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 708
    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1c

    .line 709
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 710
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 711
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 713
    :cond_1c
    return-void
.end method

.method public varargs blacklist splitHorizontally([Landroid/graphics/Rect;)V
    .registers 8

    .line 738
    array-length v0, p1

    .line 739
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v0

    .line 740
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_22

    .line 741
    aget-object v3, p1, v2

    .line 742
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 743
    iget v4, p0, Landroid/graphics/Rect;->top:I

    mul-int v5, v1, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 744
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 745
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 747
    :cond_22
    return-void
.end method

.method public varargs blacklist splitVertically([Landroid/graphics/Rect;)V
    .registers 8

    .line 721
    array-length v0, p1

    .line 722
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v0

    .line 723
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_22

    .line 724
    aget-object v3, p1, v2

    .line 725
    iget v4, p0, Landroid/graphics/Rect;->left:I

    mul-int v5, v1, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 726
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 727
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 728
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 723
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 730
    :cond_22
    return-void
.end method

.method public whitelist toShortString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 177
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    const-string v1, "Rect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist union(II)V
    .registers 4

    .line 683
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_7

    .line 684
    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_d

    .line 685
    :cond_7
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_d

    .line 686
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 688
    :cond_d
    :goto_d
    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p2, p1, :cond_14

    .line 689
    iput p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_1a

    .line 690
    :cond_14
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_1a

    .line 691
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 693
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist union(IIII)V
    .registers 7

    .line 649
    if-ge p1, p3, :cond_31

    if-ge p2, p4, :cond_31

    .line 650
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_29

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_29

    .line 651
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-le v0, p1, :cond_16

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 652
    :cond_16
    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_1c

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 653
    :cond_1c
    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, p3, :cond_22

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 654
    :cond_22
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p4, :cond_31

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_31

    .line 656
    :cond_29
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 657
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 658
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 659
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 662
    :cond_31
    :goto_31
    return-void
.end method

.method public whitelist union(Landroid/graphics/Rect;)V
    .registers 5

    .line 672
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 673
    return-void
.end method

.method public final whitelist width()I
    .registers 3

    .line 308
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 764
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget p2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    return-void
.end method
