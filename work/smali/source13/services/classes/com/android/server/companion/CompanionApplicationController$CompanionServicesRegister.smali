.class Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;
.super Lcom/android/internal/infra/PerUser;
.source "CompanionApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompanionServicesRegister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/PerUser<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/content/ComponentName;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionApplicationController;


# direct methods
.method private constructor <init>(Lcom/android/server/companion/CompanionApplicationController;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->this$0:Lcom/android/server/companion/CompanionApplicationController;

    invoke-direct {p0}, Lcom/android/internal/infra/PerUser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/CompanionApplicationController;Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;-><init>(Lcom/android/server/companion/CompanionApplicationController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(I)Ljava/lang/Object;
    .registers 2

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->create(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final create(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->this$0:Lcom/android/server/companion/CompanionApplicationController;

    invoke-static {v0}, Lcom/android/server/companion/CompanionApplicationController;->-$$Nest$fgetmContext(Lcom/android/server/companion/CompanionApplicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/companion/PackageUtils;->getCompanionServicesForUser(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized forPackage(ILjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 294
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->forUser(I)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 294
    .end local p0    # "this":Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic forUser(I)Ljava/lang/Object;
    .registers 2

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->forUser(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized forUser(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 289
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 289
    .end local p0    # "this":Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;
    .end local p1    # "userId":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized invalidate(I)V
    .registers 2
    .param p1, "userId"    # I

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->remove(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 299
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;
    .end local p1    # "userId":I
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
