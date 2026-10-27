.class public final Landroid/app/AppOpsManager$NoteOpEvent;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteOpEvent"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDuration:J

.field private blacklist mNoteTime:J

.field private blacklist mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4219
    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NoteOpEvent$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NoteOpEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 13

    .line 4137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4138
    iput-wide p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 4139
    const-class v0, Landroid/annotation/IntRange;

    iget-wide v2, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-string v4, "from"

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4142
    iput-wide p3, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 4143
    const-class v0, Landroid/annotation/IntRange;

    iget-wide v2, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-string v4, "from"

    const-wide/16 v5, -0x1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4146
    iput-object p5, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4149
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$NoteOpEvent;)V
    .registers 8

    .line 4104
    iget-wide v1, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    iget-wide v3, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 4105
    iget-object v0, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget-object p1, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v0, p1}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move-object v5, v0

    .line 4104
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 4106
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 22

    .line 4196
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4200
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 4201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4202
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 4203
    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_21

    :cond_17
    sget-object v1, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v6, p1

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4205
    :goto_21
    iput-wide v2, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 4206
    const-class v6, Landroid/annotation/IntRange;

    iget-wide v8, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-string v10, "from"

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4209
    iput-wide v4, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 4210
    const-class v13, Landroid/annotation/IntRange;

    iget-wide v2, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-string v17, "from"

    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    move-wide v15, v2

    invoke-static/range {v13 .. v19}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4213
    iput-object v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4216
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 4191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 4164
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    return-wide v0
.end method

.method public blacklist getNoteTime()J
    .registers 3

    .line 4156
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method public blacklist getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 2

    .line 4172
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public blacklist reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .line 4088
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 4089
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "duration"

    const-wide/16 v2, -0x1

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 4092
    iget-object p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p1, :cond_1f

    .line 4093
    iget-object p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-interface {p6, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 4095
    :cond_1f
    iput-object p5, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4096
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 4181
    nop

    .line 4182
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 4183
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4184
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4185
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4186
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4187
    :cond_1f
    return-void
.end method
