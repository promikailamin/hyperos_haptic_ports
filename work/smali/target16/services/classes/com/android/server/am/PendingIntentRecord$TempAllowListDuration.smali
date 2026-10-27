.class public final Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# instance fields
.field public duration:J

.field public reason:Ljava/lang/String;

.field public reasonCode:I

.field public type:I


# direct methods
.method public constructor <init>(JIILjava/lang/String;)V
    .registers 6

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-wide p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    .line 281
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 282
    iput p4, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 283
    iput-object p5, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    return-void
.end method
