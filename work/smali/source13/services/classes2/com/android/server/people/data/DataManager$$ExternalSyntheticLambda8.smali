.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:J

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/people/data/DataManager;->lambda$pruneExpiredConversationStatuses$8$com-android-server-people-data-DataManager(JLcom/android/server/people/data/PackageData;)V

    return-void
.end method
