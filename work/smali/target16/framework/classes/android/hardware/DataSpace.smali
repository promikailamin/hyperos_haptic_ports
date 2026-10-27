.class public final Landroid/hardware/DataSpace;
.super Ljava/lang/Object;
.source "DataSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/DataSpace$NamedDataSpace;,
        Landroid/hardware/DataSpace$ColorDataSpace;,
        Landroid/hardware/DataSpace$DataSpaceRange;,
        Landroid/hardware/DataSpace$DataSpaceTransfer;,
        Landroid/hardware/DataSpace$DataSpaceStandard;
    }
.end annotation


# static fields
.field public static final whitelist DATASPACE_ADOBE_RGB:I = 0x90b0000

.field public static final whitelist DATASPACE_BT2020:I = 0x8c60000

.field public static final whitelist DATASPACE_BT2020_HLG:I = 0xa060000

.field public static final whitelist DATASPACE_BT2020_PQ:I = 0x9c60000

.field public static final whitelist DATASPACE_BT601_525:I = 0x10c40000

.field public static final whitelist DATASPACE_BT601_625:I = 0x10c20000

.field public static final whitelist DATASPACE_BT709:I = 0x10c10000

.field public static final whitelist DATASPACE_DCI_P3:I = 0x94a0000

.field public static final whitelist DATASPACE_DEPTH:I = 0x1000

.field public static final blacklist DATASPACE_DISPLAY_BT2020:I = 0x8860000

.field public static final whitelist DATASPACE_DISPLAY_P3:I = 0x88a0000

.field public static final whitelist DATASPACE_DYNAMIC_DEPTH:I = 0x1002

.field public static final whitelist DATASPACE_HEIF:I = 0x1004

.field public static final whitelist DATASPACE_HEIF_ULTRAHDR:I = 0x1006

.field public static final whitelist DATASPACE_JFIF:I = 0x8c20000

.field public static final whitelist DATASPACE_JPEG_R:I = 0x1005

.field public static final whitelist DATASPACE_SCRGB:I = 0x18810000

.field public static final whitelist DATASPACE_SCRGB_LINEAR:I = 0x18410000

.field public static final whitelist DATASPACE_SRGB:I = 0x8810000

.field public static final whitelist DATASPACE_SRGB_LINEAR:I = 0x8410000

.field public static final whitelist DATASPACE_UNKNOWN:I = 0x0

.field public static final whitelist RANGE_EXTENDED:I = 0x18000000

.field public static final whitelist RANGE_FULL:I = 0x8000000

.field public static final whitelist RANGE_LIMITED:I = 0x10000000

.field private static final blacklist RANGE_MASK:I = 0x38000000

.field public static final whitelist RANGE_UNSPECIFIED:I = 0x0

.field public static final whitelist STANDARD_ADOBE_RGB:I = 0xb0000

.field public static final whitelist STANDARD_BT2020:I = 0x60000

.field public static final whitelist STANDARD_BT2020_CONSTANT_LUMINANCE:I = 0x70000

.field public static final whitelist STANDARD_BT470M:I = 0x80000

.field public static final whitelist STANDARD_BT601_525:I = 0x40000

.field public static final whitelist STANDARD_BT601_525_UNADJUSTED:I = 0x50000

.field public static final whitelist STANDARD_BT601_625:I = 0x20000

.field public static final whitelist STANDARD_BT601_625_UNADJUSTED:I = 0x30000

.field public static final whitelist STANDARD_BT709:I = 0x10000

.field public static final whitelist STANDARD_DCI_P3:I = 0xa0000

.field public static final whitelist STANDARD_FILM:I = 0x90000

.field private static final blacklist STANDARD_MASK:I = 0x3f0000

.field public static final whitelist STANDARD_UNSPECIFIED:I = 0x0

.field public static final whitelist TRANSFER_GAMMA2_2:I = 0x1000000

.field public static final whitelist TRANSFER_GAMMA2_6:I = 0x1400000

.field public static final whitelist TRANSFER_GAMMA2_8:I = 0x1800000

.field public static final whitelist TRANSFER_HLG:I = 0x2000000

.field public static final whitelist TRANSFER_LINEAR:I = 0x400000

.field private static final blacklist TRANSFER_MASK:I = 0x7c00000

.field public static final whitelist TRANSFER_SMPTE_170M:I = 0xc00000

.field public static final whitelist TRANSFER_SRGB:I = 0x800000

.field public static final whitelist TRANSFER_ST2084:I = 0x1c00000

.field public static final whitelist TRANSFER_UNSPECIFIED:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getRange(I)I
    .registers 2

    .line 763
    const/high16 v0, 0x38000000

    and-int/2addr p0, v0

    .line 764
    return p0
.end method

.method public static whitelist getStandard(I)I
    .registers 2

    .line 739
    const/high16 v0, 0x3f0000

    and-int/2addr p0, v0

    .line 740
    return p0
.end method

.method public static whitelist getTransfer(I)I
    .registers 2

    .line 751
    const/high16 v0, 0x7c00000

    and-int/2addr p0, v0

    .line 752
    return p0
.end method

.method public static whitelist pack(III)I
    .registers 4

    .line 719
    const/high16 v0, 0x3f0000

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_44

    .line 722
    const/high16 v0, 0x7c00000

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2b

    .line 725
    const/high16 v0, 0x38000000

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_12

    .line 728
    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0

    .line 726
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid range "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 723
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transfer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid standard "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
