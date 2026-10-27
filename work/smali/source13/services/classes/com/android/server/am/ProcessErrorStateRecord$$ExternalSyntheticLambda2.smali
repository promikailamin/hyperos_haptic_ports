.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$2$com-android-server-am-ProcessErrorStateRecord()V

    return-void
.end method
