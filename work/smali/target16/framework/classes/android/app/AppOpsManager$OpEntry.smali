.class public final Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEntry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributedOpEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private final greylist-max-o mOp:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5433
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 5355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5356
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5357
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0xa9

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5361
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5362
    const-class p1, Landroid/app/AppOpsManager$Mode;

    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5364
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5365
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5369
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 15

    .line 5408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5414
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5415
    const-class v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 5417
    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5418
    const-class v4, Landroid/annotation/IntRange;

    iget v6, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    const-string/jumbo v10, "to"

    const-wide/16 v11, 0xa9

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5422
    iput v1, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5423
    const-class p1, Landroid/app/AppOpsManager$Mode;

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5425
    iput-object v2, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5426
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5430
    return-void
.end method

.method private blacklist getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 11

    .line 4944
    nop

    .line 4945
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4946
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v2

    .line 4949
    if-eqz v1, :cond_2c

    if-eqz v2, :cond_2d

    .line 4950
    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v3

    .line 4951
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    .line 4952
    :cond_2c
    move-object v1, v2

    .line 4954
    :cond_2d
    goto :goto_c

    .line 4956
    :cond_2e
    return-object v1
.end method

.method private blacklist getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 11

    .line 5059
    nop

    .line 5060
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5061
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v2

    .line 5064
    if-eqz v1, :cond_2c

    if-eqz v2, :cond_2d

    .line 5065
    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v3

    .line 5066
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    .line 5067
    :cond_2c
    move-object v1, v2

    .line 5069
    :cond_2d
    goto :goto_c

    .line 5071
    :cond_2e
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5403
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributedOpEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 5387
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5118
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessBackgroundTime(I)J
    .registers 4

    .line 4931
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessForegroundTime(I)J
    .registers 4

    .line 4913
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(I)J
    .registers 4

    .line 4896
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(III)J
    .registers 4

    .line 4976
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 4978
    if-nez p1, :cond_9

    .line 4979
    const-wide/16 p1, -0x1

    return-wide p1

    .line 4982
    :cond_9
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getLastBackgroundDuration(I)J
    .registers 4

    .line 5167
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastBackgroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 5296
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastDuration(I)J
    .registers 4

    .line 5134
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastDuration(III)J
    .registers 4

    .line 5187
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 5188
    if-nez p1, :cond_9

    .line 5189
    const-wide/16 p1, -0x1

    return-wide p1

    .line 5192
    :cond_9
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getLastForegroundDuration(I)J
    .registers 4

    .line 5150
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastForegroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 5278
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 5261
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 5317
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 5318
    if-nez p1, :cond_8

    .line 5319
    const/4 p1, 0x0

    return-object p1

    .line 5322
    :cond_8
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastRejectBackgroundTime(I)J
    .registers 4

    .line 5046
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectForegroundTime(I)J
    .registers 4

    .line 5028
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(I)J
    .registers 4

    .line 5011
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(III)J
    .registers 4

    .line 5092
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 5093
    if-nez p1, :cond_9

    .line 5094
    const-wide/16 p1, -0x1

    return-wide p1

    .line 5097
    :cond_9
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getMode()I
    .registers 2

    .line 5376
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public greylist-max-r getOp()I
    .registers 2

    .line 4860
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public whitelist getOpStr()Ljava/lang/String;
    .registers 3

    .line 4867
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5226
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 5227
    if-nez v0, :cond_a

    .line 5228
    const/4 v0, 0x0

    return-object v0

    .line 5231
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProxyPackageName(II)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5239
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    .line 5240
    if-nez p1, :cond_8

    .line 5241
    const/4 p1, 0x0

    return-object p1

    .line 5244
    :cond_8
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getProxyUid()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5200
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 5201
    if-nez v0, :cond_a

    .line 5202
    const/4 v0, -0x1

    return v0

    .line 5205
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public whitelist getProxyUid(II)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5213
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    .line 5214
    if-nez p1, :cond_8

    .line 5215
    const/4 p1, -0x1

    return p1

    .line 5218
    :cond_8
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result p1

    return p1
.end method

.method public greylist-max-r getRejectTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4994
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4879
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isRunning()Z
    .registers 3

    .line 5104
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5105
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5106
    const/4 v0, 0x1

    return v0

    .line 5108
    :cond_1e
    goto :goto_a

    .line 5110
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5396
    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5397
    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5398
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 5399
    return-void
.end method
