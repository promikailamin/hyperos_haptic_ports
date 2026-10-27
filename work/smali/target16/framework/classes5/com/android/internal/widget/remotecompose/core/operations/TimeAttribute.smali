.class public Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TimeAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TimeAttribute"

.field private static final blacklist MAX_ARG_LEN:S = 0x20s

.field private static final blacklist OP_CODE:I = 0xac

.field public static final blacklist TIME_DAY_OF_MONTH:S = 0x9s

.field public static final blacklist TIME_DAY_OF_WEEK:S = 0xbs

.field public static final blacklist TIME_DAY_OF_YEAR:S = 0xfs

.field public static final blacklist TIME_FROM_ARG_HR:S = 0x5s

.field public static final blacklist TIME_FROM_ARG_MIN:S = 0x4s

.field public static final blacklist TIME_FROM_ARG_SEC:S = 0x3s

.field public static final blacklist TIME_FROM_LOAD_SEC:S = 0xes

.field public static final blacklist TIME_FROM_NOW_HR:S = 0x2s

.field public static final blacklist TIME_FROM_NOW_MIN:S = 0x1s

.field public static final blacklist TIME_FROM_NOW_SEC:S = 0x0s

.field public static final blacklist TIME_IN_HR:S = 0x8s

.field public static final blacklist TIME_IN_MIN:S = 0x7s

.field public static final blacklist TIME_IN_SEC:S = 0x6s

.field public static final blacklist TIME_MONTH_VALUE:S = 0xas

.field public static final blacklist TIME_YEAR:S = 0xcs


# instance fields
.field private final blacklist mArgs:[I

.field public blacklist mId:I

.field public blacklist mTimeId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS[I)V
    .registers 5

    .line 104
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    .line 106
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    .line 107
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    .line 108
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 109
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .registers 5

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 161
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V
    .registers 6

    .line 174
    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 176
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 177
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 178
    const/4 p1, 0x0

    if-nez p4, :cond_15

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    goto :goto_24

    .line 181
    :cond_15
    array-length p2, p4

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 182
    array-length p2, p4

    :goto_1a
    if-ge p1, p2, :cond_24

    aget p3, p4, p1

    .line 183
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 182
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 186
    :cond_24
    :goto_24
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 218
    const/16 v0, 0xac

    const-string v1, "TimeAttribute"

    const-string v2, "Time Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 219
    const-string v0, "Calculate Information about time"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 220
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id to output"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 221
    const-string v1, "longId"

    const-string v2, "id of time to calculate on"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 222
    const/16 v1, 0x9

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "the type of calculation"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 223
    const-string v2, "argsLength"

    const-string v3, "The number of additional args"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 224
    const-string v1, "args"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 225
    return-void
.end method

.method private blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 334
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 335
    packed-switch v0, :pswitch_data_34

    .line 365
    :pswitch_7
    const-string v0, "INVALID_TIME_TYPE"

    return-object v0

    .line 363
    :pswitch_a
    const-string v0, "TIME_FROM_LOAD_SEC"

    return-object v0

    .line 361
    :pswitch_d
    const-string v0, "TIME_YEAR"

    return-object v0

    .line 359
    :pswitch_10
    const-string v0, "TIME_DAY_OF_WEEK"

    return-object v0

    .line 357
    :pswitch_13
    const-string v0, "TIME_MONTH_VALUE"

    return-object v0

    .line 355
    :pswitch_16
    const-string v0, "TIME_DAY_OF_MONTH"

    return-object v0

    .line 353
    :pswitch_19
    const-string v0, "TIME_IN_HR"

    return-object v0

    .line 351
    :pswitch_1c
    const-string v0, "TIME_IN_MIN"

    return-object v0

    .line 349
    :pswitch_1f
    const-string v0, "TIME_IN_SEC"

    return-object v0

    .line 347
    :pswitch_22
    const-string v0, "TIME_FROM_ARG_HR"

    return-object v0

    .line 345
    :pswitch_25
    const-string v0, "TIME_FROM_ARG_MIN"

    return-object v0

    .line 343
    :pswitch_28
    const-string v0, "TIME_FROM_ARG_SEC"

    return-object v0

    .line 341
    :pswitch_2b
    const-string v0, "TIME_FROM_NOW_HR"

    return-object v0

    .line 339
    :pswitch_2e
    const-string v0, "TIME_FROM_NOW_MIN"

    return-object v0

    .line 337
    :pswitch_31
    const-string v0, "TIME_FROM_NOW_SEC"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 148
    const/16 v0, 0xac

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 139
    const-string v0, "TimeAttribute"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    .line 199
    const/16 v4, 0x20

    if-gt v3, v4, :cond_31

    .line 202
    nop

    .line 203
    if-eqz v3, :cond_27

    .line 204
    new-array v4, v3, [I

    .line 205
    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v3, :cond_28

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 203
    :cond_27
    const/4 v4, 0x0

    .line 209
    :cond_28
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;-><init>(IIS[I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void

    .line 200
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Too many args"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 13

    .line 235
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 237
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocLoadTime()J

    move-result-wide v2

    .line 239
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 240
    nop

    .line 241
    if-nez v4, :cond_20

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getClock()Ljava/time/Clock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    goto :goto_24

    .line 244
    :cond_20
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v4

    .line 246
    :goto_24
    nop

    .line 247
    nop

    .line 249
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_100

    :pswitch_2c
    goto :goto_5c

    .line 269
    :pswitch_2d
    nop

    .line 271
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 272
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v8

    goto :goto_5c

    .line 258
    :pswitch_3f
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const/4 v6, 0x0

    aget p1, p1, v6

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 260
    goto :goto_5c

    .line 253
    :pswitch_51
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getClock()Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 254
    nop

    .line 277
    :goto_5c
    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    const p1, 0x3a83126f    # 0.001f

    packed-switch v0, :pswitch_data_124

    :pswitch_67
    goto/16 :goto_ff

    .line 305
    :pswitch_69
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 306
    goto/16 :goto_ff

    .line 317
    :pswitch_75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    sub-long/2addr v4, v2

    long-to-float v2, v4

    mul-float/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 318
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    goto/16 :goto_ff

    .line 314
    :pswitch_82
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 315
    goto/16 :goto_ff

    .line 311
    :pswitch_8e
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 312
    goto :goto_ff

    .line 308
    :pswitch_9d
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 309
    goto :goto_ff

    .line 302
    :pswitch_aa
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 303
    goto :goto_ff

    .line 299
    :pswitch_b5
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 300
    goto :goto_ff

    .line 296
    :pswitch_c0
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 297
    goto :goto_ff

    .line 293
    :pswitch_cb
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 294
    goto :goto_ff

    .line 290
    :pswitch_d6
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v2, v6

    mul-double/2addr v2, v9

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 291
    goto :goto_ff

    .line 285
    :pswitch_e5
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v2, v6

    mul-double/2addr v2, v9

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 286
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 287
    goto :goto_ff

    .line 280
    :pswitch_f4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-float v2, v6

    mul-float/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 281
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 282
    nop

    .line 321
    :goto_ff
    return-void

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_e5
        :pswitch_d6
        :pswitch_f4
        :pswitch_e5
        :pswitch_d6
        :pswitch_cb
        :pswitch_c0
        :pswitch_b5
        :pswitch_aa
        :pswitch_9d
        :pswitch_8e
        :pswitch_82
        :pswitch_67
        :pswitch_75
        :pswitch_69
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 325
    nop

    .line 326
    const-string v0, "TimeAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "timeId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 329
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->getTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 330
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "args"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 331
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const-string v1, "] = "

    const-string v2, "TimeAttribute["

    const-string v3, " "

    if-nez v0, :cond_32

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 113
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 114
    return-void
.end method
