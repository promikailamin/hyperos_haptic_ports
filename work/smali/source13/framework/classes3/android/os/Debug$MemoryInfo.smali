.class public Landroid/os/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o HEAP_DALVIK:I = 0x1

.field public static final greylist-max-o HEAP_NATIVE:I = 0x2

.field public static final greylist-max-o HEAP_UNKNOWN:I = 0x0

.field public static final greylist-max-o NUM_CATEGORIES:I = 0x9

.field public static final greylist NUM_DVK_STATS:I = 0xf

.field public static final greylist NUM_OTHER_STATS:I = 0x11

.field public static final blacklist NUM_UNKNOWN_STATS:I = 0x7

.field public static final greylist-max-o OFFSET_PRIVATE_CLEAN:I = 0x5

.field public static final greylist-max-o OFFSET_PRIVATE_DIRTY:I = 0x3

.field public static final greylist-max-o OFFSET_PSS:I = 0x0

.field public static final greylist-max-o OFFSET_RSS:I = 0x2

.field public static final greylist-max-o OFFSET_SHARED_CLEAN:I = 0x6

.field public static final greylist-max-o OFFSET_SHARED_DIRTY:I = 0x4

.field public static final greylist-max-o OFFSET_SWAPPABLE_PSS:I = 0x1

.field public static final greylist-max-o OFFSET_SWAPPED_OUT:I = 0x7

.field public static final greylist-max-o OFFSET_SWAPPED_OUT_PSS:I = 0x8

.field public static final greylist-max-o OTHER_APK:I = 0x8

.field public static final greylist-max-o OTHER_ART:I = 0xc

.field public static final greylist-max-o OTHER_ART_APP:I = 0x1e

.field public static final greylist-max-o OTHER_ART_BOOT:I = 0x1f

.field public static final greylist-max-o OTHER_ASHMEM:I = 0x3

.field public static final greylist-max-o OTHER_CURSOR:I = 0x2

.field public static final greylist-max-o OTHER_DALVIK_LARGE:I = 0x12

.field public static final greylist-max-o OTHER_DALVIK_NON_MOVING:I = 0x14

.field public static final greylist-max-o OTHER_DALVIK_NORMAL:I = 0x11

.field public static final greylist-max-o OTHER_DALVIK_OTHER:I = 0x0

.field public static final greylist-max-o OTHER_DALVIK_OTHER_ACCOUNTING:I = 0x16

.field public static final blacklist OTHER_DALVIK_OTHER_APP_CODE_CACHE:I = 0x18

.field public static final greylist-max-o OTHER_DALVIK_OTHER_COMPILER_METADATA:I = 0x19

.field public static final greylist-max-o OTHER_DALVIK_OTHER_INDIRECT_REFERENCE_TABLE:I = 0x1a

.field public static final greylist-max-o OTHER_DALVIK_OTHER_LINEARALLOC:I = 0x15

.field public static final blacklist OTHER_DALVIK_OTHER_ZYGOTE_CODE_CACHE:I = 0x17

.field public static final greylist-max-o OTHER_DALVIK_ZYGOTE:I = 0x13

.field public static final greylist-max-o OTHER_DEX:I = 0xa

.field public static final greylist-max-o OTHER_DEX_APP_DEX:I = 0x1c

.field public static final greylist-max-o OTHER_DEX_APP_VDEX:I = 0x1d

.field public static final greylist-max-o OTHER_DEX_BOOT_VDEX:I = 0x1b

.field public static final greylist-max-o OTHER_DVK_STAT_ART_END:I = 0xe

.field public static final greylist-max-o OTHER_DVK_STAT_ART_START:I = 0xd

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_END:I = 0x3

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_OTHER_END:I = 0x9

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_OTHER_START:I = 0x4

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_START:I = 0x0

.field public static final greylist-max-o OTHER_DVK_STAT_DEX_END:I = 0xc

.field public static final greylist-max-o OTHER_DVK_STAT_DEX_START:I = 0xa

.field public static final greylist-max-o OTHER_GL:I = 0xf

.field public static final greylist-max-o OTHER_GL_DEV:I = 0x4

.field public static final greylist-max-o OTHER_GRAPHICS:I = 0xe

.field public static final greylist-max-o OTHER_JAR:I = 0x7

.field public static final greylist-max-o OTHER_OAT:I = 0xb

.field public static final greylist-max-o OTHER_OTHER_MEMTRACK:I = 0x10

.field public static final greylist-max-o OTHER_SO:I = 0x6

.field public static final greylist-max-o OTHER_STACK:I = 0x1

.field public static final greylist-max-o OTHER_TTF:I = 0x9

.field public static final blacklist OTHER_UNKNOWN_BSS:I = 0x21

.field public static final greylist-max-o OTHER_UNKNOWN_DEV:I = 0x5

.field public static final blacklist OTHER_UNKNOWN_LIBC_ALLOC:I = 0x22

.field public static final blacklist OTHER_UNKNOWN_LIBC_OTHER:I = 0x23

.field public static final blacklist OTHER_UNKNOWN_LINKER:I = 0x20

.field public static final greylist-max-o OTHER_UNKNOWN_MAP:I = 0xd

.field public static final blacklist OTHER_UNKNOWN_OTHER:I = 0x26

.field public static final blacklist OTHER_UNNAMED_CODE:I = 0x24

.field public static final blacklist OTHER_UNNAMED_DATA:I = 0x25


# instance fields
.field public greylist dalvikPrivateClean:I

.field public whitelist dalvikPrivateDirty:I

.field public whitelist dalvikPss:I

.field public greylist-max-r dalvikRss:I

.field public greylist dalvikSharedClean:I

.field public whitelist dalvikSharedDirty:I

.field public greylist dalvikSwappablePss:I

.field public greylist dalvikSwappedOut:I

.field public greylist-max-r dalvikSwappedOutPss:I

.field public greylist-max-r hasSwappedOutPss:Z

.field public greylist nativePrivateClean:I

.field public whitelist nativePrivateDirty:I

.field public whitelist nativePss:I

.field public greylist-max-r nativeRss:I

.field public greylist nativeSharedClean:I

.field public whitelist nativeSharedDirty:I

.field public greylist nativeSwappablePss:I

.field public greylist nativeSwappedOut:I

.field public greylist-max-r nativeSwappedOutPss:I

.field public greylist otherPrivateClean:I

.field public whitelist otherPrivateDirty:I

.field public whitelist otherPss:I

.field public greylist-max-r otherRss:I

.field public greylist otherSharedClean:I

.field public whitelist otherSharedDirty:I

.field private greylist otherStats:[I

.field public greylist otherSwappablePss:I

.field public greylist otherSwappedOut:I

.field public greylist-max-r otherSwappedOutPss:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1005
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/16 v0, 0x15f

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 374
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/16 v0, 0x15f

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 1015
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 1016
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/Debug$MemoryInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist getOtherLabel(I)Ljava/lang/String;
    .registers 2
    .param p0, "which"    # I

    .line 548
    packed-switch p0, :pswitch_data_7e

    .line 591
    const-string v0, "????"

    return-object v0

    .line 589
    :pswitch_6
    const-string v0, "Others"

    return-object v0

    .line 588
    :pswitch_9
    const-string v0, "Unnamed data"

    return-object v0

    .line 587
    :pswitch_c
    const-string v0, "Unnamed code"

    return-object v0

    .line 586
    :pswitch_f
    const-string/jumbo v0, "libc use"

    return-object v0

    .line 585
    :pswitch_13
    const-string/jumbo v0, "libc alloc"

    return-object v0

    .line 584
    :pswitch_17
    const-string v0, ".bss mmap"

    return-object v0

    .line 583
    :pswitch_1a
    const-string v0, "Linker"

    return-object v0

    .line 580
    :pswitch_1d
    const-string v0, ".Boot art"

    return-object v0

    .line 579
    :pswitch_20
    const-string v0, ".App art"

    return-object v0

    .line 578
    :pswitch_23
    const-string v0, ".App vdex"

    return-object v0

    .line 577
    :pswitch_26
    const-string v0, ".App dex"

    return-object v0

    .line 576
    :pswitch_29
    const-string v0, ".Boot vdex"

    return-object v0

    .line 575
    :pswitch_2c
    const-string v0, ".IndirectRef"

    return-object v0

    .line 574
    :pswitch_2f
    const-string v0, ".CompilerMetadata"

    return-object v0

    .line 573
    :pswitch_32
    const-string v0, ".AppJIT"

    return-object v0

    .line 572
    :pswitch_35
    const-string v0, ".ZygoteJIT"

    return-object v0

    .line 571
    :pswitch_38
    const-string v0, ".GC"

    return-object v0

    .line 570
    :pswitch_3b
    const-string v0, ".LinearAlloc"

    return-object v0

    .line 569
    :pswitch_3e
    const-string v0, ".NonMoving"

    return-object v0

    .line 568
    :pswitch_41
    const-string v0, ".Zygote"

    return-object v0

    .line 567
    :pswitch_44
    const-string v0, ".LOS"

    return-object v0

    .line 566
    :pswitch_47
    const-string v0, ".Heap"

    return-object v0

    .line 565
    :pswitch_4a
    const-string v0, "Other mtrack"

    return-object v0

    .line 564
    :pswitch_4d
    const-string v0, "GL mtrack"

    return-object v0

    .line 563
    :pswitch_50
    const-string v0, "EGL mtrack"

    return-object v0

    .line 562
    :pswitch_53
    const-string v0, "Other mmap"

    return-object v0

    .line 561
    :pswitch_56
    const-string v0, ".art mmap"

    return-object v0

    .line 560
    :pswitch_59
    const-string v0, ".oat mmap"

    return-object v0

    .line 559
    :pswitch_5c
    const-string v0, ".dex mmap"

    return-object v0

    .line 558
    :pswitch_5f
    const-string v0, ".ttf mmap"

    return-object v0

    .line 557
    :pswitch_62
    const-string v0, ".apk mmap"

    return-object v0

    .line 556
    :pswitch_65
    const-string v0, ".jar mmap"

    return-object v0

    .line 555
    :pswitch_68
    const-string v0, ".so mmap"

    return-object v0

    .line 554
    :pswitch_6b
    const-string v0, "Other dev"

    return-object v0

    .line 553
    :pswitch_6e
    const-string v0, "Gfx dev"

    return-object v0

    .line 552
    :pswitch_71
    const-string v0, "Ashmem"

    return-object v0

    .line 551
    :pswitch_74
    const-string v0, "Cursor"

    return-object v0

    .line 550
    :pswitch_77
    const-string v0, "Stack"

    return-object v0

    .line 549
    :pswitch_7a
    const-string v0, "Dalvik Other"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMemoryStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "statName"    # Ljava/lang/String;

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    :cond_7
    goto :goto_6c

    :sswitch_8
    const-string/jumbo v0, "summary.total-swap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_6d

    :sswitch_14
    const-string/jumbo v0, "summary.graphics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_6d

    :sswitch_1f
    const-string/jumbo v0, "summary.code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_6d

    :sswitch_2a
    const-string/jumbo v0, "summary.system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_6d

    :sswitch_35
    const-string/jumbo v0, "summary.stack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_6d

    :sswitch_40
    const-string/jumbo v0, "summary.native-heap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6d

    :sswitch_4b
    const-string/jumbo v0, "summary.private-other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_6d

    :sswitch_56
    const-string/jumbo v0, "summary.total-pss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_6d

    :sswitch_61
    const-string/jumbo v0, "summary.java-heap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6d

    :goto_6c
    const/4 v0, -0x1

    :goto_6d
    packed-switch v0, :pswitch_data_ea

    .line 697
    const/4 v0, 0x0

    return-object v0

    .line 695
    :pswitch_72
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 693
    :pswitch_7b
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 691
    :pswitch_84
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 689
    :pswitch_8d
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :pswitch_96
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 685
    :pswitch_9f
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :pswitch_a8
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 681
    :pswitch_b1
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 679
    :pswitch_ba
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x61279191 -> :sswitch_61
        -0x4e9a1b81 -> :sswitch_56
        -0x40ca2e02 -> :sswitch_4b
        -0x3dffd466 -> :sswitch_40
        -0x283e7dc0 -> :sswitch_35
        0x20bda977 -> :sswitch_2a
        0x61c51735 -> :sswitch_1f
        0x78312fd3 -> :sswitch_14
        0x7b5815c4 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_b1
        :pswitch_a8
        :pswitch_9f
        :pswitch_96
        :pswitch_8d
        :pswitch_84
        :pswitch_7b
        :pswitch_72
    .end packed-switch
.end method

.method public whitelist getMemoryStats()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 709
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.java-heap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.native-heap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.stack"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.graphics"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.private-other"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.system"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.total-pss"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.total-swap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    return-object v0
.end method

.method public greylist getOtherPrivate(I)I
    .registers 4
    .param p1, "which"    # I

    .line 527
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getOtherPrivateClean(I)I
    .registers 4
    .param p1, "which"    # I

    .line 521
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public greylist getOtherPrivateDirty(I)I
    .registers 4
    .param p1, "which"    # I

    .line 510
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public greylist getOtherPss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 494
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherRss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 504
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSharedClean(I)I
    .registers 4
    .param p1, "which"    # I

    .line 532
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public greylist getOtherSharedDirty(I)I
    .registers 4
    .param p1, "which"    # I

    .line 516
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSwappablePss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 499
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSwappedOut(I)I
    .registers 4
    .param p1, "which"    # I

    .line 537
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSwappedOutPss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 542
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public greylist getSummaryCode()I
    .registers 3

    .line 760
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    .line 761
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    return v0
.end method

.method public blacklist getSummaryCodeRss()I
    .registers 3

    .line 853
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v0

    .line 854
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 857
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 858
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    return v0
.end method

.method public greylist getSummaryGraphics()I
    .registers 3

    .line 797
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    .line 798
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 799
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 797
    return v0
.end method

.method public blacklist getSummaryGraphicsRss()I
    .registers 3

    .line 876
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v0

    .line 877
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 878
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    return v0
.end method

.method public greylist getSummaryJavaHeap()I
    .registers 3

    .line 737
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getSummaryJavaHeapRss()I
    .registers 3

    .line 836
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist getSummaryNativeHeap()I
    .registers 2

    .line 750
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    return v0
.end method

.method public blacklist getSummaryNativeHeapRss()I
    .registers 2

    .line 844
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    return v0
.end method

.method public greylist getSummaryPrivateOther()I
    .registers 3

    .line 809
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    .line 810
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    add-int/2addr v0, v1

    .line 811
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 812
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 813
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 814
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v1

    sub-int/2addr v0, v1

    .line 815
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v1

    sub-int/2addr v0, v1

    .line 809
    return v0
.end method

.method public greylist getSummaryStack()I
    .registers 2

    .line 781
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSummaryStackRss()I
    .registers 2

    .line 868
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v0

    return v0
.end method

.method public greylist getSummarySystem()I
    .registers 3

    .line 826
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    .line 827
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v1

    sub-int/2addr v0, v1

    .line 828
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    sub-int/2addr v0, v1

    .line 826
    return v0
.end method

.method public greylist-max-o getSummaryTotalPss()I
    .registers 2

    .line 900
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSummaryTotalSwap()I
    .registers 2

    .line 915
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSummaryTotalSwapPss()I
    .registers 2

    .line 925
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v0

    return v0
.end method

.method public blacklist getSummaryUnknownRss()I
    .registers 3

    .line 887
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v0

    .line 888
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 889
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 890
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 891
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 892
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 887
    return v0
.end method

.method public whitelist getTotalPrivateClean()I
    .registers 3

    .line 465
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalPrivateDirty()I
    .registers 3

    .line 451
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalPss()I
    .registers 3

    .line 419
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getTotalRss()I
    .registers 3

    .line 444
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalSharedClean()I
    .registers 3

    .line 472
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalSharedDirty()I
    .registers 3

    .line 458
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalSwappablePss()I
    .registers 3

    .line 437
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getTotalSwappedOut()I
    .registers 3

    .line 480
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getTotalSwappedOutPss()I
    .registers 3

    .line 488
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist getTotalUss()I
    .registers 3

    .line 427
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o hasSwappedOutPss()Z
    .registers 2

    .line 934
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 1000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    iput-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 1003
    return-void
.end method

.method public blacklist set(Landroid/os/Debug$MemoryInfo;)V
    .registers 6
    .param p1, "other"    # Landroid/os/Debug$MemoryInfo;

    .line 380
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 381
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 382
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 383
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 384
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 385
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 386
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    .line 387
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 388
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 390
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 391
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 392
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 393
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 394
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 395
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 396
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    .line 397
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 398
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 400
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 401
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 402
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 403
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 404
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 405
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 406
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 407
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 408
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 410
    iget-boolean v0, p1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    iput-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 412
    iget-object v0, p1, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    iget-object v1, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 942
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 971
    return-void
.end method
