.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/people/data/PackageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->f$2:Lcom/android/server/people/data/PackageData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->f$2:Lcom/android/server/people/data/PackageData;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$12$com-android-server-people-data-DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method
