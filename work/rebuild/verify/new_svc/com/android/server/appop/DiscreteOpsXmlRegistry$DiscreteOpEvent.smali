.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public final mAttributionChainId:I

.field public final mAttributionFlags:I

.field public final mNoteDuration:J

.field public final mNoteTime:J

.field public final mOpFlag:I

.field public final mUidState:I


# direct methods
.method public constructor <init>(JJIIII)V
    .registers 9

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1320
    iput-wide p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1321
    iput p5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    .line 1322
    iput p6, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 1323
    iput p7, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 1324
    iput p8, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    return-void
.end method
