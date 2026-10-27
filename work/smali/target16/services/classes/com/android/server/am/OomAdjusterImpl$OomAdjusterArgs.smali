.class public Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"


# instance fields
.field public mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mCachedAdj:I

.field public mFullUpdate:Z

.field public mNow:J

.field public mOomAdjReason:I

.field public mTopApp:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mUids:Lcom/android/server/am/psc/ActiveUidsInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterImpl;)V
    .registers 2

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;-><init>(Lcom/android/server/am/OomAdjusterImpl;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/android/server/am/psc/ProcessRecordInternal;JIILcom/android/server/am/psc/ActiveUidsInternal;Z)V
    .registers 8

    .line 443
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 444
    iput-wide p2, p0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mNow:J

    .line 445
    iput p4, p0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mCachedAdj:I

    .line 446
    iput p5, p0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 447
    iput-object p6, p0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/psc/ActiveUidsInternal;

    .line 448
    iput-boolean p7, p0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mFullUpdate:Z

    return-void
.end method
