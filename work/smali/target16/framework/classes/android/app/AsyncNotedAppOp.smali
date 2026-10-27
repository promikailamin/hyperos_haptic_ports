.class public final Landroid/app/AsyncNotedAppOp;
.super Ljava/lang/Object;
.source "AsyncNotedAppOp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mNotingUid:I

.field private final blacklist mOpCode:I

.field private final blacklist mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 270
    new-instance v0, Landroid/app/AsyncNotedAppOp$1;

    invoke-direct {v0}, Landroid/app/AsyncNotedAppOp$1;-><init>()V

    sput-object v0, Landroid/app/AsyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    .line 116
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 119
    iput p2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    .line 120
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    const-string v3, "from"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 123
    iput-object p3, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    .line 125
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    iput-wide p5, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    .line 128
    const-class v0, Landroid/annotation/CurrentTimeMillisLong;

    iget-wide v3, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 131
    invoke-direct {p0}, Landroid/app/AsyncNotedAppOp;->onConstructed()V

    .line 132
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 22

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_18

    move-object v1, v4

    goto :goto_1c

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 250
    iput v2, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    .line 251
    const-class v8, Landroid/annotation/IntRange;

    iget v10, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const-string v11, "from"

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 254
    iput v3, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    .line 255
    const-class v14, Landroid/annotation/IntRange;

    iget v2, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    const-string v17, "from"

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    move/from16 v16, v2

    invoke-static/range {v14 .. v19}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 258
    iput-object v1, v0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 259
    iput-object v5, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    .line 260
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 262
    iput-wide v6, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    .line 263
    const-class v1, Landroid/annotation/CurrentTimeMillisLong;

    iget-wide v2, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 266
    invoke-direct {v0}, Landroid/app/AsyncNotedAppOp;->onConstructed()V

    .line 267
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    return-void
.end method

.method private blacklist onConstructed()V
    .registers 5

    .line 71
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const/16 v1, 0xa9

    const-string/jumbo v2, "opCode"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 72
    return-void
.end method

.method private blacklist opCodeToString()Ljava/lang/String;
    .registers 2

    .line 75
    invoke-virtual {p0}, Landroid/app/AsyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 188
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 189
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 191
    :cond_12
    check-cast p1, Landroid/app/AsyncNotedAppOp;

    .line 193
    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    iget v3, p1, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    iget v3, p1, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 196
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    .line 197
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-wide v2, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    iget-wide v4, p1, Landroid/app/AsyncNotedAppOp;->mTime:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 193
    :goto_3e
    return v0

    .line 189
    :cond_3f
    :goto_3f
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNotingUid()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    return v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .registers 2

    .line 65
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTime()J
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 207
    nop

    .line 208
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 209
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    add-int/2addr v0, v2

    .line 210
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 211
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    mul-int/2addr v0, v1

    iget-wide v1, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncNotedAppOp { opCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-direct {p0}, Landroid/app/AsyncNotedAppOp;->opCodeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notingUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 222
    nop

    .line 223
    iget-object p2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x4

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 224
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget p2, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget p2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object p2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz p2, :cond_1f

    iget-object p2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    :cond_1f
    iget-object p2, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-wide v0, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    return-void
.end method
