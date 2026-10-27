.class public final Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;
.super Ljava/lang/Record;
.source "AppOpHistoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "mUid",
        "mPackageName",
        "mOpCode",
        "mDeviceId",
        "mAttributionTag",
        "mOpFlags",
        "mUidState",
        "mAttributionFlags",
        "mAttributionChainId",
        "mAccessTime",
        "mDiscretizedAccessTime",
        "mDuration",
        "mDiscretizedDuration"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        I,
        Ljava/lang/String;,
        Ljava/lang/String;,
        I,
        I,
        I,
        J,
        J,
        J,
        J,
        J
    }
.end annotation


# instance fields
.field public final mAccessTime:J

.field public final mAttributionChainId:J

.field public final mAttributionFlags:I

.field public final mAttributionTag:Ljava/lang/String;

.field public final mDeviceId:Ljava/lang/String;

.field public final mDiscretizedAccessTime:J

.field public final mDiscretizedDuration:J

.field public final mDuration:J

.field public final mOpCode:I

.field public final mOpFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final mUidState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccessTime(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAccessTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionChainId(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionChainId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionTag(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpCode(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpFlags(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUidState:I

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJJ)V
    .registers 19

    .line 855
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    if-eqz p2, :cond_9

    .line 857
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    :cond_9
    if-eqz p5, :cond_f

    .line 860
    invoke-virtual {p5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p5

    :cond_f
    if-eqz p4, :cond_15

    .line 863
    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    .line 855
    :cond_15
    iput p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUid:I

    iput-object p2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpCode:I

    iput-object p4, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDeviceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionTag:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpFlags:I

    iput p7, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUidState:I

    iput p8, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionFlags:I

    iput-wide p9, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionChainId:J

    iput-wide p11, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAccessTime:J

    iput-wide p13, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedAccessTime:J

    move-wide p1, p15

    iput-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDuration:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedDuration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 870
    :cond_4
    instance-of v1, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    check-cast p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    .line 871
    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUid:I

    iget v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUid:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpCode:I

    iget v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpCode:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpFlags:I

    iget v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpFlags:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUidState:I

    iget v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUidState:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionFlags:I

    iget v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionFlags:I

    if-ne v1, v3, :cond_60

    iget-wide v3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionChainId:J

    iget-wide v5, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionChainId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_60

    iget-wide v3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedAccessTime:J

    iget-wide v5, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedAccessTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_60

    iget-wide v3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedDuration:J

    iget-wide v5, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedDuration:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mPackageName:Ljava/lang/String;

    .line 879
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDeviceId:Ljava/lang/String;

    .line 880
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionTag:Ljava/lang/String;

    .line 881
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    return v0

    :cond_60
    return v2
.end method

.method public hashCode()I
    .registers 14

    .line 886
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mPackageName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionTag:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpFlags:I

    .line 887
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUidState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionChainId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedAccessTime:J

    .line 888
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDiscretizedDuration:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 886
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppOpHistoryAccessKey{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", attributionTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", opCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpCode:I

    .line 898
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mOpFlags:I

    .line 899
    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uidState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mUidState:I

    .line 900
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attributionChainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAttributionChainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
