.class public Lcom/android/server/pm/InitAppsHelper$ScanParams;
.super Ljava/lang/Object;
.source "InitAppsHelper.java"


# instance fields
.field public final apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

.field public final parseFlags:I

.field public final scanDir:Ljava/io/File;

.field public final scanFlags:I


# direct methods
.method public constructor <init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .registers 5

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    .line 323
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper$ScanParams;->parseFlags:I

    .line 324
    iput p3, p0, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    .line 325
    iput-object p4, p0, Lcom/android/server/pm/InitAppsHelper$ScanParams;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    return-void
.end method

.method public static forApexDirScan(II)Lcom/android/server/pm/InitAppsHelper$ScanParams;
    .registers 4

    .line 329
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/android/server/pm/InitAppsHelper$ScanParams;-><init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    return-object v0
.end method

.method public static forApkInApexScan(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/InitAppsHelper$ScanParams;
    .registers 5

    .line 339
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    or-int/lit16 p1, p1, 0x200

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/pm/InitAppsHelper$ScanParams;-><init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    return-object v0
.end method

.method public static forApkPartitionScan(Ljava/io/File;II)Lcom/android/server/pm/InitAppsHelper$ScanParams;
    .registers 5

    .line 333
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/InitAppsHelper$ScanParams;-><init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    return-object v0
.end method
