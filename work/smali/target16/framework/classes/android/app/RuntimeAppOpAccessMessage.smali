.class public final Landroid/app/RuntimeAppOpAccessMessage;
.super Ljava/lang/Object;
.source "RuntimeAppOpAccessMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RuntimeAppOpAccessMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOpCode:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSamplingStrategy:I

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Landroid/app/RuntimeAppOpAccessMessage$1;

    invoke-direct {v0}, Landroid/app/RuntimeAppOpAccessMessage$1;-><init>()V

    sput-object v0, Landroid/app/RuntimeAppOpAccessMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    .line 80
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-string v4, "from"

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 83
    iput p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    .line 84
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0xa9

    const-string v4, "from"

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 88
    iput-object p3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    .line 89
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 91
    iput-object p4, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    .line 93
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    move/from16 v1, p6

    iput v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    .line 96
    const-class v1, Landroid/app/AppOpsManager$SamplingStrategy;

    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-static {v1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 100
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 25

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 190
    and-int/lit8 v1, v1, 0x8

    const/4 v5, 0x0

    if-nez v1, :cond_1c

    move-object v1, v5

    goto :goto_20

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 194
    iput v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    .line 195
    const-class v8, Landroid/annotation/IntRange;

    iget v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-string v11, "from"

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 198
    iput v3, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    .line 199
    const-class v14, Landroid/annotation/IntRange;

    iget v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-string/jumbo v20, "to"

    const-wide/16 v21, 0xa9

    const/4 v15, 0x0

    const-string v17, "from"

    const-wide/16 v18, 0x0

    move/from16 v16, v2

    invoke-static/range {v14 .. v22}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 203
    iput-object v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    .line 204
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 206
    iput-object v1, v0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    .line 207
    iput-object v6, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    .line 208
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-static {v1, v5, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 210
    iput v7, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    .line 211
    const-class v1, Landroid/app/AppOpsManager$SamplingStrategy;

    iget v0, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-static {v1, v5, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 215
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .registers 2

    .line 52
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSamplingStrategy()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    return v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 164
    nop

    .line 165
    iget-object p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz p2, :cond_9

    const/16 p2, 0x8

    int-to-byte p2, p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 166
    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz p2, :cond_25

    iget-object p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    :cond_25
    iget-object p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
