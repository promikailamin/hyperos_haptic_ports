.class public final Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$VideoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerformancePoint"
.end annotation


# static fields
.field public static final whitelist FHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_48:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;


# instance fields
.field private blacklist mBlockSize:Landroid/util/Size;

.field private blacklist mHeight:I

.field private blacklist mMaxFrameRate:I

.field private blacklist mMaxMacroBlockRate:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 2675
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2680
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2683
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v4, 0x240

    const/16 v5, 0x19

    invoke-direct {v0, v1, v4, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2686
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v6, 0x1e

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2689
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v7, 0x30

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_48:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2692
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v7, 0x32

    invoke-direct {v0, v1, v4, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2695
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v4, 0x3c

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2699
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v2, 0x500

    invoke-direct {v0, v2, v1, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2702
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2705
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2708
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2711
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2714
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v8, 0x64

    invoke-direct {v0, v2, v1, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2717
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v9, 0x78

    invoke-direct {v0, v2, v1, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2720
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v10, 0xc8

    invoke-direct {v0, v2, v1, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2723
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v11, 0xf0

    invoke-direct {v0, v2, v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2727
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2730
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2733
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2736
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2739
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2742
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2745
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2748
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2751
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2755
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2758
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2761
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2764
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2767
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2770
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2773
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2776
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2779
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 10

    .line 2561
    new-instance v5, Landroid/util/Size;

    const/16 v0, 0x10

    invoke-direct {v5, v0, v0}, Landroid/util/Size;-><init>(II)V

    move v4, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 2562
    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/util/Size;)V
    .registers 13

    .line 2516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2517
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string v1, "block width"

    invoke-static {v0, v1}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2518
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "block height"

    invoke-static {v0, v1}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2520
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 2521
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2523
    int-to-long v0, p1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2524
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v5, p1

    .line 2523
    invoke-static {v0, v1, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2525
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-long v5, p1

    mul-long/2addr v0, v5

    long-to-int p1, v0

    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    .line 2526
    int-to-long p1, p2

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2527
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-static {p5, v2}, Ljava/lang/Math;->max(II)I

    move-result p5

    int-to-long v0, p5

    .line 2526
    invoke-static {p1, p2, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide p1

    iget-object p5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2528
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    int-to-long v0, p5

    mul-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    .line 2529
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    .line 2530
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p2

    mul-int/2addr p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    .line 2531
    return-void
.end method

.method constructor blacklist <init>(IIIJII)V
    .registers 8

    .line 2565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    .line 2567
    iput p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    .line 2568
    iput p3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    .line 2569
    iput-wide p4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    .line 2570
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p6, p7}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2571
    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)V
    .registers 10

    .line 2574
    iget v1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    iget v2, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    iget v3, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget-wide v4, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-object v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2575
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object p1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 2574
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIJII)V

    .line 2576
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V
    .registers 10

    .line 2543
    iget v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    mul-int/lit8 v2, v0, 0x10

    iget v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    mul-int/lit8 v3, v0, 0x10

    iget-wide v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    .line 2546
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    iget v5, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    new-instance v6, Landroid/util/Size;

    .line 2548
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2549
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object p1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v6, v0, p1}, Landroid/util/Size;-><init>(II)V

    .line 2543
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 2551
    return-void
.end method

.method private blacklist align(II)I
    .registers 3

    .line 2591
    invoke-static {p1, p2}, Landroid/media/Utils;->divUp(II)I

    move-result p1

    mul-int/2addr p1, p2

    return p1
.end method

.method private blacklist checkPowerOfTwo2(ILjava/lang/String;)V
    .registers 5

    .line 2596
    if-eqz p1, :cond_8

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_8

    .line 2600
    return-void

    .line 2597
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") must be a power of 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;
    .registers 5

    .line 2646
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2647
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2648
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object p1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    .line 2646
    return-object v0
.end method

.method static synthetic blacklist lambda$covers$0()Ljava/lang/Boolean;
    .registers 1

    .line 2631
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nativeCapabilites()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$equals$1()Ljava/lang/Boolean;
    .registers 1

    .line 2656
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nativeCapabilites()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private native blacklist native_covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z
.end method

.method private native blacklist native_equals(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z
.end method

.method private blacklist saturateLongToInt(J)I
    .registers 5

    .line 2580
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    .line 2581
    const/high16 p1, -0x80000000

    return p1

    .line 2582
    :cond_a
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_15

    .line 2583
    const p1, 0x7fffffff

    return p1

    .line 2585
    :cond_15
    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method public whitelist covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z
    .registers 6

    .line 2631
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2632
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->native_covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result p1

    return p1

    .line 2635
    :cond_10
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;

    move-result-object v0

    .line 2636
    new-instance v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2637
    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v2, p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2639
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p1

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    if-lt p1, v0, :cond_38

    iget p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget v0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-lt p1, v0, :cond_38

    iget-wide v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-wide v2, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    return p1
.end method

.method public whitelist covers(Landroid/media/MediaFormat;)Z
    .registers 8

    .line 2610
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2611
    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 2612
    const-string v3, "height"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 2615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "frame-rate"

    invoke-virtual {p1, v4, v2}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    .line 2616
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 2615
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 2614
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, v3, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 2617
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 2653
    instance-of v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 2655
    check-cast p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2656
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2657
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->native_equals(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result p1

    return p1

    .line 2659
    :cond_17
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;

    move-result-object v0

    .line 2660
    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2661
    new-instance v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v3, p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2663
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    if-ne p1, v0, :cond_3e

    iget p1, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget v0, v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-ne p1, v0, :cond_3e

    iget-wide v4, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-wide v2, v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1

    .line 2668
    :cond_3f
    return v1
.end method

.method blacklist getBlockHeight()I
    .registers 2

    .line 2474
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    return v0
.end method

.method blacklist getBlockWidth()I
    .registers 2

    .line 2465
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    return v0
.end method

.method blacklist getHeight()I
    .registers 2

    .line 2436
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    return v0
.end method

.method public blacklist getMaxFrameRate()I
    .registers 2

    .line 2446
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    return v0
.end method

.method public blacklist getMaxMacroBlockRate()J
    .registers 3

    .line 2456
    iget-wide v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    return-wide v0
.end method

.method public blacklist getMaxMacroBlocks()I
    .registers 5

    .line 2418
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    int-to-long v0, v0

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->saturateLongToInt(J)I

    move-result v0

    return v0
.end method

.method blacklist getWidth()I
    .registers 2

    .line 2427
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2496
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 2479
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    .line 2480
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 2481
    iget-wide v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 2482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    mul-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    mul-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2483
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-ge v3, v6, :cond_66

    .line 2484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2486
    :cond_66
    if-gt v0, v1, :cond_6a

    if-le v2, v1, :cond_8f

    .line 2487
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " blocks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2489
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerformancePoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
