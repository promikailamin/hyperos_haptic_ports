.class Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;
.super Landroid/content/pm/CrossProfileAppsInternal;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 917
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/CrossProfileAppsInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$mgetTargetUserProfilesUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "userId"    # I

    .line 944
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$msetInteractAcrossProfilesAppOpUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    .line 946
    return-void
.end method

.method public verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$fgetmInjector(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    move-result-object v0

    .line 924
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 925
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 924
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 923
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 926
    .local v0, "uid":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 931
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$mhasInteractAcrossProfilesPermission(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
