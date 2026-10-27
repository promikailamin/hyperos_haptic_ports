.class public final synthetic Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/PhantomProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/PhantomProcessList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/PhantomProcessList;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/PhantomProcessList;

    check-cast p1, Lcom/android/server/am/PhantomProcessRecord;

    check-cast p2, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->lambda$trimPhantomProcessesIfNecessary$0$com-android-server-am-PhantomProcessList(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I

    move-result p1

    return p1
.end method
