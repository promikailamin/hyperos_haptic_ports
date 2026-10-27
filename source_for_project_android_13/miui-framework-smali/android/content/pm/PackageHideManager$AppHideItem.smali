.class Landroid/content/pm/PackageHideManager$AppHideItem;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageHideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppHideItem"
.end annotation


# static fields
.field public static final blacklist PATH_DILIMITER:Ljava/lang/String; = ";"


# instance fields
.field blacklist isHide:Z

.field blacklist packageName:Ljava/lang/String;

.field blacklist pathArray:[Ljava/lang/String;


# direct methods
.method public varargs constructor blacklist <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHide"    # Z
    .param p3, "path"    # [Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    .line 60
    iput-boolean p2, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    .line 61
    iput-object p3, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public blacklist getJoinPath()Ljava/lang/String;
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_6
    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
