.class public Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public generate(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .registers 9

    .line 1213
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_f

    return-object v0

    .line 1217
    :cond_f
    invoke-static/range {p1 .. p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 1219
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
