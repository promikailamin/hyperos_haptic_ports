.class Landroid/content/pm/PackageManager$3;
.super Landroid/app/PropertyInvalidatedCache;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/content/pm/PackageManager$PackageInfoQuery;",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 4

    .line 11861
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/content/pm/PackageManager$PackageInfoQuery;)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 11865
    iget-object v0, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->packageName:Ljava/lang/String;

    iget-wide v1, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->flags:J

    iget p1, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->userId:I

    invoke-static {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->-$$Nest$smgetPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11861
    check-cast p1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$3;->recompute(Landroid/content/pm/PackageManager$PackageInfoQuery;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
