.class public final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final hasActivities:Z

.field public final id:I

.field public final isProc:Z

.field public final label:Ljava/lang/String;

.field public final mPrivateDirty:J

.field public final mRss:J

.field public final pss:J

.field public final shortLabel:Ljava/lang/String;

.field public subitems:Ljava/util/ArrayList;

.field public final swapPss:J

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V
    .registers 13

    .line 12005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12006
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 12007
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 12008
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 12009
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 12010
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 12011
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 12012
    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mPrivateDirty:J

    .line 12013
    iput p11, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 12014
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->userId:I

    .line 12015
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V
    .registers 15

    .line 11991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11992
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 11993
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 11994
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 11995
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 11996
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 11997
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 11998
    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mPrivateDirty:J

    .line 11999
    iput p11, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 12000
    iput p12, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->userId:I

    .line 12001
    iput-boolean p13, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method
