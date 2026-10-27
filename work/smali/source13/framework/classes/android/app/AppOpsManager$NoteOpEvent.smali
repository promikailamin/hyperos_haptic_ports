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

    .line 3964
    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NoteOpEvent$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NoteOpEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 23
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3882
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3883
    move-wide/from16 v8, p1

    iput-wide v8, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3884
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-string v5, "from"

    const-wide/16 v6, 0x0

    move-wide/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3887
    move-wide/from16 v1, p3

    iput-wide v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3888
    const-class v10, Landroid/annotation/IntRange;

    const/4 v11, 0x0

    const-string v14, "from"

    const-wide/16 v15, -0x1

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3891
    move-object/from16 v3, p5

    iput-object v3, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3894
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$NoteOpEvent;)V
    .registers 8
    .param p1, "original"    # Landroid/app/AppOpsManager$NoteOpEvent;

    .line 3849
    iget-wide v1, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    iget-wide v3, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3850
    iget-object v0, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget-object v5, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v0, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move-object v5, v0

    .line 3849
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 3851
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 15
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3945
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 3946
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 3947
    .local v8, "noteTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 3948
    .local v10, "duration":J
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_1d

    :cond_15
    sget-object v1, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEventProxyInfo;

    :goto_1d
    move-object v12, v1

    .line 3950
    .local v12, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    iput-wide v8, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3951
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const-string v5, "from"

    move-wide v3, v8

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3954
    iput-wide v10, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3955
    const-class v1, Landroid/annotation/IntRange;

    const-wide/16 v6, -0x1

    const-string v5, "from"

    move-wide v3, v10

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3958
    iput-object v12, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3961
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3936
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 3909
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    return-wide v0
.end method

.method public blacklist getNoteTime()J
    .registers 3

    .line 3901
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method public blacklist getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 2

    .line 3917
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public blacklist reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V
    .registers 16
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .line 3833
    .local p6, "proxyPool":Landroid/util/Pools$Pool;, "Landroid/util/Pools$Pool<Landroid/app/AppOpsManager$OpEventProxyInfo;>;"
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3834
    const-wide/16 v4, -0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "duration"

    move-wide v2, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3837
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_1d

    .line 3838
    invoke-interface {p6, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3840
    :cond_1d
    iput-object p5, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3841
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3926
    const/4 v0, 0x0

    .line 3927
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 3928
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3929
    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3930
    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3931
    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_1c

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3932
    :cond_1c
    return-void
.end method
