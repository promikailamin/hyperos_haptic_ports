.class final Landroid/app/AppOpsManager$CheckPackageQuery;
.super Ljava/lang/Record;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CheckPackageQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "uid",
        "packageName"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final blacklist packageName:Ljava/lang/String;

.field private final blacklist uid:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/AppOpsManager$CheckPackageQuery;

    if-eqz v0, :cond_18

    check-cast p1, Landroid/app/AppOpsManager$CheckPackageQuery;

    iget v0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    iget v1, p1, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpackageName(Landroid/app/AppOpsManager$CheckPackageQuery;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuid(Landroid/app/AppOpsManager$CheckPackageQuery;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    return p0
.end method

.method private constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "packageName"
        }
    .end annotation

    .line 8415
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    iput-object p2, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/app/AppOpsManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$CheckPackageQuery;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 8415
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$CheckPackageQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 8415
    iget v0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    iget-object v1, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$CheckPackageQuery$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist packageName()Ljava/lang/String;
    .registers 2

    .line 8415
    iget-object v0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 8418
    iget v0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->packageName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CheckPackageQuery(uid=%d, packageName=%s)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist uid()I
    .registers 2

    .line 8415
    iget v0, p0, Landroid/app/AppOpsManager$CheckPackageQuery;->uid:I

    return v0
.end method
