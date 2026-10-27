.class Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .registers 2

    .line 1411
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$PerUserPackageMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1415
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1418
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    .line 1419
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v1, :cond_12

    .line 1421
    invoke-virtual {v1, p1}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    .line 1423
    :cond_12
    return-void
.end method
