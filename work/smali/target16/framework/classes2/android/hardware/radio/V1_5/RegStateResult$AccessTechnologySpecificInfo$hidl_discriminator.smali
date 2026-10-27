.class public final Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist cdmaInfo:B = 0x1t

.field public static final blacklist eutranInfo:B = 0x2t

.field public static final blacklist noinit:B


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .registers 1

    .line 273
    packed-switch p0, :pswitch_data_10

    .line 277
    const-string p0, "Unknown"

    return-object p0

    .line 276
    :pswitch_6
    const-string p0, "eutranInfo"

    return-object p0

    .line 275
    :pswitch_9
    const-string p0, "cdmaInfo"

    return-object p0

    .line 274
    :pswitch_c
    const-string p0, "noinit"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
