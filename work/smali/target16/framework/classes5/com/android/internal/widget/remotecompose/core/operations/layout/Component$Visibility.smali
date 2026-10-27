.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visibility"
.end annotation


# static fields
.field public static final blacklist CLEAR_OVERRIDE:I = 0x80

.field public static final blacklist GONE:I = 0x0

.field public static final blacklist INVISIBLE:I = 0x2

.field public static final blacklist OVERRIDE_GONE:I = 0x10

.field public static final blacklist OVERRIDE_INVISIBLE:I = 0x40

.field public static final blacklist OVERRIDE_VISIBLE:I = 0x20

.field public static final blacklist VISIBLE:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(II)I
    .registers 3

    .line 487
    and-int/lit8 p0, p0, 0xf

    .line 488
    add-int/2addr p0, p1

    .line 489
    and-int/lit16 p1, p0, 0x80

    const/16 v0, 0x80

    if-ne p1, v0, :cond_b

    .line 490
    and-int/lit8 p0, p0, 0xf

    .line 492
    :cond_b
    return p0
.end method

.method public static blacklist clearOverride(I)I
    .registers 1

    .line 476
    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static blacklist hasOverride(I)Z
    .registers 1

    .line 466
    shr-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist isGone(I)Z
    .registers 4

    .line 427
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_e

    .line 428
    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    return v1

    .line 430
    :cond_e
    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public static blacklist isInvisible(I)Z
    .registers 4

    .line 453
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_e

    .line 454
    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    return v1

    .line 456
    :cond_e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1
.end method

.method public static blacklist isVisible(I)Z
    .registers 4

    .line 440
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_d

    .line 441
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_c

    move v1, v2

    :cond_c
    return v1

    .line 443
    :cond_d
    if-ne p0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 398
    packed-switch p0, :pswitch_data_40

    .line 406
    shr-int/lit8 v0, p0, 0x4

    if-lez v0, :cond_2b

    .line 407
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_19

    .line 408
    const-string p0, "OVERRIDE_GONE"

    return-object p0

    .line 404
    :pswitch_10
    const-string p0, "INVISIBLE"

    return-object p0

    .line 402
    :pswitch_13
    const-string p0, "VISIBLE"

    return-object p0

    .line 400
    :pswitch_16
    const-string p0, "GONE"

    return-object p0

    .line 410
    :cond_19
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_22

    .line 411
    const-string p0, "OVERRIDE_VISIBLE"

    return-object p0

    .line 413
    :cond_22
    and-int/lit8 v0, p0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2b

    .line 414
    const-string p0, "OVERRIDE_INVISIBLE"

    return-object p0

    .line 417
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method
