.class Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidPackageUsers"
.end annotation


# instance fields
.field private final mInstalledUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mInstalledUsers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mInstalledUsers:Ljava/util/Set;

    .line 1159
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->mPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1160
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
