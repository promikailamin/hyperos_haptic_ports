.class public final Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final callingUid:I

.field public final duration:J

.field public final reasonCode:I

.field public final tag:Ljava/lang/String;

.field public final targetUid:I

.field public final type:I


# direct methods
.method public constructor <init>(IJILjava/lang/String;II)V
    .registers 8

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    .line 1239
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    .line 1240
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    .line 1241
    iput p6, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    .line 1242
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    .line 1243
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1247
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1248
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    .line 1250
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10900000003L

    .line 1252
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000004L

    .line 1253
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 1254
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    .line 1256
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1258
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
