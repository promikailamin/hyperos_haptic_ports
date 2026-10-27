.class Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionToOpSynchroniser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    }
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mOpsToAllow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToForeground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method static bridge synthetic -$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;

    .line 846
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 826
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 835
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 844
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 847
    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 848
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 849
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 850
    const-class p1, Landroid/app/AppOpsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 852
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 853
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 855
    .local p1, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 856
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 858
    .local v0, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 859
    .local v1, "permissionInfosSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v1, :cond_b4

    .line 860
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 861
    .local v3, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v4, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v4, :cond_b1

    .line 864
    iget-object v4, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 865
    .local v4, "backgroundNonRuntimePermission":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6d
    if-ge v5, v1, :cond_84

    .line 866
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 867
    .local v6, "bgPermissionCandidate":Landroid/content/pm/PermissionInfo;
    iget-object v7, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 869
    const/4 v4, 0x0

    .line 870
    goto :goto_84

    .line 865
    .end local v6    # "bgPermissionCandidate":Landroid/content/pm/PermissionInfo;
    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 873
    .end local v5    # "j":I
    :cond_84
    :goto_84
    if-eqz v4, :cond_b1

    .line 875
    :try_start_86
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    .line 876
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 877
    .local v5, "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_94} :catch_96

    .line 882
    nop

    .end local v5    # "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    goto :goto_b1

    .line 879
    :catch_96
    move-exception v5

    .line 880
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown background permission: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v3    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v4    # "backgroundNonRuntimePermission":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b1
    :goto_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 886
    .end local v2    # "i":I
    :cond_b4
    return-void
.end method

.method private addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 948
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 949
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-nez v0, :cond_b

    .line 950
    return-void

    .line 952
    :cond_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 953
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 954
    return-void
.end method

.method private addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .registers 11
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 1047
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1048
    return-void

    .line 1051
    :cond_7
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1052
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 1054
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1053
    invoke-static {v1, v2, p2, v3, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v1

    .line 1055
    .local v1, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v2

    .line 1056
    .local v2, "extraOpCode":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    .line 1057
    return-void

    .line 1060
    :cond_1f
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1061
    .local v3, "uid":I
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1062
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 1063
    .local v5, "extraOpToChange":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayAllowExtraAppOp()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1064
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1066
    :cond_36
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayDenyExtraAppOpIfGranted()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1067
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1069
    :cond_42
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    :goto_47
    return-void
.end method

.method private addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .registers 15
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 958
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_7

    .line 959
    return-void

    .line 962
    :cond_7
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 963
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 964
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 965
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 966
    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 965
    invoke-virtual {v3, v0, v1, v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    .line 967
    .local v3, "permissionFlags":I
    and-int/lit8 v4, v3, 0x40

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_27

    move v4, v5

    goto :goto_28

    :cond_27
    move v4, v6

    .line 968
    .local v4, "isReviewRequired":Z
    :goto_28
    if-eqz v4, :cond_2b

    .line 969
    return-void

    .line 974
    :cond_2b
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$smgetSwitchOp(Ljava/lang/String;)I

    move-result v7

    .line 975
    .local v7, "appOpCode":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_33

    .line 977
    return-void

    .line 981
    :cond_33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v8

    .line 982
    .local v8, "shouldGrantAppOp":Z
    if-eqz v8, :cond_59

    .line 983
    iget-object v9, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v9, :cond_57

    .line 984
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    iget-object v10, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 986
    .local v9, "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v9, :cond_50

    .line 987
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v10

    if-eqz v10, :cond_50

    goto :goto_51

    :cond_50
    move v5, v6

    .line 988
    .local v5, "shouldGrantBackgroundAppOp":Z
    :goto_51
    if-eqz v5, :cond_54

    goto :goto_55

    :cond_54
    const/4 v6, 0x4

    :goto_55
    move v5, v6

    .line 989
    .end local v9    # "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    .local v5, "appOpMode":I
    goto :goto_5a

    .line 990
    .end local v5    # "appOpMode":I
    :cond_57
    const/4 v5, 0x0

    .restart local v5    # "appOpMode":I
    goto :goto_5a

    .line 993
    .end local v5    # "appOpMode":I
    :cond_59
    const/4 v5, 0x1

    .line 996
    .restart local v5    # "appOpMode":I
    :goto_5a
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 997
    .local v6, "uid":I
    new-instance v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v9, p0, v6, v1, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 998
    .local v9, "opToChange":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    packed-switch v5, :pswitch_data_7a

    :pswitch_66
    goto :goto_79

    .line 1003
    :pswitch_67
    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    goto :goto_79

    .line 1006
    :pswitch_6d
    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 1000
    :pswitch_73
    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    nop

    .line 1009
    :goto_79
    return-void

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6d
        :pswitch_66
        :pswitch_66
        :pswitch_67
    .end packed-switch
.end method

.method private setUidMode(IIILjava/lang/String;)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 1141
    .local v0, "oldMode":I
    invoke-static {}, Lcom/android/server/appop/AppOpsServiceStub;->getInstance()Lcom/android/server/appop/AppOpsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Lcom/android/server/appop/AppOpsServiceStub;->skipSyncAppOpsWithRuntime(III)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1142
    return-void

    .line 1145
    :cond_15
    if-eq v0, p3, :cond_40

    .line 1146
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 1148
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 1150
    .local v1, "newMode":I
    if-eq v1, p3, :cond_40

    .line 1154
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 1155
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v7

    .line 1154
    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1158
    .end local v1    # "newMode":I
    :cond_40
    return-void
.end method

.method private setUidModeAllowed(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 1112
    return-void
.end method

.method private setUidModeForeground(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1115
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 1116
    return-void
.end method

.method private setUidModeIgnored(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1119
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 1120
    return-void
.end method

.method private setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z
    .registers 8
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 1126
    .local v0, "currentMode":I
    if-eqz v0, :cond_1b

    .line 1127
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 1128
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 1131
    :cond_1a
    return v1

    .line 1133
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z
    .registers 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 1013
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1014
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1015
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 1017
    .local v2, "isGranted":Z
    :goto_11
    if-nez v2, :cond_14

    .line 1018
    return v4

    .line 1021
    :cond_14
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 1022
    invoke-virtual {v6}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 1021
    invoke-virtual {v5, v0, v1, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 1023
    .local v5, "permissionFlags":I
    and-int/lit8 v6, v5, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_28

    move v6, v3

    goto :goto_29

    :cond_28
    move v6, v4

    .line 1025
    .local v6, "isRevokedCompat":Z
    :goto_29
    if-eqz v6, :cond_2c

    .line 1026
    return v4

    .line 1029
    :cond_2c
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1030
    and-int/lit16 v7, v5, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_3a

    move v7, v3

    goto :goto_3b

    :cond_3a
    move v7, v4

    .line 1033
    .local v7, "shouldApplyRestriction":Z
    :goto_3b
    if-nez v7, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    return v3

    .line 1034
    .end local v7    # "shouldApplyRestriction":Z
    :cond_40
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1035
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 1037
    invoke-virtual {v7}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 1036
    invoke-static {v3, v4, p2, v7, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v3

    .line 1039
    .local v3, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v3}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v4

    return v4

    .line 1041
    .end local v3    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    :cond_59
    return v3
.end method

.method private syncPackages()V
    .registers 13

    .line 897
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 899
    .local v0, "alreadySetAppOps":Landroid/util/LongSparseLongArray;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 900
    .local v1, "allowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const-wide/16 v3, 0x1

    if-ge v2, v1, :cond_2f

    .line 901
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 903
    .local v5, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 904
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 900
    .end local v5    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 907
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 908
    .local v2, "foregroundCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    if-ge v5, v2, :cond_66

    .line 909
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 910
    .local v6, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_4f

    .line 911
    goto :goto_63

    .line 914
    :cond_4f
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 915
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 908
    .end local v6    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 918
    .end local v5    # "i":I
    :cond_66
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 919
    .local v5, "ignoreCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6d
    if-ge v6, v5, :cond_9d

    .line 920
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 921
    .local v7, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_86

    .line 922
    goto :goto_9a

    .line 925
    :cond_86
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 926
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 919
    .end local v7    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    .line 929
    .end local v6    # "i":I
    :cond_9d
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 930
    .local v6, "ignoreIfNotAllowedCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a4
    if-ge v7, v6, :cond_d7

    .line 931
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 932
    .local v8, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_bd

    .line 933
    goto :goto_d4

    .line 936
    :cond_bd
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z

    move-result v9

    .line 937
    .local v9, "wasSet":Z
    if-eqz v9, :cond_d4

    .line 938
    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 930
    .end local v8    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v9    # "wasSet":Z
    :cond_d4
    :goto_d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    .line 941
    .end local v7    # "i":I
    :cond_d7
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1082
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 1083
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1087
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1088
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_3e

    .line 1091
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 1093
    if-eqz v1, :cond_3d

    if-eqz v2, :cond_3d

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3d

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_22

    goto :goto_3d

    .line 1098
    :cond_22
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1099
    .local v3, "uid":I
    if-eqz v3, :cond_3c

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2d

    goto :goto_3c

    .line 1105
    :cond_2d
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_31
    if-ge v6, v5, :cond_3b

    aget-object v7, v4, v6

    .line 1106
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V

    .line 1105
    .end local v7    # "permission":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 1108
    :cond_3b
    return-void

    .line 1102
    :cond_3c
    :goto_3c
    return-void

    .line 1095
    .end local v3    # "uid":I
    :cond_3d
    :goto_3d
    return-void

    .line 1089
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catch_3e
    move-exception v1

    .line 1090
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
