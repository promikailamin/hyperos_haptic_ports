.class public final synthetic Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ServiceRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->lambda$allowBgActivityStartsOnServiceStart$0$com-android-server-am-ServiceRecord()V

    return-void
.end method
