.class public abstract Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "LmkdStatsReporter.java"


# direct methods
.method public static logKillOccurred(Ljava/io/DataInputStream;II)V
    .registers 27

    .line 70
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 71
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 72
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 73
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 74
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 75
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 76
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 78
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 80
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 81
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 82
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 83
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0}, Lcom/android/server/am/LmkdStatsReporter;->mapKillReason(I)I

    move-result v19

    const/16 v0, 0x33

    move/from16 v22, p1

    move/from16 v23, p2

    .line 85
    invoke-static/range {v0 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIIIII)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_4a

    return-void

    .line 90
    :catch_4a
    const-string v0, "ActivityManager"

    const-string v1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static mapKillReason(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_3e

    packed-switch p0, :pswitch_data_56

    const/4 p0, 0x0

    return p0

    :pswitch_8
    const/16 p0, 0x3f1

    return p0

    :pswitch_b
    const/16 p0, 0x3f0

    return p0

    :pswitch_e
    const/16 p0, 0x3ef

    return p0

    :pswitch_11
    const/16 p0, 0x3ee

    return p0

    :pswitch_14
    const/16 p0, 0x3ed

    return p0

    :pswitch_17
    const/16 p0, 0x3ec

    return p0

    :pswitch_1a
    const/16 p0, 0x3eb

    return p0

    :pswitch_1d
    const/16 p0, 0x3ea

    return p0

    :pswitch_20
    const/16 p0, 0x3e9

    return p0

    :pswitch_23
    const/16 p0, 0x3e8

    return p0

    :pswitch_26
    const/16 p0, 0xa

    return p0

    :pswitch_29
    const/16 p0, 0x9

    return p0

    :pswitch_2c
    const/16 p0, 0x8

    return p0

    :pswitch_2f
    const/4 p0, 0x7

    return p0

    :pswitch_31
    const/4 p0, 0x6

    return p0

    :pswitch_33
    const/4 p0, 0x5

    return p0

    :pswitch_35
    const/4 p0, 0x4

    return p0

    :pswitch_37
    const/4 p0, 0x3

    return p0

    :pswitch_39
    const/4 p0, 0x2

    return p0

    :pswitch_3b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x3e8
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
