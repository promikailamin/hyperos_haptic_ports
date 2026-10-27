.class public Lcom/android/server/pm/ScanPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "ScanPartition.java"


# instance fields
.field public final scanFlag:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 3
    .param p1, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 41
    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 42
    invoke-static {p1}, Lcom/android/server/pm/ScanPartition;->scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;I)V
    .registers 5
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "original"    # Lcom/android/server/pm/ScanPartition;
    .param p3, "additionalScanFlag"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 53
    iget v0, p2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 54
    return-void
.end method

.method private static scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I
    .registers 4
    .param p0, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 57
    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    packed-switch v0, :pswitch_data_34

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine scan flag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_22
    const/high16 v0, 0x200000

    return v0

    .line 67
    :pswitch_25
    const/high16 v0, 0x100000

    return v0

    .line 65
    :pswitch_28
    const/high16 v0, 0x40000

    return v0

    .line 63
    :pswitch_2b
    const/high16 v0, 0x400000

    return v0

    .line 61
    :pswitch_2e
    const/high16 v0, 0x80000

    return v0

    .line 59
    :pswitch_31
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
