.class public final Lcom/android/os/coregraphics/HwuiStatsLog;
.super Ljava/lang/Object;
.source "HwuiStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist GRAPHICS_STATS:I = 0x2754

.field public static final blacklist GRAPHICS_STATS__PIPELINE__GL:I = 0x1

.field public static final blacklist GRAPHICS_STATS__PIPELINE__UNKNOWN:I = 0x0

.field public static final blacklist GRAPHICS_STATS__PIPELINE__VULKAN:I = 0x2

.field public static final blacklist HARDWARE_RENDERER_EVENT:I = 0x3b2

.field public static final blacklist HARDWARE_RENDERER_EVENT__PREVIOUS_COLOR_MODE__DEFAULT:I = 0x0

.field public static final blacklist HARDWARE_RENDERER_EVENT__PREVIOUS_COLOR_MODE__HDR:I = 0x2

.field public static final blacklist HARDWARE_RENDERER_EVENT__PREVIOUS_COLOR_MODE__WIDE_COLOR:I = 0x1

.field public static final blacklist IMAGE_DECODED:I = 0x3d1

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_HLGISH:I = 0x3

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_PQISH:I = 0x2

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_SRGBISH:I = 0x1

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_UNKNOWN:I = 0x0

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_ARGB_8888:I = 0x3

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_A_8:I = 0x1

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_RGBA_1010102:I = 0x5

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_RGBA_F16:I = 0x4

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_RGB_565:I = 0x2

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_UNKNOWN:I = 0x0

.field public static final blacklist TEXTURE_VIEW_EVENT:I = 0x3b3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildStatsEvent(ILjava/lang/String;JJJIIIIIIII[B[BJZI)Landroid/util/StatsEvent;
    .registers 23

    .line 128
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 130
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 131
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 132
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 133
    invoke-virtual {v0, p6, p7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 134
    invoke-virtual {v0, p8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 135
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 136
    invoke-virtual {v0, p10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 137
    invoke-virtual {v0, p11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 138
    invoke-virtual {v0, p12}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 139
    invoke-virtual {v0, p13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 140
    invoke-virtual {v0, p14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 141
    move/from16 p1, p15

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 142
    const/4 p1, 0x0

    if-nez p16, :cond_33

    new-array p2, p1, [B

    goto :goto_35

    :cond_33
    move-object/from16 p2, p16

    :goto_35
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 143
    if-nez p17, :cond_3d

    new-array p1, p1, [B

    goto :goto_3f

    :cond_3d
    move-object/from16 p1, p17

    :goto_3f
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 144
    move-wide/from16 p1, p18

    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 145
    move/from16 p1, p20

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 146
    move/from16 p1, p21

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 147
    const/16 p1, 0x2754

    if-ne p1, p0, :cond_59

    .line 148
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 151
    :cond_59
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist write(IIIZI)V
    .registers 6

    .line 96
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 98
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 99
    const/16 p1, 0x3d1

    if-ne p1, p0, :cond_12

    .line 100
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 102
    :cond_12
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 103
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 104
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 108
    return-void
.end method

.method public static blacklist write(IIJI)V
    .registers 7

    .line 111
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 113
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 114
    const/16 p1, 0x3b2

    const/4 v1, 0x1

    if-ne p1, p0, :cond_12

    .line 115
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 117
    :cond_12
    const/16 p1, 0x3b3

    if-ne p1, p0, :cond_19

    .line 118
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 120
    :cond_19
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 121
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 125
    return-void
.end method
